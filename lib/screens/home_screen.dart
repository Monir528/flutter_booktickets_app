import 'package:booktickets/custom/ticket_view.dart';
import 'package:booktickets/utils/app_info_list.dart';
import 'package:booktickets/utils/app_style.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';

import '../custom/HotelView.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bdColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Good Morning",style: Styles.headLineStyle3),
                        const Gap(5),
                        Text("Book Tickets", style: Styles.headLineStyle1,),
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            "assets/images/img_1.png"
                          ),
                        )
                      ),
                    ),
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFF4F6FD),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular, color: Color(0xFFBFC205),),
                      Text("Search", style: Styles.headLineStyle4)
                    ],
                  ),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming Flight", style: Styles.headLineStyle2,),
                    InkWell(
                      onTap: (){
                        Fluttertoast.showToast(
                            msg: "After completing development you will able to view upcoming flights",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0
                        );
                      },
                      child: Text("View all", style: Styles.textStyle.copyWith(color: Styles.primaryColor)),
                    )
                  ],
                ),
                const Gap(25),
              ],
            ),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.only(left: 20),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                TicketView(),
                TicketView(),
                TicketView()
              ],
            ),
          ),
          Gap(15),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hotels",style: Styles.headLineStyle2,),
                InkWell(
                  onTap: (){
                    Fluttertoast.showToast(
                        msg: "After completing development you will able to view all hotels info",
                        toastLength: Toast.LENGTH_LONG,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0
                    );
                  },
                  child: Text("View all", style: Styles.headLineStyle3.copyWith(color: Styles.primaryColor),)
                )
              ],
            ),
          ),
          Gap(15),
          SingleChildScrollView(
            padding: EdgeInsets.only(left: 15),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: hotel_list.map((singleHotel) => HotelView(hotel: singleHotel,)).toList()
            ),
          )
        ],
      )
    );
  }
}
