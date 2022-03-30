import 'package:custom_transition_route/helpers/route_transitions.dart';
import 'package:flutter/material.dart';
//import 'package:custom_route_transition_nio/custom_route_transition_nio.dart';
import 'package:custom_transition_route/pages/page2.dart';


class Page1 extends StatelessWidget {

  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text( 'Page 1' ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Colors.blue,
      body: Center(
        child: MaterialButton(
          child: const Text( 'Go to page 2'),
          color: Colors.white,
          onPressed: () {

            RouteTransitions(
              context: context,
              child: const Page2(),
              animation: AnimationType.fadeIn,
              // duration: const Duration( milliseconds: 100 ),
              // replacement: false
            );

          }
        ),
     ),
   );
  }
}