import 'package:flutter/material.dart';
import 'package:mi_mercadito_app/app/widget/store_painter.dart';
import 'package:mi_mercadito_app/core/theme/extensions/theme_of.dart';

class TitleStore extends StatelessWidget {
  const TitleStore({
    required this.storeName,
    required this.storeNumber,
    super.key,
  });

  final String storeName;
  final String storeNumber;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        StorePainter(
          width: (32),
          color: themeOf(context).primaryColor,
        ),
        SizedBox(width: (8)),
        Expanded(
          flex: 13,
          child: Text(storeName,
              style: themeOf(context).titleSmall.copyWith(
                    color: themeOf(context).primaryColor,
                    fontSize: (24),
                    fontWeight: FontWeight.w700,
                  )),
        ),
        SizedBox(width: (8)),
        Expanded(
          flex: 10,
          child: Align(
            alignment: Alignment.centerRight,
            child: FittedBox(
              child: Text(
                storeNumber,
                textAlign: TextAlign.end,
                style: themeOf(context).titleSmall.copyWith(
                      color: themeOf(context).textColorHint,
                      fontSize: (18),
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ReviewText extends StatelessWidget {
  final String storeName;
  const ReviewText({super.key, required this.storeName});

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.symmetric(horizontal: (16), vertical: 16),
        child: Text(
          storeName,
          style: themeOf(context).titleSmall.copyWith(
                color: themeOf(context).textColor,
                fontSize: (18),
                fontWeight: FontWeight.w700,
              ),
        ));
  }
}

class StartsRow extends StatelessWidget {
  const StartsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(horizontal: (16), vertical: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            Icons.star,
            color: themeOf(context).secondaryColor,
            size: 48,
          ),
          Icon(
            Icons.star,
            color: themeOf(context).secondaryColor,
            size: 48,
          ),
          Icon(
            Icons.star,
            color: themeOf(context).secondaryColor,
            size: 48,
          ),
          Icon(
            Icons.star,
            color: themeOf(context).secondaryColor,
            size: 48,
          ),
          Icon(
            Icons.star,
            color: themeOf(context).buttonDisabled,
            size: 48,
          ),
        ],
      ),
    );
  }
}
