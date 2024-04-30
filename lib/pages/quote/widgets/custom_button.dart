import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quotes_app_with_bloc/pages/quote/bloc/bloc/quote_bloc.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () {
        BlocProvider.of<QuoteBloc>(context).add(QuoteRequestEvent());
      },
      child: Material(
        elevation: 20,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.purple,
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            child: Center(
                child: Text(
              'Generate',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )),
          ),
        ),
      ),
    );
  }
}
