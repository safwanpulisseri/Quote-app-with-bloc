import 'package:flutter/material.dart';
import 'package:quotes_app_with_bloc/pages/quote/widgets/custom_button.dart';
import 'package:quotes_app_with_bloc/pages/quote/widgets/error_message.dart';
import 'package:quotes_app_with_bloc/pages/quote/widgets/quote_widgets.dart';

class QuotePage extends StatelessWidget {
  const QuotePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Quote Home',
          style: TextStyle(color: Colors.white),
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            // QuoteWidget(quote: 'Be your self'),
            // ErrorMessage(msg: 'Some Error occured'),
            // CircularProgressIndicator(
            //   color: Colors.purple,
            // ),
            Expanded(
                child: Center(
              child: Text('YOur quote is waiting...'),
            )),
            CustomButton()
          ],
        ),
      ),
    );
  }
}
