class Transaction {
  late String id;
  late String title;
  late double amount;
  late DateTime date;

  Transaction(
      {required this.amount,
      required this.date,
      required this.id,
      required this.title});
}
