import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationModel{

 final String notificationTitle;
 final String notificationContent;

 NotificationModel({
   required this.notificationContent,

   required this.notificationTitle
});

}

final todayDemoNotifications =[
  NotificationModel(
      notificationContent:"Special promotion only valid today",
      notificationTitle:"30% Special Discount!"
  ),
  NotificationModel(
      notificationContent:"Recentyl",
      notificationTitle:"Your Order Has Been Taken by the Driver"
  ),

  NotificationModel(
      notificationContent:"19 Jun 2023",
      notificationTitle:"Your Order Has Been Canceled"
  )
];

final yesterdayDemoNotifications =[
  NotificationModel(
      notificationContent:"Special promotion only valid today",
      notificationTitle:"35% Special Discount!"
  ),
  NotificationModel(
      notificationContent:"Special promotion only valid today",
      notificationTitle:"Account Setup Successfull!"
  ),
  NotificationModel(
      notificationContent:"Special offer for new account, valid until 20 Nov 2022",
      notificationTitle:"Special Offer! 60% Off"
  ),
  NotificationModel(
      notificationContent:"Special promotion only valid today",
      notificationTitle:"Credit Card Connected"
  )
];
