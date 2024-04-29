import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

final Widget svg = SvgPicture.asset(
  'assets/icons/sort.svg',
  width: 20,
  height: 20,
);

class Index extends StatelessWidget {
  const Index({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(18, 18, 18, 1),
        body: Container(
            margin: const EdgeInsets.only(top: 12, right: 24, left: 24),
            child: Column(children: [
              SizedBox(
                height: 42,
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        margin: const EdgeInsets.only(left: 16),
                        child: svg,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        margin: const EdgeInsets.only(left: 16),
                        child: const Text(
                          'Index',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 16),
                  child: SizedBox(
                      height: 48,
                      child: TextField(
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                            hintText: 'Search for your task...',
                            contentPadding:
                                const EdgeInsets.symmetric(vertical: 12.0),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(151, 151, 151, 1),
                                  width: 1.0),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(151, 151, 151, 1),
                                  width: 2.0),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            prefixIcon:
                                const Icon(Icons.search, color: Colors.white),
                            hintStyle: const TextStyle(
                                color: Color.fromRGBO(
                              175,
                              175,
                              175,
                              1,
                            ))),
                      )))
            ])));
  }
}
