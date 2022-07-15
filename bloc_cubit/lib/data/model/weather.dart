import 'package:equatable/equatable.dart';

class Weather extends Equatable {

  final String cityName;
  final double temperatureCelsius;

  const Weather({
    required this.cityName,
    required this.temperatureCelsius
  });

  @override
  // TODO: implement props
  List<Object?> get props => [cityName, temperatureCelsius];
}