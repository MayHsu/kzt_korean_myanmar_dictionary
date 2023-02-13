import 'package:flutter/material.dart';
import 'package:kzt_dictionary/common/custom_appbar.dart';
import 'package:kzt_dictionary/common/custom_text_field.dart';
import 'package:kzt_dictionary/constant/color.dart';

class SplashAd extends StatefulWidget {
  static const String routeName = '/splash-Ad-screen';
  const SplashAd({super.key});

  @override
  State<SplashAd> createState() => _SplashAdState();
}

class _SplashAdState extends State<SplashAd> {
  late TextEditingController textAdOnImageController;
    @override
  void initState() {
    super.initState();
    textAdOnImageController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    textAdOnImageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          title: "Splash Ads",
          automaticallyImplyLeading: true,
          actions: [
            IconButton(onPressed: (){

            }, icon: Icon(Icons.delete)),
            SizedBox(width: 10,)
          ]
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              physics: ClampingScrollPhysics(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  UploadImageSection(),
                  AdTextOnImageField(), 
                  SaveButton()],
              ),
            ),
          ),
        ));
  }

  Widget UploadImageSection() {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.width - 36,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: black54Color)),
      child: InkWell(
        onTap: () {
          // selectImages();
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                Icon(
                  Icons.file_upload_outlined,
                  size: 35,
                  color: primaryThemeColor,
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  "Upload image",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: primaryThemeColor),
                ),
              ],
            ),
            // widget.images!.isNotEmpty
            //     ? Padding(
            //         padding: EdgeInsets.all(8.0),
            //         child: GridView.builder(
            //             physics: NeverScrollableScrollPhysics(),
            //             shrinkWrap: true,
            //             itemCount: widget.images!.length,
            //             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //                 childAspectRatio: 1,
            //                 crossAxisCount: 3,
            //                 crossAxisSpacing: 5,
            //                 mainAxisSpacing: 5),
            //             itemBuilder: (context, index) {
            //               return Image.file(
            //                 File(fileImage![index].path),
            //                 fit: BoxFit.cover,
            //               );
            //             }),
            //       )
            //     : Container()
          ],
        ),
      ),
    );
  }

    Widget AdTextOnImageField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomTextField(
        controller: textAdOnImageController,
        labelText: "Ad Text",
        maxLines: 2,
        textInputType: TextInputType.multiline,
      ),
    );
  }

  Widget SaveButton() {
    return Container(
      width: double.infinity,
      height: 50,
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
              backgroundColor: primaryThemeColor, foregroundColor: whiteColor),
          onPressed: () {},
          child: Text(
            "Save",
            style: TextStyle(fontSize: 17),
          )),
    );
  }
}
