import 'package:app_do_zero/shared/models/user_abstract.dart';
import 'package:app_do_zero/shared/models/user_trainer.dart';

class UserAdm extends AbstractUser {
  late String gymName;
  late String gymLogoImg;
  late List<int> listTrainerIds;
  late List<UserTrainer> listUserTrainers;
}
