part of '_widgets.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      color: theme.colorScheme.background,
      height: 75,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavBarButton(
            icon: Icons.home_rounded,
            active: true,
            function: () {
              Navigator.popUntil(context, (route) => route.isFirst);
            },
          ),
          const NavBarButton(
            icon: Icons.wallet,
            active: false,
          ),
          const NavBarButton(
            icon: Icons.notifications,
            active: false,
          ),
          const NavBarButton(
            icon: Icons.account_circle,
            active: false,
          ),
        ],
      ),
    );
  }
}
