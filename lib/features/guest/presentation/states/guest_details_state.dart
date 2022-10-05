part of '_states.dart';

class GuestDetailsState {
  static Future<List<Booking>> loadBookingListdata() async {
    final data = await json.decode(await rootBundle.loadString('assets/dummy/booking_data.json'))
        as List<dynamic>;
    final result = <Booking>[];
    for (final booking in data) {
      result.add(Booking.fromJson(booking as Map<String, dynamic>));
    }
    return result;
  }
}
