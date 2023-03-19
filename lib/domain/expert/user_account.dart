import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_account.freezed.dart';

@freezed
class UserAccount with _$UserAccount {
  const factory UserAccount.newUser({
    required String accountId,
    required String accountName,
    required double totalBalance,
    required double tradeBalance,
    required double freeBalance,
  }) = _NewUserAccount;

  const UserAccount._();
}
