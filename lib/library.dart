library truecollaboration.json_annotation_ex;

import 'package:json_annotation/json_annotation.dart';

class JsonSerializableEx {
  /// Means, ignore fields havent annotation `JsonFieldEx`
  final bool ignoreFields;

  /// True, if model is JsonObjectEx. False, if JsonArrayEx
  final bool isObject;

  // /// JsonEx field
  // final bool autoParse;

  // final bool ignoreAbstract;
  
  /// Use with `isObject = false` to keep JsonArrayEx order
  final bool keepOrder;

  final FieldRename fieldRename;
  const JsonSerializableEx({
    this.ignoreFields = false,
    this.isObject = true,
    // this.autoParse = false,
    // this.ignoreAbstract = false,
    this.keepOrder = false,
    this.fieldRename = FieldRename.none,
  });
}

class JsonFieldEx {
  /// Must be int, String or null(key would be named as the name of the variable)
  final dynamic key;
  const JsonFieldEx({
    this.key,
  });
}