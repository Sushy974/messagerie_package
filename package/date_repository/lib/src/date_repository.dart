/// {@template date_repository}
/// date repository package
/// {@endtemplate}
abstract class DateRepository {
  DateTime get now;
}

class FakeDateRepository implements DateRepository {
  late DateTime fakeNow;
  @override
  DateTime get now => fakeNow;
}

class RealDateRepository implements DateRepository {
  @override
  DateTime get now => DateTime.now();
}
