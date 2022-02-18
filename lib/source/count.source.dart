import 'dart:async';

class CountSource {
  // singleton
  static final CountSource _singleton = CountSource._internal();
  factory CountSource() {
    return _singleton;
  }
  CountSource._internal();
  // singleton [end]

  int count = 0;
  // single stream
  StreamController<int> _countController = new StreamController<int>();
  Stream<int> get countStream => _countController.stream;
  // single stream [end]

  // broadcast stream
  int countBroadcast = 0;
  StreamController<int> _countBroadcastController = new StreamController<int>.broadcast();
  Stream<int> get countBroadcastStream => _countBroadcastController.stream;
  // broadcast stream [end]

  // transform stream
  final _counterTransform = StreamTransformer<int, int>.fromHandlers(handleData: (data, sink) {
    data *= 10;
    sink.add(data);
  });
  int countTransform = 0;
  StreamController<int> _countTransformController = new StreamController<int>();
  Stream<int> get countTransformStream => _countTransformController.stream.transform(_counterTransform);
  // transform stream [end]

  void increment() {
    count++;
    _countController.sink.add(count);
  }

  void incrementBroadcast() {
    countBroadcast++;
    _countBroadcastController.sink.add(countBroadcast);
  }

  void incrementTransform() {
    countTransform++;
    _countTransformController.sink.add(countTransform);
  }

  void dispose() {
    _countController.close();
    _countBroadcastController.close();
    _countTransformController.close();
  }

}

