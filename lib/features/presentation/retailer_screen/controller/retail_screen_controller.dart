import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import '../../../../core/constants/textfield_map.dart';
import '../../../../data/model/retail_model/retail_model.dart';
import '../../../../shared/sqflite/sql_helper.dart';

class RetailerFormController {

  final formKey = GlobalKey<FormState>();

  final Map<String, TextEditingController> controllers = {
    for (var field in retailerFields)
      field['key']: TextEditingController()
  };

  void saveForm() async {
    if (formKey.currentState!.validate()) {
      final formData = {
        for (var field in retailerFields)
          field['key']: controllers[field['key']]!.text.trim()
      };




    }
  }

  ///get current location
  Future<Position> _getCurrentLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw Exception('Location services are disabled.');
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied || permission == LocationPermission.deniedForever) {
      permission = await Geolocator.requestPermission();
      if (permission != LocationPermission.whileInUse && permission != LocationPermission.always) {
        throw Exception('Location permissions are denied.');
      }
    }

    return await Geolocator.getCurrentPosition(locationSettings: LocationSettings(
      accuracy: LocationAccuracy.high
    ) );
  }

  ///save retailer to sqldb
  Future<void> saveRetailer(Retailer retail) async {
    final db = await SqlHelper.database;

    final position = await _getCurrentLocation();

    final retailer = Retailer(
      name: retail.name,
      address: retail.address,
      lat: position.latitude,
      long: position.longitude,
      contact: retail.contact,
      email: retail.email,
      gst: retail.gst,
      id: retail.id,
      ownerName: retail.ownerName,
      type: retail.type
    );

    await db.insert('retailers', retailer.toMap());
  }
}

final retailerFormProvider = Provider((ref) => RetailerFormController());
