import 'package:flutter/cupertino.dart';
import 'package:mypos/controllers/receipts_controller.dart';
import 'package:mypos/packages/core_package.dart';

class ReceipsPage extends StatelessWidget {
  final ReceiptsController ctrl = Get.find();

  ReceipsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        body: SizedBox(
          width: 100.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              RichText(
                  text: const TextSpan(
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 45,
                      ),
                      children: [
                        
                    TextSpan(
                      text: 'Receips',
                      style: TextStyle(
                        color: Color.fromARGB(255, 40, 172, 248),
                      ),
                    ),
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}
