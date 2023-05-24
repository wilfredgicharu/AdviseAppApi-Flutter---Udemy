class AdviceUseCases{
  Future<String> getAdvice() async{
    await Future.delayed(Duration(seconds: 3), (){});
    return 'Fake advice o test usecases';
  }
}