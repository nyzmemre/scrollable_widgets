import 'package:scrollable_widgets/model/shoes_model.dart';
import 'package:scrollable_widgets/utils/constant/lists.dart';

class ShoesViewModel{
  List<ShoesModel> _shoesGridList=[
    ShoesModel(gridImages[0], 25, "Gommino driving shoes in elegant leather with branded metal strap and D ring buckle, stamped Tod's monogram, rubber detailing on the heel and iconic rubber outsole.", "grid0"),
    ShoesModel(gridImages[1], 15, "Gommino driving shoes in elegant leather with branded metal strap and D ring buckle, stamped Tod's monogram, rubber detailing on the heel and iconic rubber outsole.", "grid1"),
    ShoesModel(gridImages[2], 45, "Gommino driving shoes in elegant leather with branded metal strap and D ring buckle, stamped Tod's monogram, rubber detailing on the heel and iconic rubber outsole.", "grid2"),
    ShoesModel(gridImages[3], 35, "Gommino driving shoes in elegant leather with branded metal strap and D ring buckle, stamped Tod's monogram, rubber detailing on the heel and iconic rubber outsole.", "grid3"),
    ShoesModel(gridImages[4], 20, "Gommino driving shoes in elegant leather with branded metal strap and D ring buckle, stamped Tod's monogram, rubber detailing on the heel and iconic rubber outsole.", "grid4"),
    ShoesModel(gridImages[5], 50, "Gommino driving shoes in elegant leather with branded metal strap and D ring buckle, stamped Tod's monogram, rubber detailing on the heel and iconic rubber outsole.", "grid5"),
    ShoesModel(gridImages[6], 40, "Gommino driving shoes in elegant leather with branded metal strap and D ring buckle, stamped Tod's monogram, rubber detailing on the heel and iconic rubber outsole.", "grid6"),
    ShoesModel(gridImages[7], 30, "Gommino driving shoes in elegant leather with branded metal strap and D ring buckle, stamped Tod's monogram, rubber detailing on the heel and iconic rubber outsole.", "grid7"),
    ShoesModel(gridImages[8], 20, "Gommino driving shoes in elegant leather with branded metal strap and D ring buckle, stamped Tod's monogram, rubber detailing on the heel and iconic rubber outsole.", "grid8"),
    ShoesModel(gridImages[9], 55, "Gommino driving shoes in elegant leather with branded metal strap and D ring buckle, stamped Tod's monogram, rubber detailing on the heel and iconic rubber outsole.", "grid9"),
  ];

  List<ShoesModel> _shoesSGridList=[
    ShoesModel(images[0], 25, "Gommino driving shoes in elegant leather with branded metal strap and D ring buckle, stamped Tod's monogram, rubber detailing on the heel and iconic rubber outsole.", "sgrid0"),
    ShoesModel(images[1], 15, "Gommino driving shoes in elegant leather with branded metal strap and D ring buckle, stamped Tod's monogram, rubber detailing on the heel and iconic rubber outsole.", "sgrid1"),
    ShoesModel(images[2], 45, "Gommino driving shoes in elegant leather with branded metal strap and D ring buckle, stamped Tod's monogram, rubber detailing on the heel and iconic rubber outsole.", "sgrid2"),
    ShoesModel(images[3], 35, "Gommino driving shoes in elegant leather with branded metal strap and D ring buckle, stamped Tod's monogram, rubber detailing on the heel and iconic rubber outsole.", "sgrid3"),
    ShoesModel(images[4], 20, "Gommino driving shoes in elegant leather with branded metal strap and D ring buckle, stamped Tod's monogram, rubber detailing on the heel and iconic rubber outsole.", "sgrid4"),
    ShoesModel(images[5], 50, "Gommino driving shoes in elegant leather with branded metal strap and D ring buckle, stamped Tod's monogram, rubber detailing on the heel and iconic rubber outsole.", "sgrid5"),
    ShoesModel(images[6], 40, "Gommino driving shoes in elegant leather with branded metal strap and D ring buckle, stamped Tod's monogram, rubber detailing on the heel and iconic rubber outsole.", "sgrid6"),
    ShoesModel(images[7], 30, "Gommino driving shoes in elegant leather with branded metal strap and D ring buckle, stamped Tod's monogram, rubber detailing on the heel and iconic rubber outsole.", "sgrid7"),
    ShoesModel(images[8], 20, "Gommino driving shoes in elegant leather with branded metal strap and D ring buckle, stamped Tod's monogram, rubber detailing on the heel and iconic rubber outsole.", "sgrid8"),
    ShoesModel(images[9], 55, "Gommino driving shoes in elegant leather with branded metal strap and D ring buckle, stamped Tod's monogram, rubber detailing on the heel and iconic rubber outsole.", "sgrid9"),
    ShoesModel(images[10], 10, "Gommino driving shoes in elegant leather with branded metal strap and D ring buckle, stamped Tod's monogram, rubber detailing on the heel and iconic rubber outsole.", "sgrid10"),
    ShoesModel(images[11], 25, "Gommino driving shoes in elegant leather with branded metal strap and D ring buckle, stamped Tod's monogram, rubber detailing on the heel and iconic rubber outsole.", "sgrid11"),
  ];

 List<ShoesModel> get shoesGridList=>_shoesGridList;
 List<ShoesModel> get shoesSGridList=>_shoesSGridList;

 static ShoesViewModel? _instance;
 static ShoesViewModel get instance{
   if(_instance==null) _instance=ShoesViewModel._init();
   return _instance!;
 }
 ShoesViewModel._init();
}