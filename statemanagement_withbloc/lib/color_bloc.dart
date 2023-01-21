import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

enum ColorEvent { to_amber, to_lighblue }

class ColorBloc extends Bloc<ColorEvent, Color> {
  Color _color = Colors.amber;

  ColorBloc(Color initialState) : super(initialState);

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    _color = (event == ColorEvent.to_amber) ? Colors.amber : Colors.lightBlue;
    yield _color;
  }
}
