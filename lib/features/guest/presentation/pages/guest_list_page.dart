part of '_pages.dart';

class GuestListPage extends StatefulWidget {
  const GuestListPage({super.key});

  @override
  State<GuestListPage> createState() => _GuestListPageState();
}

class _GuestListPageState extends State<GuestListPage> {
  List<Guest> guestList = <Guest>[];

  @override
  void initState() {
    super.initState();
    readJson();
  }

  Future<void> readJson() async {
    final data = await GuestListState.loadGuestListdata();
    setState(() {
      guestList = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.colorScheme.primary,
      body: SafeArea(
        child: Column(
          children: [
            const TopHeader(
              withBackButton: false,
            ),
            Container(
              padding: const EdgeInsets.all(25),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.background,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(12),
                        ),
                      ),
                      child: TextField(
                        style: theme.textTheme.bodyMedium,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            size: 24,
                            color: AppColors.grey80,
                          ),
                          hintText: AppWords.guestSearchHint,
                          hintStyle: theme.textTheme.bodyMedium!.copyWith(
                            color: AppColors.grey60,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: AppColors.grey60,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                              color: theme.colorScheme.primary,
                            ),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          theme.colorScheme.tertiary,
                        ),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: const BorderSide(
                              color: AppColors.grey80,
                            ),
                          ),
                        ),
                        padding: MaterialStateProperty.all(EdgeInsets.zero),
                      ),
                      child: Icon(
                        Icons.filter_list,
                        size: 24,
                        color: theme.colorScheme.onTertiary,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: theme.colorScheme.background,
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                ),
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 12,
                    ),
                    for (var guest in guestList)
                      GuestCard(
                        guest: guest,
                      ),
                    const SizedBox(
                      height: 12,
                    ),
                  ],
                ),
              ),
            ),
            const BottomNavBar(),
          ],
        ),
      ),
    );
  }
}
