import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Catergory { food, travel, leisure, work }

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
}
