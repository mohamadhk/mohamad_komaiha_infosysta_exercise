import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/app/routes/router.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/core/constants/const.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      context.router.replace(const PaginationExercisePageAppRouter());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/flutter_bird_background.png',
              width: 200,
              height: 200,),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Pagination Exercise',
                  style: Theme.of(context).textTheme.displaySmall!.copyWith(
                      color: kTextBlackColor,
                      fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(height: 5,),

                Text('Built by Mohamad Komaiha',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: kTextGreyColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
