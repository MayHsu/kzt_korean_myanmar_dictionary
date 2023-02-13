import 'package:flutter/material.dart';
import 'package:kzt_dictionary/common/custom_appbar.dart';
import 'package:kzt_dictionary/common/custom_text_field.dart';
import 'package:kzt_dictionary/constant/color.dart';

class WordDetail extends StatefulWidget {
  static const String routeName = '/words-detail-screen';
  const WordDetail({super.key});

  @override
  State<WordDetail> createState() => _WordDetailState();
}

class _WordDetailState extends State<WordDetail> {
  final wordFormKey = GlobalKey<FormState>();
  late TextEditingController koreaWordController;
  late TextEditingController myanmarWordController;
  @override
  void initState() {
    super.initState();
    koreaWordController = TextEditingController();
    myanmarWordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    koreaWordController.dispose();
    myanmarWordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          title: "Create Word",
          automaticallyImplyLeading: true,
        ),
      body: SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.all(10),
      child: Form(
        key: wordFormKey,
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              KoreaWordTextField(),
              MyanmarWordTextField(),
              UploadImageSection(),
              SaveButton()
            ],
          ),
        ),
      ),
    )
      ),
    );
    
  }

  Widget KoreaWordTextField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomTextField(
        controller: koreaWordController,
        labelText: "Korea Word",
      ),
    );
  }

  Widget MyanmarWordTextField() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CustomTextField(
        controller: myanmarWordController,
        labelText: "Myanmar Word",
        maxLines: 5,
        textInputType: TextInputType.multiline,
      ),
    );
  }

  Widget UploadImageSection() {
    return Container(
      width: double.infinity,
      height: 150,
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
                  "Upload images",
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
