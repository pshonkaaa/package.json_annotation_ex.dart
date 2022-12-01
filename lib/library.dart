library truecollaboration.json_annotation_ex;

class JsonSerializableEx {
  /// Ignore fields havent annotation `@JsonFieldEx`
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
  final bool ignore;
  const JsonFieldEx({
    this.key,
    this.ignore = false,
  });
}

/// Values for the automatic field renaming behavior for [JsonSerializableEx].
enum FieldRename {
  /// Use the field name without changes.
  none,

  /// Encodes a field named `kebabCase` with a JSON key `kebab-case`.
  kebab,
  
  camel,

  constant,

  /// Encodes a field named `snakeCase` with a JSON key `snake_case`.
  snake,

  /// Encodes a field named `pascalCase` with a JSON key `PascalCase`.
  pascal
}