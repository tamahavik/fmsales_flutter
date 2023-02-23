import 'package:ufi/enums/gender_enum.dart';
import 'package:ufi/model/item_chips.dart';

final List<ItemChips> GENDER = [
  ItemChips(GenderEnum.male.value, 'M'),
  ItemChips(GenderEnum.female.value, 'F'),
];

final List<ItemChips> FOLLOW_UP = [
  ItemChips('Telepon', 'P'),
  ItemChips('Visit', 'V'),
];

final List<ItemChips> FOLLOW_UP_RESULT = [
  ItemChips('Tertarik', 'Tertarik'),
  ItemChips('Tidak Tertarik', 'Tidak Tertarik'),
  ItemChips('Peluang', 'Peluang'),
];

final List<ItemChips> BU = [
  ItemChips('UFI', 'UFI'),
];
