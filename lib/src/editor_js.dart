import 'package:flutter/services.dart' show rootBundle;

class EditorJs {
  EditorJs._();

  static Future<String> balloon() async {
    return await rootBundle
        .loadString('packages/ckeditor5/assets/ballon/ckeditor.js');
  }

  static Future<String> block() async {
    return await rootBundle
        .loadString('packages/ckeditor5/assets/block/ckeditor.js');
  }

  static Future<String> classic() async {
    return await rootBundle
        .loadString('packages/ckeditor5/assets/classic/ckeditor.js');
  }

  static Future<String> document() async {
    return await rootBundle
        .loadString('packages/ckeditor5/assets/document/ckeditor.js');
  }

  static Future<String> inline() async {
    return await rootBundle
        .loadString('packages/ckeditor5/assets/inline/ckeditor.js');
  }
}
