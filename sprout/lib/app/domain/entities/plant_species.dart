import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable(explicitToJson: true)
class PlantSpecies extends Equatable {
  final int id;
  final String commonName;
  final String scientificName;
  final List<String> otherName;
  final String? cycle;
  final String? watering;
  final List<String> sunlight;

  const PlantSpecies({
    required this.id,
    required this.commonName,
    required this.scientificName,
    required this.otherName,
    this.cycle,
    this.watering,
    required this.sunlight,
  });

  @override
  List<Object?> get props => [
        id,
        commonName,
        scientificName,
        otherName,
        cycle,
        watering,
        sunlight,
      ];
}
