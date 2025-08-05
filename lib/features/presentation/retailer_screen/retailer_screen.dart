import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:myapp/features/presentation/retailer_screen/controller/retailer_screen_controller.dart';
import '../../../../core/constants/textfield_map.dart';
import '../../../routing/app_routes.dart';
import '../../../shared/provider/checkin_provider.dart';
import '../retailer_home_screen/controller/retail_controller.dart';

class RetailerFormScreen extends ConsumerStatefulWidget {
  const RetailerFormScreen({super.key});

  @override
  ConsumerState<RetailerFormScreen> createState() => _RetailerFormScreenState();
}

class _RetailerFormScreenState extends ConsumerState<RetailerFormScreen> {
  @override
  void initState() {
    super.initState();
    ref.read(checkInStepProvider.notifier).updateStep(2);
  }

  @override
  void dispose() {
    ref.read(retailerFormProvider).controllers
        .forEach((_, controller) => controller.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(retailerFormProvider);
    final isLoading = ref.watch(controller.isRetailerLoadingProvider);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            ref.read(checkInStepProvider.notifier).updateStep(1);
            context.go(AppRoutes.initialPage);
            ref.refresh(combinedRetailDataProvider);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text('Retailer Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: controller.formKey,
          child: ListView(
            children: [
              ...retailerFields.map((field) {
                final key = field['key'];
                final type = field['ty pe'];

                List<TextInputFormatter> inputFormatters = [];
                TextInputType keyboardType = TextInputType.text;

                if (type == 'phone') {
                  keyboardType = TextInputType.number;
                  inputFormatters = [
                    FilteringTextInputFormatter.digitsOnly,
                    LengthLimitingTextInputFormatter(10),
                  ];
                } else if (type == 'number') {
                  keyboardType = TextInputType.number;
                  inputFormatters = [
                    FilteringTextInputFormatter.digitsOnly,
                  ];
                } else if (type == 'email') {
                  keyboardType = TextInputType.emailAddress;
                }

                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: IgnorePointer(
                    ignoring: isLoading?true:false,
                    child: TextFormField(
                        controller: controller.controllers[key],
                        keyboardType: keyboardType,
                        inputFormatters: inputFormatters,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        readOnly: type == 'time',
                        decoration: InputDecoration(
                          labelText: field['label'],
                          hintText: 'Enter ${field['label']}',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          filled: true,
                          fillColor: Colors.grey.shade100,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 14),
                        ),
                        onTap: type == 'time'
                            ? () async {
                          TimeOfDay? time = await showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now(),
                          );
                          if (time != null && context.mounted) {
                            controller.controllers[key]!.text =
                                time.format(context);
                          }
                        }
                            : null,
                        validator: (value) {

                          if ((value == null || value.isEmpty)) {
                            return '${field['label']} is required';
                          }

                          switch (key) {
                            case 'email':
                              if (value.isNotEmpty &&
                                  !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$').hasMatch(value)) {
                                return 'Enter a valid email address';
                              }
                              break;

                            case 'contact':
                              if (!RegExp(r'^\d{10}$').hasMatch(value)) {
                                return 'Enter a valid 10-digit phone number';
                              }
                              break;

                            case 'gst':
                              if (value.isNotEmpty &&
                                  !RegExp(r'^[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[1-9A-Z]{1}Z[0-9A-Z]{1}$')
                                      .hasMatch(value)) {
                                return 'Enter a valid GST number';
                              }
                              break;

                            case 'pan':
                              if (value.isNotEmpty &&
                                  !RegExp(r'^[A-Z]{5}[0-9]{4}[A-Z]{1}$').hasMatch(value)) {
                                return 'Enter a valid PAN number';
                              }
                              break;

                            case 'code':
                            case 'name':
                            case 'owner_name':
                            case 'type':
                              if (value.isNotEmpty &&
                                  !RegExp(r'^[A-Za-z0-9\s\-_]+$').hasMatch(value)) {
                                return 'Only letters, numbers, spaces, hyphens, and underscores are allowed';
                              }
                              break;

                            case 'address':
                              if (value.isNotEmpty &&
                                  value.length < 5) {
                                return 'Address must be at least 5 characters long';
                              }
                              break;

                          }

                          return null;
                        }

                    ),
                  ),
                );
              }),
              const SizedBox(height: 30),
              isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : GestureDetector(
                onTap: (){
                  controller.saveForm(context, ref);
                },
                    child: Container(
                                    padding: EdgeInsets.all(12),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,

                                    ),
                                    child: Text("Submit",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 16),),
                                  ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
