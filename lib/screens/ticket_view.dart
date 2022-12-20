import 'package:coffee/utils/app_layout.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = Applayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child:Container(
        child: Column(
          children: [
            
          ]
          ),
      ),
    );
  }
}