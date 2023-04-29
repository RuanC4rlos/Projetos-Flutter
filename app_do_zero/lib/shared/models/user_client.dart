import 'package:app_do_zero/shared/models/training_block.dart';
import 'package:app_do_zero/shared/models/user_abstract.dart';

class UserClient extends AbstractUser {
  late String uniqueCodeClient;
  late List<TrainingBlock> listTrainingBlock;
}
