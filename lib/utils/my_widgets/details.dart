import 'package:flutter/material.dart';
import 'package:scrollable_widgets/model/shoes_model.dart';
import 'package:scrollable_widgets/utils/constant/extensions.dart';
class Details extends StatelessWidget {
  final String heroTag;
  final List<ShoesModel> list;
  final int index;

  const Details({Key? key, required this.heroTag, required this.list, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        children: [
          Hero(
            tag: heroTag,
            child: Image.network(
              list[index].url,
            fit: BoxFit.fill,
            errorBuilder: (BuildContext context, Object exception,
                StackTrace? stackTrace) {
              return const Text('😢');
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
          context.fiveSizedBox,
          Text("${list[index].price}"),
          context.fiveSizedBox,
          Text(list[index].details),
        ],
      ),
    );
  }
}
