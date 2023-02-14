import 'package:demo/color/AppColor.dart';
import 'package:flutter/material.dart';

import 'TextView.dart';

ScrollController _controller = new ScrollController();
ListView DoctorListView(List doctorData, Widget elevatedButton, int itemCount) {
  return ListView.builder(
    itemCount: itemCount,
    controller: _controller,
    shrinkWrap: true,
    // scrollDirection: Axis.vertical,
    itemBuilder: (context, index) {
      return SizedBox(
        height: 100,
        width: 366,
        child: Padding(
            padding: EdgeInsets.only(top: 16.0, right: 24.0, left: 24.0),
            child: Container(
              height: 100,
              width: 366,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, top: 16.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                            backgroundImage:
                                AssetImage(doctorData[index]['img']))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 2.0),
                          child: TextView(
                            doctorData[index]['name'],
                            fontSize: 18,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 6.0),
                          child: TextView(
                            doctorData[index]['category'],
                            // fontSize: 14,
                            textColor: AppColors.shadowColor,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 7.0),
                          child: Row(
                            children: [
                              Icon(
                                Icons.location_history_outlined,
                                size: 15,
                                color: AppColors.darkTextColor,
                              ),
                              TextView(
                                doctorData[index]['distance'],
                                textColor: AppColors.shadowColor,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.star,
                                color: Colors.yellowAccent.shade700,
                              ),
                              TextView(doctorData[index]['rating'])
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              elevatedButton,
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
            )),
      );
    },
  );
}
