import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:myacc/Service/acc_service.dart';

final serviceProvider = StateProvider<AccService>((ref) {
  return AccService();
});
