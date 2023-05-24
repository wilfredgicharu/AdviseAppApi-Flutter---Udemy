import 'package:advise/domain/usecases/advice_use_cases.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'advicer_state.dart';

class AdvicerCubit extends Cubit<AdvicerCubitState> {
  AdvicerCubit() : super(AdvicerInitial());

  final AdviceUseCases adviceUseCases = AdviceUseCases();

  void adviceRequested() async {
    emit(AdvicerStateLoading());
    //add b/s logic here

    final advice = await adviceUseCases.getAdvice();

    emit(AdvicerStateLoaded(advice: advice));
  }
}
