class Unit {
  double? amount;
  String? unitShort;
  String? unitLong;

  Unit({this.amount, this.unitShort, this.unitLong});

  factory Unit.fromJson(json) => Unit(
        amount: (json['amount'] as num?)?.toDouble(),
        unitShort: json['unitShort'] as String?,
        unitLong: json['unitLong'] as String?,
      );

  toJson() => {
        'amount': amount,
        'unitShort': unitShort,
        'unitLong': unitLong,
      };
}
