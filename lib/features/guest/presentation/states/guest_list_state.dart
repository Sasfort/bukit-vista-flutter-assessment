part of '_states.dart';

class GuestListState {
  static Future<List<Guest>> loadGuestListdata() async {
    final data = await json.decode(await rootBundle.loadString('assets/dummy/guest_data.json'))
        as List<dynamic>;
    final result = <Guest>[];
    for (final guest in data) {
      result.add(Guest.fromJson(guest as Map<String, dynamic>));
    }
    return result;
  }
}
