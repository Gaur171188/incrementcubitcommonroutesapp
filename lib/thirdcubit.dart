import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThirddCubit extends Cubit<int>{
  ThirddCubit():super(0);
  void increment()=>emit(state+1);
}
