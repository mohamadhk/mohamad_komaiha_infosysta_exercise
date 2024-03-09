import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/core/common/widget/button_view.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/core/constants/const.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/features/assignment/domain/entities/post.dart';

class PostDetailsPage extends StatelessWidget {
  final Post post;
  const PostDetailsPage({
    super.key,
    required this.post
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWashedWhiteColor,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Builder(
            builder: (context) {
              return AppBar(
                toolbarHeight: 80,
                elevation: 1,
                leading: Padding(
                  padding: const EdgeInsetsDirectional.only(start: 10,end: 10),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.black),
                      onPressed: () {
                        context.router.pop();
                      },
                    ),
                  ),),
                title:  Text('Post Details',
                    style:Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.w500,
                      overflow: TextOverflow.ellipsis,
                      color: kTextBlackColor,
                    ),),
              );
            }
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(post.title??'',
                maxLines: 3,
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    fontWeight: FontWeight.w500,
                    overflow: TextOverflow.ellipsis,
                    color: kTextBlackColor,
                ),
              ),
            ),

            const SizedBox(height: 25,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(color: kTextBlackColor,
                thickness: 1,
              ),

            ),
            const SizedBox(height: 25,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: 1 * MediaQuery.of(context).size.width,
                child: Text(post.body??'',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontWeight: FontWeight.w500,
                      wordSpacing: 4,
                      color: kTextBlackColor,
                  ),
                ),
              ),
            ),



            const SizedBox(height: 40,),

          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          height: 55,
          child: ButtonView(
            textStyle:
            Theme.of(context).textTheme.titleSmall!.copyWith(
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
              color: Colors.white,

            ),
              title: "Go Back",
              textColor: kWhiteColor,
              buttonStyle: roundedButtonStyle(),
              buttonType: ButtonType.soldButton, onPressed: (){
            context.router.pop();
          }),
        ),
      ),
    );
  }
}
