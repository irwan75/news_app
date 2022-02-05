import 'dart:convert';

class SourceResponse {
  String? id;
  String? name;
  SourceResponse({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory SourceResponse.fromMap(Map<String, dynamic> map) {
    return SourceResponse(
      id: map['id'],
      name: map['name'],
    );
  }

  String toJson() => json.encode(toMap());

  factory SourceResponse.fromJson(String source) =>
      SourceResponse.fromMap(json.decode(source));
}
