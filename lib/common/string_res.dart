import 'package:mobx_setup/local_data/appState.dart';

AppState appState = AppState();

class Strings {
  static const error = 'error';
  static const success = 'success';

  // Network
  static const errorGeneral = 'errorGeneral';
  static const errorRequestCancelled = 'errorRequestCancelled';
  static const errorRequestTimeout =
      'Unable to connect to server. Kindly check your internet connection!';
  static const noInternetMessage =
      'Slow or no internet connection. Please check your internet settings.';
  static const somethingWentWrong = 'somethingWentWrong';
  static const serverTimeout = 'Server timeout';
  static const errorTitle = 'Oops! something\'s missing...';
  static const errorDescription =
      'It seems like we can\'t find what you searched. The page you are looking for doesn\'t exist, isn\'t available or was loading incorrectly.';
}
