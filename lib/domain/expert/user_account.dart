class UserAccount {
  final String accountId;
  final String accountName;
  final double totalBalance;
  final double tradeBalance;
  final double freeBalance;

  const UserAccount({
    required this.accountId,
    required this.accountName,
    required this.totalBalance,
    required this.tradeBalance,
    required this.freeBalance,
  });
}
