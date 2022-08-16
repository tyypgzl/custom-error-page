import 'package:error_page/assets_enum.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ErrorPage extends StatelessWidget {
  final FlutterErrorDetails errorDetails;

  const ErrorPage({Key? key, required this.errorDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .12,
            ),
            Lottie.asset(Assets.error.toLottieAnimation),
            SizedBox(
              height: MediaQuery.of(context).size.height * .07,
            ),
            const Text(
              "OOOPS..",
              style: TextStyle(
                fontSize: 44,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .05,
            ),
            Text(
              kDebugMode?errorDetails.context.toString():"",
              style: const TextStyle(fontSize: 16),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .02,
            ),
            Text(
              kDebugMode?errorDetails.exceptionAsString():"You have an error.",
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
