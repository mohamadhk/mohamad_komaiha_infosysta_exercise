
import 'package:flutter/material.dart';
import 'button_view.dart';

class ErrorView extends StatelessWidget {
  final String error;
  final VoidCallback onRefresh;

  const ErrorView({
    required this.error,
    required this.onRefresh,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(height: 18.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              error,
              textAlign: TextAlign.center,
              style:
                  Theme.of(context).textTheme.displaySmall?.copyWith(height: 1.6),
            ),
          ),
          const SizedBox(height: 21.0),
          ButtonView(
            buttonType: ButtonType.soldButton,
            title: "Refresh",
            buttonStyle: roundedButtonStyle(borderRadius: 8),
            icon: Icons.refresh,
            onPressed: onRefresh,
          ),
        ],
      ),
    );
  }
}
