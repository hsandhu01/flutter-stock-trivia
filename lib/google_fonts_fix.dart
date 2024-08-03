import 'package:flutter/services.dart' as flutter_services;

class GoogleFontsFix {
  static Future<void> loadFontManifest() async {
    final manifestContent = await flutter_services.rootBundle.loadString('assets/FontManifest.json');
    // Process the manifest content if needed
    if (manifestContent.isNotEmpty) {
      // Handle the manifest content
      print('Font manifest loaded successfully.');
    } else {
      print('Font manifest is empty.');
    }
  }
}