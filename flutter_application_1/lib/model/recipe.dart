import 'analzedInstruction.dart';
import 'dart:core';

class Recipe {
  int? id;
  String? title;
  int? readyInMinutes;
  String? sourceUrl;
  String? image;
  String? summary;
  String? servings;
  String? instruction;
  List<AnalyzedInstruction>? analzedInstruction;
  String? spoonacularSourceUrl;

  Recipe(
      {this.id,
      this.image,
      this.readyInMinutes,
      this.title,
      this.summary,
      this.spoonacularSourceUrl,
      this.instruction,
      this.sourceUrl,
      this.analzedInstruction,
      this.servings});

  factory Recipe.fromJson(json) => Recipe(
        id: json['id'] as int,
        image: json['image'] as String,
        readyInMinutes: json['readyInMinutes'] as int,
        title: json['title'] as String,
        summary: json['summary'] as String,
        spoonacularSourceUrl: json['spoonacularSourceUrl'] as String,
        instruction: json['instruction'] as String,
        sourceUrl: json['sourceUrl'] as String,
        analzedInstruction: (json['analyzedInstructions'] as List<dynamic>?)
            ?.map((e) => AnalyzedInstruction.fromJson(e))
            .toList(),
        servings: json['servings'] as String,
      );

  toJson() => {
        'id': id,
        'title': title,
        'readyInMInutes': readyInMinutes,
        'servings': servings,
        'sourceUrl': sourceUrl,
        'image': image,
        'summary': summary,
        'instructions': instruction,
        'analyzedInstructions':
            analzedInstruction?.map((e) => e.toJson()).toList(),
        'spoonacularSourceUrl': spoonacularSourceUrl,
      };
}
