import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

const uuid = Uuid();
final formatter = DateFormat.yMd();

enum Catergory { food, travel, leisure, work }

const catergoryIcons = {
  Catergory.food: Icons.lunch_dining,
  Catergory.travel: Icons.flight_takeoff,
  Catergory.leisure: Icons.movie,
  Catergory.work: Icons.work,
};

class Expense {
  Expense(
      {required this.title,
      required this.amout,
      required this.date,
      required this.category})
      : id = uuid.v4();

  final String title;
  final double amout;
  final String id;
  final DateTime date;
  final Catergory category;

  String get formattedDate{
    return formatter.format(date);
  }
}