part of '_widgets.dart';

class BookingCard extends StatelessWidget {
  const BookingCard({
    super.key,
    required this.booking,
  });

  final Booking booking;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 2,
      ),
      child: GestureDetector(
        onTap: () {
          var difference = booking.checkOut.difference(booking.checkIn).inDays;
          showModalBottomSheet<void>(
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            context: context,
            builder: (context) {
              return Wrap(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 30,
                      vertical: 16,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 40,
                              height: 2,
                              child: Material(
                                color: AppColors.grey80,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(90),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  AppWords.checkIn,
                                  style: theme.textTheme.bodyMedium!.copyWith(
                                    color: AppColors.grey80,
                                  ),
                                ),
                                Text(
                                  DateFormat('hh:mm').format(booking.checkIn),
                                  style: theme.textTheme.bodyLarge,
                                ),
                                Text(
                                  DateFormat('d MMM, yyyy').format(booking.checkIn),
                                  style: theme.textTheme.bodyMedium!.copyWith(
                                    color: AppColors.grey100,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                const Icon(
                                  Icons.nights_stay_outlined,
                                  size: 24,
                                ),
                                Text(
                                  '${difference} ${difference > 1 ? AppWords.nights : AppWords.night}',
                                  style: theme.textTheme.bodyMedium!.copyWith(
                                    color: theme.colorScheme.secondary,
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  AppWords.checkOut,
                                  style: theme.textTheme.bodyMedium!.copyWith(
                                    color: AppColors.grey80,
                                  ),
                                ),
                                Text(
                                  DateFormat('hh:mm').format(booking.checkOut),
                                  style: theme.textTheme.bodyLarge,
                                ),
                                Text(
                                  DateFormat('d MMM, yyyy').format(booking.checkOut),
                                  style: theme.textTheme.bodyMedium!.copyWith(
                                    color: AppColors.grey100,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              AppWords.bookingId,
                              style: theme.textTheme.bodyMedium!.copyWith(
                                color: AppColors.grey80,
                              ),
                            ),
                            Text(
                              AppWords.bookingStatus,
                              style: theme.textTheme.bodyMedium!.copyWith(
                                color: AppColors.grey80,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              booking.id,
                              style: theme.textTheme.bodyMedium,
                            ),
                            Text(
                              booking.status == 0
                                  ? AppWords.pending
                                  : booking.status == 1
                                      ? AppWords.confirmed
                                      : AppWords.canceled,
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              AppWords.numberOfGuest,
                              style: theme.textTheme.bodyMedium!.copyWith(
                                color: AppColors.grey80,
                              ),
                            ),
                            Text(
                              AppWords.bookingValue,
                              style: theme.textTheme.bodyMedium!.copyWith(
                                color: AppColors.grey80,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              booking.numberOfGuest.toString(),
                              style: theme.textTheme.bodyMedium,
                            ),
                            Text(
                              '\$ ${booking.value}',
                              style: theme.textTheme.bodyMedium,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          AppWords.phoneNumber,
                          style: theme.textTheme.bodyMedium,
                        ),
                        Text(
                          booking.phoneNumber,
                          style: theme.textTheme.bodyMedium!.copyWith(
                            color: AppColors.grey80,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          AppWords.hostingDetails,
                          style: theme.textTheme.titleMedium,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          AppWords.host,
                          style: theme.textTheme.bodyMedium!.copyWith(
                            color: AppColors.grey80,
                          ),
                        ),
                        Text(booking.host, style: theme.textTheme.bodyMedium),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          AppWords.profileName,
                          style: theme.textTheme.bodyMedium!.copyWith(
                            color: AppColors.grey80,
                          ),
                        ),
                        Text(
                          booking.profileName,
                          style: theme.textTheme.bodyMedium,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          AppWords.propertyUnit,
                          style: theme.textTheme.bodyMedium!.copyWith(
                            color: AppColors.grey80,
                          ),
                        ),
                        Text(
                          booking.propertyUnit,
                          style: theme.textTheme.bodyMedium,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          AppWords.listingName,
                          style: theme.textTheme.bodyMedium!.copyWith(
                            color: AppColors.grey80,
                          ),
                        ),
                        Text(
                          booking.listingName,
                          style: theme.textTheme.bodyMedium!.copyWith(
                            color: AppColors.yellow,
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          );
        },
        child: Card(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 10,
              left: 10,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.yellow.withOpacity(0.2),
                  ),
                  child: const Icon(
                    Icons.home_outlined,
                    color: AppColors.yellow,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        booking.id,
                        style: theme.textTheme.titleMedium,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        booking.propertyUnit,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Text(
                        DateFormat('d MMM yyyy').format(booking.checkIn) +
                            DateFormat(' - d MMM yyyy').format(booking.checkOut),
                        style: theme.textTheme.bodyMedium!.copyWith(
                          color: AppColors.grey80,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 20,
                  width: 80,
                  decoration: BoxDecoration(
                    color: booking.status == 0
                        ? AppColors.grey100.withOpacity(0.2)
                        : booking.status == 1
                            ? AppColors.green.withOpacity(0.2)
                            : AppColors.red.withOpacity(0.2),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      booking.status == 0
                          ? AppWords.pending
                          : booking.status == 1
                              ? AppWords.confirmed
                              : AppWords.canceled,
                      style: theme.textTheme.titleSmall!.copyWith(
                        color: booking.status == 0
                            ? AppColors.grey100
                            : booking.status == 1
                                ? AppColors.green
                                : AppColors.red,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
