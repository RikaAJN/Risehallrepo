import 'package:risehallrepo/util/scaler/scaler.dart';
import 'package:flutter/material.dart';

class ReciverMessage extends StatelessWidget {
  final String? message;
  const ReciverMessage({this.message, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Padding(
          padding: context.insetsSymetric(
            horizontal: 3,
          ),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    child: Container(
                      padding: context.insetsOnly(
                        top: 8,
                        bottom: 9,
                        left: 7,
                        right: 4,
                      ),
                      margin: context.insetsOnly(
                        left: 6,
                        top: 24.5,
                      ),
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        color: Color(0xFFCBECEA),
                      ),
                      child: Text(
                        message!,
                        style: const TextStyle(
                          fontSize: 10,
                          // fontFamily: TRENDA_LIGHT,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF474747),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 23,
                  ),
                ],
              ),
              SizedBox(
                height: 4.5,
              ),
              // Align(
              //   alignment: Alignment.bottomLeft,
              //   child: Text(
              //     'Mariam',
              //     style: const TextStyle(
              //       fontSize: 8,
              //       // fontFamily: TRENDA_LIGHT,
              //       fontWeight: FontWeight.w400,
              //       color: Color(0xFF474747),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}

class SenderMessage extends StatelessWidget {
  final String? message;
  const SenderMessage({this.message, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width - 45,
        ),
        child: Padding(
          padding: context.insetsSymetric(
            horizontal: 3,
          ),
          child: Column(
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 23,
                  ),
                  Flexible(
                    child: Container(
                      padding: context.insetsOnly(
                        top: 8,
                        bottom: 9,
                        left: 7,
                        right: 4,
                      ),
                      margin: context.insetsOnly(
                        left: 6,
                        top: 24.5,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                        ),
                        color: Colors.grey.shade200,
                      ),
                      child: Text(
                        message!,
                        style: const TextStyle(
                          fontSize: 10,
                          // fontFamily: TRENDA_LIGHT,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF474747),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 4.5,
              ),
              // Align(
              //   alignment: Alignment.bottomLeft,
              //   child: Text(
              //     'Mariam',
              //     style: const TextStyle(
              //       fontSize: 8,
              //       // fontFamily: TRENDA_LIGHT,
              //       fontWeight: FontWeight.w400,
              //       color: Color(0xFF474747),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
