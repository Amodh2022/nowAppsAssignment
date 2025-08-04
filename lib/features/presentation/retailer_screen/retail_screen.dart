import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/constants/textfield_map.dart';
import 'controller/retail_screen_controller.dart';

class RetailerFormScreen extends ConsumerStatefulWidget {
  const RetailerFormScreen({super.key});

  @override
  ConsumerState<RetailerFormScreen> createState() => _RetailerFormScreenState();
}

class _RetailerFormScreenState extends ConsumerState<RetailerFormScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    ref
        .read(retailerFormProvider)
        .controllers
        .forEach((_, controller) => controller.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(retailerFormProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Retailer Form')),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: controller.formKey,
          child: ListView(
            children: [
              ...retailerFields.map((field) {
                final key = field['key'];
                final type = field['type'];
                final isRequired = field['required'] ?? false;

                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: TextFormField(
                    controller: controller.controllers[key],
                    keyboardType:
                        type == 'number'
                            ? TextInputType.number
                            : (type == 'phone'
                                ? TextInputType.phone
                                : TextInputType.text),
                    readOnly: type == 'time',
                    decoration: InputDecoration(
                      labelText: field['label'],
                      border: OutlineInputBorder(),
                    ),
                    onTap:
                        type == 'time'
                            ? () async {
                              TimeOfDay? time = await showTimePicker(
                                context: context,
                                initialTime: TimeOfDay.now(),
                              );
                              if (time != null) {
                                if (context.mounted) {
                                  controller.controllers[key]!.text = time
                                      .format(context);
                                }
                              }
                            }
                            : null,
                    validator: (value) {
                      if (isRequired && (value == null || value.isEmpty)) {
                        return '${field['label']} is required';
                      }
                      if (type == 'email' &&
                          value != null &&
                          value.isNotEmpty &&
                          !RegExp(
                            r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$',
                          ).hasMatch(value)) {
                        return 'Enter valid email';
                      }
                      if (type == 'phone' &&
                          value != null &&
                          value.isNotEmpty &&
                          !RegExp(r'^\d{10}$').hasMatch(value)) {
                        return 'Enter valid 10-digit phone number';
                      }
                      return null;
                    },
                  ),
                );
              }),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: controller.saveForm,
                child: const Text('Save Retailer'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
