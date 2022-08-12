import 'package:booktickets/utils/app_layout.dart';
import 'package:booktickets/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HotelView extends StatelessWidget {
  final Map<String,dynamic> hotel;
  const HotelView({Key? key, required this.hotel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width*0.6,
      height: 360,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(right: 15),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(15))
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel["image"]}")
              )
            ),
          ),
          Gap(10),
          Text(
            hotel["place"],
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
          ),
          Gap(5),
          Text(
            hotel["destination"],
            style: Styles.headLineStyle3.copyWith(color: Colors.white),
          ),
          Gap(8),
          Text(
            "\$${hotel["price"]}/night",
            style: Styles.headLineStyle1.copyWith(color: Styles.kakiColor),
          )
        ],
      ),
    );
  }
}
