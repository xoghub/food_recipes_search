import 'dart:core';
import 'unit.dart';

class IngredientsResult {
  int? id;
  String? name;
  String? image;
  Unit? amount;
  Unit? unitLong;
  Unit? unitShort;

  IngredientsResult(
      {this.id,
      this.name,
      this.amount,
      this.image,
      this.unitLong,
      this.unitShort});

  factory IngredientsResult.fromJson(json) => IngredientsResult(
        id: json['id'] as int?,
        name: json['name'] as String?,
        image: json['image'] as String?,
        amount: json['amount'] == null ? null : Unit.fromJson(json['amount']),
        unitLong:
            json['unitLong'] == null ? null : Unit.fromJson(json['unitLong']),
        unitShort:
            json['unitShort'] == null ? null : Unit.fromJson(json['unitShort']),
      );
  toJson([e]) => {
        'id': id,
        'name': name,
        'image': image,
      };
}
