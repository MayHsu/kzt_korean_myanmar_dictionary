import 'package:flutter/material.dart';
import 'package:kzt_dictionary/common/custom_appbar.dart';
import 'package:kzt_dictionary/constant/color.dart';
import 'package:kzt_dictionary/detail/screen/detail.dart';

class Favorites extends StatelessWidget {
    static const String routeName = '/favorites-screen';
  const Favorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Favorites", 
        automaticallyImplyLeading: true,
           actions: [
          IconButton(onPressed: (){}, 
          icon: Icon(Icons.check,size: 27,)),
          IconButton(onPressed: (){}, 
          icon: Icon(Icons.delete_forever,size: 27,)),
          SizedBox(width: 10,)
        ]),
      body: ListView.separated(
          physics: ClampingScrollPhysics(),
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
          itemCount: 10,
          itemBuilder: (context, index) {
            return Card(
                elevation: 2,
                child: ListTile(
                  contentPadding: EdgeInsets.zero,
                  
                  onTap: () =>
                      Navigator.of(context).pushNamed(Detail.routeName),
                  
                  title: Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "고양이",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, 
                          color: redColor),
                    ),
                  ),
                  trailing: IconButton(onPressed: (){
                  
                  }, icon: Icon(index==1 || index==3 || index==5 ?
                   Icons.check_circle  : 
                   Icons.circle_outlined,size: 20,
                   color: index==1 || index==3 || index==5? greenColor : null,)),
                ));
          },
          separatorBuilder: (context, index) {
            return SizedBox();
          },
        ));
  }
}