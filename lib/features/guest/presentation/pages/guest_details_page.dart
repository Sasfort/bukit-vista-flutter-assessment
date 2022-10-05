part of '_pages.dart';

class GuestDetailsPage extends StatefulWidget {
  const GuestDetailsPage({
    super.key,
    required this.guest,
  });

  final Guest guest;

  @override
  State<GuestDetailsPage> createState() => _GuestDetailsPageState();
}

class _GuestDetailsPageState extends State<GuestDetailsPage> {
  List<Booking> bookingList = <Booking>[];

  @override
  void initState() {
    super.initState();
    readJson();
  }

  Future<void> readJson() async {
    final data = await GuestDetailsState.loadBookingListdata();
    setState(() {
      bookingList = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const TopHeader(
                withBackButton: true,
              ),
              ColoredBox(
                color: theme.colorScheme.background,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: NetworkImage(widget.guest.picture),
                                radius: 32,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      widget.guest.name,
                                      style: theme.textTheme.titleLarge,
                                    ),
                                    const SizedBox(
                                      height: 6,
                                    ),
                                    Text(
                                      '${AppWords.guestSince} ${DateFormat('MMM yyyy').format(widget.guest.createdAt)}',
                                      style: theme.textTheme.bodyMedium!.copyWith(
                                        color: AppColors.grey80,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.background,
                        border: const Border(
                          bottom: BorderSide(
                            color: AppColors.grey40,
                          ),
                        ),
                      ),
                      child: TabBar(
                        indicatorSize: TabBarIndicatorSize.label,
                        labelColor: theme.colorScheme.primary,
                        labelStyle: theme.textTheme.titleMedium,
                        unselectedLabelColor: AppColors.grey80,
                        unselectedLabelStyle: theme.textTheme.bodyLarge,
                        tabs: const [
                          Tab(
                            text: AppWords.overview,
                          ),
                          Tab(
                            text: AppWords.bookings,
                          ),
                          Tab(
                            text: AppWords.personas,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    Container(
                      color: theme.colorScheme.background,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 25,
                      ),
                      child: ListView(
                        children: [
                          Text(
                            AppWords.email,
                            style: theme.textTheme.bodyMedium!.copyWith(
                              color: AppColors.grey80,
                            ),
                          ),
                          Text(
                            widget.guest.email,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            AppWords.phoneNumber,
                            style: theme.textTheme.bodyMedium!.copyWith(
                              color: AppColors.grey80,
                            ),
                          ),
                          Text(
                            widget.guest.phoneNumber,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            AppWords.guestOrigin,
                            style: theme.textTheme.bodyMedium!.copyWith(
                              color: AppColors.grey80,
                            ),
                          ),
                          Text(
                            '${widget.guest.city}, ${widget.guest.country}',
                          ),
                        ],
                      ),
                    ),
                    ColoredBox(
                      color: theme.colorScheme.background,
                      child: ListView(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 20,
                            ),
                            child: Column(
                              children: [
                                for (var booking in bookingList) BookingCard(booking: booking),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    ColoredBox(
                      color: theme.colorScheme.background,
                      child: ListView(),
                    ),
                  ],
                ),
              ),
              const BottomNavBar(),
            ],
          ),
        ),
      ),
    );
  }
}
