import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scrollable_widgets/model/shoes_model.dart';
import 'package:scrollable_widgets/utils/components/detail_card.dart';
import 'package:scrollable_widgets/utils/constant/extensions.dart';
import 'package:scrollable_widgets/utils/constant/my_color.dart';

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
    List<Color> _colorList=[kPink, kBrown, kBlack, kTurquoise, kTYellow];
    List<int> _sizeChart=[7,8,9,10,11,12];
    return SafeArea(
      child: Scaffold(
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
              height: context.width*0.075,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                  itemCount: _colorList.length,
                  itemBuilder: (context, int index){
                return CircleAvatar(
                  backgroundColor: _colorList[index],
                );
              }),
            ),
            Text("Size Chart"),
            Container(
              height: context.width*0.075,
              child: ListView.builder(
                shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: _sizeChart.length,
                  itemBuilder: (context, int index){return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Text("${_sizeChart[index]}"),
                  );}),
            ),
            Text("Quantity"),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: context.lowPadding,
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.all(Radius.circular(15)),
                    border: Border.all(color: kGrey)
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  counter(() { }, "-"),
                  context.horFifteenSizedBox,
                  Text("1"),
                  context.horFifteenSizedBox,
                  counter(() { }, "+"),
                ],
              ),),
            )
          ],
        ),
      ),
    );
  }

  InkWell counter(VoidCallback onTap, String text) {
    return InkWell(
                    onTap: onTap,
                    child: Text(text, style: TextStyle(color: kGrey),));
  }
}
