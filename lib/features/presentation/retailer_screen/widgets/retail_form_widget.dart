
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../data/model/retail_model/retail_model.dart';
import '../controller/retail_screen_controller.dart';

class RetailerFormWidget extends ConsumerStatefulWidget {
  const RetailerFormWidget({super.key});

  @override
  ConsumerState<RetailerFormWidget> createState() => _RetailerFormWidgetState();
}

class _RetailerFormWidgetState extends ConsumerState<RetailerFormWidget> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _addressController = TextEditingController();
  final _contactController = TextEditingController();
  final _emailController = TextEditingController();
  final _gstController = TextEditingController();
  final _ownerController = TextEditingController();
  final _typeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final controller = ref.watch(retailerFormProvider);

    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: 'Retailer Name'),
              validator: (val) => val == null || val.isEmpty ? 'Required' : null,
            ),
            TextFormField(
              controller: _ownerController,
              decoration: const InputDecoration(labelText: 'Owner Name'),
            ),
            TextFormField(
              controller: _addressController,
              decoration: const InputDecoration(labelText: 'Address'),
              validator: (val) => val == null || val.isEmpty ? 'Required' : null,
            ),
            TextFormField(
              controller: _contactController,
              decoration: const InputDecoration(labelText: 'Contact Number'),
              validator: (val) => val == null || val.isEmpty ? 'Required' : null,
              keyboardType: TextInputType.phone,
            ),
            TextFormField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email'),
              keyboardType: TextInputType.emailAddress,
            ),
            TextFormField(
              controller: _gstController,
              decoration: const InputDecoration(labelText: 'GST Number'),
            ),
            TextFormField(
              controller: _typeController,
              decoration: const InputDecoration(labelText: 'Retailer Type (Kirana, Pharmacy, etc)'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                if (_formKey.currentState!.validate()) {
                  final retailer = Retailer(
                    name: _nameController.text,
                    address: _addressController.text,
                    contact: _contactController.text,
                    email: _emailController.text,
                    gst: _gstController.text,
                    ownerName: _ownerController.text,
                    type: _typeController.text,
                    lat: 12.9716,
                    long: 77.5946,
                  );
                  await controller.saveRetailer(retailer);
                  if (mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Retailer saved!')),
                    );
                    _nameController.clear();
                    _addressController.clear();
                    _contactController.clear();
                    _emailController.clear();
                    _gstController.clear();
                    _ownerController.clear();
                    _typeController.clear();
                  }
                }
              },
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
