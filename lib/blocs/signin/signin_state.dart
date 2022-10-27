part of 'signin_bloc.dart';

enum SigninStatus {
  initial,
  submitting,
  success,
  error,
}

class SigninState extends Equatable {
  final SigninStatus signinStatus;
  final CustomError error;
  SigninState({
    required this.signinStatus,
    required this.error,
  });

  factory SigninState.initial() {
    return SigninState(
        signinStatus: SigninStatus.initial, error: CustomError());
  }

  @override
  List<Object> get props => [signinStatus, error];

  SigninState copyWith({
    SigninStatus? signinStatus,
    CustomError? error,
  }) {
    return SigninState(
      signinStatus: signinStatus ?? this.signinStatus,
      error: error ?? this.error,
    );
  }

  @override
  String toString() =>
      'SigninState(signinStatus: $signinStatus, error: $error)';
}
