import 'package:esewa_flutter_sdk/esewa_flutter_sdk.dart';
import 'package:esewa_flutter_sdk/esewa_config.dart';
import 'package:esewa_flutter_sdk/esewa_payment_success_result.dart';
import 'package:esewa_integrate/esewa.dart';
import 'package:esewa_flutter_sdk/esewa_payment_success_result.dart';
import 'package:esewa_flutter_sdk/esewa_payment.dart';
import 'package:flutter/material.dart';

class Esewa {
  pay() {
    try {
      EsewaFlutterSdk.initPayment(
          esewaConfig: EsewaConfig(
              clientId: kEsewaClientId, secretId: kEsewaSecretKey, environment: Environment.test),
          esewaPayment:
              EsewaPayment(productId: "1d71jd81", productName: "Product One", productPrice: "20"),
          onPaymentSuccess: (EsewaPaymentSuccessResult result) {
            debugPrint('Success');
          },
          onPaymentFailure: () {
            debugPrint("Failure");
          },
          onPaymentCancellation: () {
            debugPrint("Cancel");
          });
    } catch (e) {
      debugPrint("Exception");
    }
  }

  verify(EsewaPaymentSuccessResult result) {}
}
