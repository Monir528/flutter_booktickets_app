import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_style.dart';
import 'package:booktickets/widgets/circle_shape.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width*0.86,
      height: 200,
      child: Container(
        padding: EdgeInsets.only(right: 20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21)
                ),
              ),
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("NYC",style: Styles.headLineStyle4.copyWith(color: Colors.white)),
                      const Spacer(),
                      CircleShape(),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                            height: 24,
                            child: LayoutBuilder(
                              builder: (BuildContext context, BoxConstraints constraints) {
                                return Flex(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  direction: Axis.horizontal,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate((constraints.constrainWidth()/8).floor(), (index) =>
                                  const SizedBox(
                                    width: 4,
                                    height: 1.5,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: Colors.white
                                      ),
                                    ),
                                  )
                                  ),
                                );
                              },
                            ),
                          ),
                          Center(child: Transform.rotate(angle:1.6, child: Icon(Icons.airplanemode_active, color: Colors.white)))
                        ],
                      )),
                      CircleShape(),
                      const Spacer(),
                      Text("LDN",style: Styles.headLineStyle4.copyWith(color: Colors.white)),
                    ],
                  ),
                  const Gap(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("New-York",style: Styles.headLineStyle4.copyWith(color: Colors.white)),
                      Text("8H 30M",style: Styles.headLineStyle3.copyWith(color: Colors.white)),
                      Text("London",style: Styles.headLineStyle4.copyWith(color: Colors.white))
                    ],
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Styles.orangeColor,
              ),
              child: Row(
                children : [
                  SizedBox(
                  height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)
                        )
                    ),
                  ),
                ),
                  Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: LayoutBuilder(
                          builder: (BuildContext context, BoxConstraints constraints) {
                            return Flex(
                                direction: Axis.horizontal,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:
                                List.generate((constraints.constrainWidth()/7).floor(), (index) => SizedBox(
                                  width: 4,
                                  height: 1.5,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                  ),
                                ))
                            );
                          },
                        ),
                      )
                  ),
                  SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)
                          )
                      ),
                    ),
                  ),
              ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Styles.orangeColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(21),
                  bottomLeft: Radius.circular(21)
                )
              ),
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("1 May",style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                      Gap(5),
                      Text("Date", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                    ],
                  ),
                  Column(
                    children: [
                      Text("08:00 AM",style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                      Gap(5),
                      Text("Departure time", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("69",style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                      Gap(5),
                      Text("Number", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
