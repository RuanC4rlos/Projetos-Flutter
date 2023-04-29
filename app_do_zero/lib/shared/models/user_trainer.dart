import 'package:app_do_zero/shared/models/user_abstract.dart';
import 'package:app_do_zero/shared/models/user_client.dart';

class UserTrainer extends AbstractUser {
  // Lista de ids do clientes (API)
  late List<int> listclientIds;

  // Lista dos CLientes
  late List<UserClient> listClients;
}
