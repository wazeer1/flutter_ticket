import 'package:coffee/utils/app_layout.dart';
import 'package:coffee/utils/app_styles.dart';
import 'package:coffee/widgets/thick_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF526799),
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(21),topRight: Radius.circular(21),),
              ),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("NYC",style: Styles.headlneStyle3.copyWith(color: Colors.white,)),
                      Expanded(child: Container()),
                      ThickContainer(),
                      Expanded(child: Stack(
                        children:[
                          SizedBox(
                          height: 24,
                          child: LayoutBuilder(
                            builder: (BuildContext , BoxConstraints constraints) { 
                              print("the width is ${constraints.constrainWidth()}");
                              return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate((constraints.constrainWidth()/6).floor(), (index) => SizedBox(
                                width: 3,
                                height: 1,
                                child: DecoratedBox(decoration: BoxDecoration(
                                  color: Colors.white,
                                )),
                              )),
                              );
                             },
                          ),
                        ),
                          Center(child: Transform.rotate(angle: 1.5,child:Icon(Icons.local_airport_rounded,color: Colors.white,),)),
                    ]
                      )),
                      
                      ThickContainer(),
                      Expanded(child: Container()),
                      Text("London",style: Styles.headlneStyle3.copyWith(color: Colors.white,),)
                    ],
                  )
                ],
              ),
            )
          ]
          ),
      ),
    );
  }
}