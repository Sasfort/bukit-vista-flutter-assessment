part of '_widgets.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({
    super.key,
    required this.withBackButton,
  });

  final bool withBackButton;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 32,
            width: 32,
            child: withBackButton ? BackButton() : null,
          ),
          Text(
            AppWords.guestList,
            style: theme.textTheme.titleLarge!.copyWith(
              color: theme.colorScheme.onPrimary,
            ),
          ),
          const SizedBox(
            height: 32,
            width: 32,
          ),
        ],
      ),
    );
  }
}
