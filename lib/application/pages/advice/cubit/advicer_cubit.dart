import 'package:advise/domain/entities/advice_entity.dart';
import 'package:advise/domain/failures/failures.dart';
import 'package:advise/domain/usecases/advice_use_cases.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'advicer_state.dart';

class AdvicerCubit extends Cubit<AdvicerCubitState> {
  final AdviceUseCases adviceUseCases;
  AdvicerCubit({required this.adviceUseCases}) : super(AdvicerInitial());


  void adviceRequested() async {
    emit(AdvicerStateLoading());
    //add b/s logic here

    final failureOrAdvice = await adviceUseCases.getAdvice();

    failureOrAdvice.fold(
        (failure) => emit(AdvicerStateError(message: _mapFailureToMessage(failure))),
        (advice) => emit(AdvicerStateLoaded(advice: advice.advice)));
  }

  String _mapFailureToMessage(Failure failure){
    switch(failure.runtimeType){
      case ServerFailure :
        return "Ops, Api Error. Please try again";

      case CacheFailure:
        return "Something went wrong, try again";

      default:
        return "something went wrong";
    }
  }
}
