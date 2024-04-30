import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotes_app_with_bloc/pages/quote/bloc/bloc/quote_bloc.dart';
import 'package:quotes_app_with_bloc/pages/quote/widgets/custom_button.dart';
import 'package:quotes_app_with_bloc/pages/quote/widgets/error_message.dart';
import 'package:quotes_app_with_bloc/pages/quote/widgets/quote_widgets.dart';

class QuotePageWrapperProvider extends StatelessWidget {
  const QuotePageWrapperProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuoteBloc(),
      child: const QuotePage(),
    );
  }
}

class QuotePage extends StatelessWidget {
  const QuotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        centerTitle: true,
        title: const Text(
          'Quote Home',
          style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // QuoteWidget(quote: 'Be your self'),
            // ErrorMessage(msg: 'Some Error occured'),
            // CircularProgressIndicator(
            //   color: Colors.purple,
            // ),
            Expanded(child: Center(
              child: BlocBuilder<QuoteBloc, QuoteState>(
                builder: (context, state) {
                  if (state is QuoteInitial) {
                    return const Text('Quote is Waiting . . .');
                  } else if (state is QuoteStateLoading) {
                    return const CircularProgressIndicator(
                      color: Colors.purple,
                    );
                  } else if (state is QuoteStateLoaded) {
                    return QuoteWidget(quote: state.quote);
                  } else if (state is QuoteStateError) {
                    return ErrorMessage(msg: state.msg);
                  }
                  return const ErrorMessage(msg: 'Something went wrong');
                },
              ),
            )),
            const CustomButton()
          ],
        ),
      ),
    );
  }
}
