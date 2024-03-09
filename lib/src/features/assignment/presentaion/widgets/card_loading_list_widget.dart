import 'package:flutter/material.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/features/assignment/presentaion/widgets/card_loading_widget.dart';

class CardLoadingListWidget extends StatelessWidget {
  const CardLoadingListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.all(20),
          child: CardLoadingWidget(),
        );
      },
    );
  }
}
