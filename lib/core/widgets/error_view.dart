import 'package:flutter/material.dart';
import 'package:islami/core/error/faliure.dart';
import 'package:islami/core/utils/color_manager.dart';
import 'package:islami/core/utils/font_size_manager.dart';
import 'package:islami/core/utils/hieght_manager.dart';
import 'package:islami/core/utils/padding_manager.dart';
import 'package:islami/core/utils/text_manager.dart';

class ErrorView extends StatelessWidget {
  final Failure failure;
  final VoidCallback onRetry;

  const ErrorView({super.key, required this.failure, required this.onRetry});

  IconData get icon => switch (failure) {
    ServerFailure failure when failure.statusCode == 404 => Icons.search_off,
    ServerFailure failure when failure.statusCode == 401 => Icons.lock_outline,
    ServerFailure _ => Icons.cloud_off,
    _ => Icons.warning_amber_rounded,
  };

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(PaddingManager.p24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: FontSizeManager.font64,
              color: ColorManager.greyColor,
            ),
            SizedBox(height: HieghtManager.h15),
            Text(
              failure.userMessage,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: FontSizeManager.font16),
            ),
            if (failure.canRetry) ...[
              SizedBox(height: HieghtManager.h25),
              ElevatedButton.icon(
                onPressed: onRetry,
                icon: const Icon(Icons.refresh),
                label: Text(TextManager.tryAgain),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
