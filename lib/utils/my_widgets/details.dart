import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scrollable_widgets/model/shoes_model.dart';
import 'package:scrollable_widgets/utils/components/detail_card.dart';
import 'package:scrollable_widgets/utils/constant/extensions.dart';
import 'package:scrollable_widgets/utils/constant/my_color.dart';
import 'package:scrollable_widgets/view/order_detail.dart';
import 'package:scrollable_widgets/view_model/order_view_model.dart';

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
                  child: Image.network(
                    list[index].url,
                    fit: BoxFit.fill,
                    errorBuilder: (BuildContext context, Object exception,
                        StackTrace? stackTrace) {
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
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: CircleAvatar(
                      backgroundColor: kWhite.withOpacity(0.3),
                      child: IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(
                          Icons.arrow_back,
                          color: kBlack,
                        ),
                      )),
                ),
              ]),
              context.fiveSizedBox,
              DetailCard(text: "\$ ${list[index].price}"),
              context.fiveSizedBox,
              DetailCard(text: "${list[index].details}"),
              Text("Color Chart"),
              Container(
                height: context.width * 0.075,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: data.colorList.length,
                    itemBuilder: (context, int index) {
                      return InkWell(
                        onTap: () {
                          data.isSelected(index, data.colorList);
                        },
                        child: (data.colorList[index].isSelected)
                            ? AnimatedContainer(
                                child: CircleAvatar(
                                  backgroundColor: data.colorList[index].color,
                                  child: Icon(
                                    Icons.done,
                                    color: kWhite,
                                  ),
                                ),
                                duration: Duration(seconds: 1))
                            : CircleAvatar(
                                backgroundColor: data.colorList[index].color,
                              ),
                      );
                    }),
              ),
              Text("Size Chart"),
              Container(
                height: context.width * 0.075,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: data.sizeChart.length,
                    itemBuilder: (context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: InkWell(
                            onTap: () {
                              data.isSelected(index, data.sizeChart);
                            },
                            child: (data.sizeChart[index].isSelected)
                                ? Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(width: 1)),
                                    child: Padding(
                                      padding: context.lowPadding,
                                      child: Text(
                                        "${data.sizeChart[index].size}",
                                        textAlign: TextAlign.center,
                                      ),
                                    ))
                                : Padding(
                                    padding: context.lowPadding,
                                    child: Text(
                                      "${data.sizeChart[index].size}",
                                      textAlign: TextAlign.center,
                                    ),
                                  )),
                      );
                    }),
              ),
              Text("Quantity"),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: context.lowPadding,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      border: Border.all(color: kGrey)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      context.horFifteenSizedBox,
                      counter(data.decreaseQuantity, "-"),
                      context.horFifteenSizedBox,
                      Text("${data.quantity}"),
                      context.horFifteenSizedBox,
                      counter(data.increaseQuantity, "+"),
                      context.horFifteenSizedBox,
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    data.addToCard();
                    if (data.orderDetails[0].url != null)
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OrderDetail(
                                  imgURL: list[index].url,
                                  color: data.orderDetails[0].color,
                                  sizeChart: data.orderDetails[0].sizeChart,
                                  quantity: data.orderDetails[0].quantity)));
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    elevation: 15.0,
                  ),
                  child: Text("Add to Cart")),

            ],
          ),
        );
      }),
    );
  }

  InkWell counter(VoidCallback onTap, String text) {
    return InkWell(
        onTap: onTap,
        child: Text(
          text,
          style: TextStyle(color: kGrey),
        ));
  }
}
