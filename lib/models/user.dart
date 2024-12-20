import 'package:warga_app/database/database_helper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final db = await DatabaseHelper.instance.database;
  runApp(MyApp());
}
