part of 'contact_bloc.dart';

enum SuccessFlag {
  createdContact,
  deletedContact,
}

@freezed
class ContactState with _$ContactState {
  const factory ContactState.initial() = _Initial;
  const factory ContactState.loading() = _Loading;
  const factory ContactState.success(SuccessFlag flag) = _Success;
  const factory ContactState.error() = _Error;
}
