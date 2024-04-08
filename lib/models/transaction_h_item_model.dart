class TransactionHistoryItemModel {
  final String type, date, amount;
  final bool opType;

  const TransactionHistoryItemModel(
      {required this.type, required this.date, required this.amount,required this.opType});
}
