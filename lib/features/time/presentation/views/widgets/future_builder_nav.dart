import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/widgets/details_content.dart';
import 'package:islami/features/time/presentation/views/widgets/card_askar.dart';

class FutureBuilderNav extends StatelessWidget {
  const FutureBuilderNav({
    super.key,
    required this.azkarPath,
    required this.imageAzkar,
    required this.titleAzkarEn,
    required this.titleAzkarAr,
  });
  Future<String> azkarDetails(String azkarDetails) async {
    return await rootBundle.loadString(azkarDetails);
  }

  final String azkarPath;
  final String imageAzkar;
  final String titleAzkarEn;
  final String titleAzkarAr;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: azkarDetails(azkarPath),
      builder: (context, asyncSnapshot) {
        return CardAskar(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsContent(
                  suraDetails: asyncSnapshot.data!,
                  title: titleAzkarAr,
                  tilteAppBar: titleAzkarAr,
                ),
              ),
            );
          },
          nameAskar: titleAzkarEn,
          imageAskar: imageAzkar,
        );
      },
    );
  }
}
