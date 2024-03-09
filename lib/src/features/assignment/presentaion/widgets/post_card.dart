import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/app/routes/router.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/core/constants/const.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/features/assignment/domain/entities/post.dart';
import 'package:mohamad_komaiha_infosysta_assignment/src/features/assignment/presentaion/widgets/circle_container_widget.dart';

class PostCard extends StatelessWidget {
  final Post post;
  final Color cardColor;
  final Color arrowColor;
  const PostCard({super.key,
    required this.cardColor,
    required this.post,
    required this.arrowColor
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
          height: 270,
          decoration: BoxDecoration(
            color: cardColor,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: kToastBG,
              )),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleWithNumber(number: post.id??0,),
                    const SizedBox(width: 15,),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.7,
                      child: Text(post.title??"",
                        style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            overflow: TextOverflow.ellipsis,
                            fontWeight: FontWeight.bold,
                            color: kWhiteColor
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        Text(
                          post.body??"",
                          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 15,
                              color: kWhiteColor,
                              overflow: TextOverflow.ellipsis
                          ),
                        ),
                    ],
                  ),
                ),

                Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Divider(
                        thickness: 2,
                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset('assets/images/rose_arrow.png',
                           height: 30,
                            color:arrowColor,
                          ),
                          InkWell(
                            onTap: (){
                              context.router.push(PostDetailsPageAppRouter (post: post));
                            },
                            child:
                            Text('Read More',
                              style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                                overflow: TextOverflow.ellipsis,
                                color: Colors.white,
                                 // Change the thickness of the underline
                              ),
                            ),
                          ),
                          Transform(
                            transform: Matrix4.identity()..scale(-1.0, 1.0),
                            alignment: Alignment.center,
                            child: Image.asset(
                              color:arrowColor,
                              'assets/images/rose_arrow.png',
                              height: 30,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),

              ],
            ),
          )),
    );
  }
}
