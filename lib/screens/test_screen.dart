import 'package:components/utils/responsive.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
   
  const TestScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    Responsive responsive = Responsive.of( context );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive test'),
      ),
      body: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  getWidget(responsive),
                  const SizedBox(
                    height: 50,
                    width: 61,
                    child: VerticalDivider(color: Colors.black, thickness: 1, width: 1)
                    ),
                  getWidget(responsive),
                  const SizedBox(
                    height: 50,
                    width: 61,
                    child: VerticalDivider(color: Colors.black, thickness: 1, width: 1)
                    ),
                  getWidget(responsive),
                ],
              )
            ],
          ))
        ],
      )
    );
  }

  Widget getWidget(Responsive responsive) {
    return Column(
      children: [
        Text('Titulo', style: TextStyle(fontSize: responsive.dp(2), fontWeight: FontWeight.w600),),
        Text('Descripcionn', style: TextStyle(fontSize: responsive.dp(1.6)),),
      ],
    );
  }
}