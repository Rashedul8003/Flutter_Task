class ErrorMessage {
  final String message;

  final ErrorType? errorType;
  ErrorMessage({this.message = '', this.errorType});

  // static ErrorMessage getErrorFromMsg(List<List<dynamic>>? m) {
  //   if (m != null && m.isNotEmpty) {
  //     String msg = "";
  //     for (int i = 0; i < m.length; i++) {
  //       var item = m.elementAt(i);
  //       var e = item.elementAt(1);
  //       if (kDebugMode) {
  //         print(item.elementAt(1));
  //       }
  //       if (msg.length > 1) {
  //         msg += "\n$e";
  //       } else {
  //         msg += "$e";
  //       }
  //     }
  //     return ErrorMessage(
  //         message: msg, errorType: ErrorType.ERROR_WITH_MESSAGE);
  //   } else {
  //     return ErrorMessage(
  //         message: "Something went wrong",
  //         errorType: ErrorType.ERROR_WITH_MESSAGE);
  //   }
  // }
}

enum ErrorType { NO_INTERNET, NO_DATA, TIMEOUT, ERROR, ERROR_WITH_MESSAGE }
