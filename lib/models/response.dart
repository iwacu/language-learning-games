class Response<A> {
  A? object;
  String message;
  bool error;
  Response({this.object, required this.message, this.error = false});
}

class MultiResponse<A, B, C, D> {
  A? object1;
  B? object2;
  C? object3;
  String message;
  bool error;
  MultiResponse(
      {this.object1,
      this.object2,
      this.object3,
      required this.message,
      this.error = false});
}
