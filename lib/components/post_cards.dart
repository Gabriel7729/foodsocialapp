import 'package:flutter/material.dart';
import 'package:socialfoodapp/components/circle_image.dart';
import 'package:socialfoodapp/food_theme.dart';
import 'package:socialfoodapp/models/post.dart';

class PostCards extends StatelessWidget {
  const PostCards({super.key, required this.post});


  final Post post;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 9, horizontal: 10),
      padding: EdgeInsets.all(12),

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow:[ BoxShadow(
            color: Colors.blue.withOpacity(0.5),
            spreadRadius: 1.5,

          )]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              CircleImage(imageProvider: AssetImage(post.profileImageUrl),
                  radius: 28),
              SizedBox(
                width:12 ,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment:  CrossAxisAlignment.start,
                  children: [
                    Text('Nombre del cheft', style: FoodTheme.lightTextTheme.displaySmall,),
                    Text("Usuario", style: FoodTheme.lightTextTheme.displaySmall,),
                  ],
                ),
              ),
              Text(post.timestamp + " Minutos", style: FoodTheme.lightTextTheme.displaySmall,)
            ],
          ),
          Text(post.comment, style: FoodTheme.lightTextTheme.displayMedium,),
          Image.asset(post.foodPictureUrl, ),
        ],
      ),
    );
  }
}