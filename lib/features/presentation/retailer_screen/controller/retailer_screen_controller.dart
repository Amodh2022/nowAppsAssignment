import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:myapp/data/model/retail_model/retail_model.dart';
import '../../../../core/constants/textfield_map.dart';
import '../../../../shared/sqflite/sql_helper.dart';

class RetailerFormController {
  final formKey = GlobalKey<FormState>();

  final Map<String, TextEditingController> controllers = {
    for (var field in retailerFields) field['key']: TextEditingController()
  };

  /// Save the form and insert retailer into database
  Future<void> saveForm(BuildContext context) async {
    try {
      print("object");
      if (formKey.currentState!.validate()) {
        final formData = {
          for (var field in retailerFields)
            field['key']: controllers[field['key']]!.text.trim()
        };

        final position = await _getCurrentLocation();

        final retailer = Retailer(
          name: formData['name']!,
          address: formData['address']!,
          contact: formData['contact']!,
          email: formData['email'],
          gst: formData['gst'],
          ownerName: formData['owner_name'],
          type: formData['type'],
          lat: position.latitude,
          long: position.longitude,
        );

        await saveRetailer(retailer);

        // Success message
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Retailer saved successfully")),
        );
        formKey.currentState!.reset();
        controllers.forEach((key, controller) => controller.clear());
      }
    } catch (e) {
      // Error message
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error: ${e.toString()}")),
      );
    }
  }

  /// Get current location safely
  Future<Position> _getCurrentLocation() async {
    try {
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        throw Exception('Location services are disabled.');
      }

      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied ||
          permission == LocationPermission.deniedForever) {
        permission = await Geolocator.requestPermission();
        if (permission != LocationPermission.whileInUse &&
            permission != LocationPermission.always) {
          throw Exception('Location permissions are denied.');
        }
      }

      return await Geolocator.getCurrentPosition(
        locationSettings: LocationSettings(accuracy: LocationAccuracy.high),
      );
    } catch (e) {
      throw Exception("Failed to get location: $e");
    }
  }

  /// Insert retailer into the database
  Future<void> saveRetailer(Retailer retailer) async {
    try {
      final db = await SqlHelper.database;
      await db.insert('retailers', retailer.toMap());
    } catch (e) {
      throw Exception("Failed to save retailer: $e");
    }
  }
}

final retailerFormProvider = Provider((ref) => RetailerFormController());
