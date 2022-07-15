import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_cubit/data/model/weather.dart';
import 'package:bloc_cubit/data/weather_repository.dart';
import 'package:meta/meta.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {

  final WeatherRepository _weatherRepository;

  WeatherBloc(this._weatherRepository) : super(const WeatherInitial()) {
    on<GetWeather>((event, emit) async {
      // TODO: implement event handler
      emit(const WeatherLoading());
      final weather = await _weatherRepository.fetchWeather(event.cityName);
      emit(WeatherLoaded(weather));
    });
  }
}
