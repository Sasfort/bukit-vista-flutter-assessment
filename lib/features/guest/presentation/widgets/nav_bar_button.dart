part of '_widgets.dart';

class NavBarButton extends StatelessWidget {
  const NavBarButton({
    super.key,
    required this.icon,
    required this.active,
    this.function,
  });

  final IconData icon;
  final bool active;
  final void Function()? function;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return IconButton(
      onPressed: function ?? () {},
      icon: Icon(
        icon,
        size: 36,
        color: active ? theme.colorScheme.primary : AppColors.grey40,
      ),
    );
  }
}
