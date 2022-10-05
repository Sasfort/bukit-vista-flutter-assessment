part of '_widgets.dart';

class GuestCard extends StatelessWidget {
  const GuestCard({
    super.key,
    required this.guest,
  });

  final Guest guest;

  Route<void> _createRoute(Guest guest) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => GuestDetailsPage(
        guest: guest,
      ),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1, 0);
        const end = Offset.zero;
        const curve = Curves.ease;

        final tween = Tween(
          begin: begin,
          end: end,
        ).chain(
          CurveTween(
            curve: curve,
          ),
        );

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 2,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, _createRoute(guest));
        },
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(guest.picture),
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
                        guest.name,
                        style: theme.textTheme.titleLarge,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Text(
                        '${guest.city}, ${guest.country}',
                        style: theme.textTheme.bodyMedium!.copyWith(
                          color: AppColors.grey60,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.navigate_next,
                  color: theme.colorScheme.primary,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
