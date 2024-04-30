import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'quote_event.dart';
part 'quote_state.dart';

class QuoteBloc extends Bloc<QuoteEvent, QuoteState> {
  QuoteBloc() : super(QuoteInitial()) {
    on<QuoteRequestEvent>((event, emit) async {
      emit(QuoteStateLoading());
      print("Quote request triggered");

      await Future.delayed(Duration(seconds: 3), () {
        emit(QuoteStateLoaded(
            quote:
                "Clean Architecture, introduced by Robert C. Martin (also known as Uncle Bob), "));
      });
      //emit error state
    });
  }
}
