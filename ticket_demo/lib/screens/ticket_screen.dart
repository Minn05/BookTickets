import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';
import 'package:ticket_demo/screens/ticket_view.dart';
import 'package:ticket_demo/utils/app_info_list.dart';
import 'package:ticket_demo/utils/app_layout.dart';
import 'package:ticket_demo/utils/app_styles.dart';
import 'package:ticket_demo/widget/column_layout.dart';
import 'package:ticket_demo/widget/ticket_tab.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
              horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getHeight(20),
            ),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text(
                "Tickets",
                style: Styles.headLineStyle1,
              ),
              Gap(AppLayout.getHeight(20)),
              const AppTicketTabs(firstTab: "UnComing", secondTab: "Previous"),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              Container(
                color: Colors.white,
                margin:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                padding:
                    EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                            firstText: "Flutter DB",
                            secondText: "Passenger",
                            alignment: CrossAxisAlignment.start),
                        AppColumnLayout(
                            firstText: "5221 364869",
                            secondText: "Passport",
                            alignment: CrossAxisAlignment.end),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
