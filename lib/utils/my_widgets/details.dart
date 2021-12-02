import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../model/shoes_model.dart';
import '../components/detail_card.dart';
import '../constant/extensions.dart';
import '../constant/my_color.dart';
import '../my_widgets/add_card_button.dart';
import '../my_widgets/color_palette.dart';
import '../my_widgets/quantity.dart';
import '../my_widgets/size_chart.dart';
import '../../view_model/order_view_model.dart';

class Details extends StatelessWidget {
  final String heroTag;
  final List<ShoesModel> list;
  final int index;

  const Details(
      {Key? key,
      required this.heroTag,
      required this.list,
      required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Consumer<OrderViewModel>(builder: (context, data, w) {
        return Scaffold(
          body: ListView(
            children: [
              Stack(children: [
                Hero(
                  tag: heroTag,
                  child: topImage(),
                ),
                myArrowButton(context, data),
              ]),
              context.fiveSizedBox,
              DetailCard(text: "\$ ${list[index].price}"),
              context.fiveSizedBox,
              DetailCard(text: "${list[index].details}"),
              context.fiveSizedBox,
              centerText("Color Chart"),
              context.fiveSizedBox,
              ColorPalette(data: data),
              context.fiveSizedBox,
              centerText("Size Chart"),
              context.fiveSizedBox,
              SizeChart(data: data),
              context.fiveSizedBox,
              centerText("Quantity"),
              context.fiveSizedBox,
              Quantity(data: data),
              context.fiveSizedBox,
              AddCardButton(data: data, list: list, index: index)
            ],
          ),
        );
      }),
    );
  }

  Widget topImage() {
    return Image.network(
      list[index].url,
      fit: BoxFit.fill,
      errorBuilder:
          (BuildContext context, Object exception, StackTrace? stackTrace) {
        return Center(child: const CircularProgressIndicator());
      },
      loadingBuilder: (BuildContext context, Widget child,
          ImageChunkEvent? loadingProgress) {
        if (loadingProgress == null) return child;
        return Center(
          child: CircularProgressIndicator(
            value: (loadingProgress.expectedTotalBytes != null)
                ? loadingProgress.cumulativeBytesLoaded /
                    loadingProgress.expectedTotalBytes!
                : null,
          ),
        );
      },
    );
  }

  Positioned myArrowButton(BuildContext context, OrderViewModel data) {
    return Positioned(
      top: 10,
      left: 10,
      child: CircleAvatar(
          backgroundColor: kWhite.withOpacity(0.3),
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
              data.cleanSelected();
            },
            icon: Icon(
              Icons.arrow_back,
              color: kBlack,
            ),
          )),
    );
  }

  Text centerText(String text) => Text(
        text,
        textAlign: TextAlign.center,
      );
}
