import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';

import '../core/utils/components.dart';
import 'app_state.dart';

class AppCubit extends Cubit<AppStates> {
  // final GetCharactersUseCase getcharactersUseCase;
  AppCubit() : super(InitialState());
  static AppCubit get(context) => BlocProvider.of(context);

  SelectedButton selectedButton = SelectedButton.nothing;

  bool isMyDegreeWidgetVisible = false;

  void handleButtonTap(SelectedButton button) {
    selectedButton = button;
    isMyDegreeWidgetVisible = !isMyDegreeWidgetVisible;
    emit(tappedSucsessState());
  }

  void resetMyDegreeWidgetVisibility() {
    isMyDegreeWidgetVisible = false;
    emit(resettappedSucsessState());
  }

  late Database database;
  List<Map> newtasks = [];
  List<Map> donetasks = [];
  List<Map> archivedtasks = [];

  void CreatDataBase() async {
    database = await openDatabase('todo.db', version: 1,
        onCreate: (database, version) {
      database
          .execute(
              'CREATE TABLE qust(id INTEGER PRIMARY KEY ,title TEXT,talebDegree TEXT,allDegree TEXT,status TEXT)')
          .then((value) {
        print('table created');
        emit(CreateDataBaseState());
      }).catchError((error) {
        print('error when creating table ${error.toString()}');
      });
    }, onOpen: (database) {
      GetDataFromDataBase(database);
      print('database opened');
    });
  }

  Future insertIntoDatabase({
    required String title,
    required String talebDegree,
    required String allDegree,
  }) async {
    await database.transaction((txn) async {
      await txn
          .rawInsert(
              'INSERT INTO qust(title,talebDegree,allDegree,status)VALUES("$title","$talebDegree","$allDegree","NEW")')
          .then((value) {
        print('$value insert successfullllllllllllllllly');
        emit(insertDataBaseState());
        GetDataFromDataBase(database);
      }).catchError((error) {
        print('error when inserting ${error.toString()}');
      });
      return null;
    });
  }

  void GetDataFromDataBase(database) {
    newtasks = [];
    donetasks = [];
    archivedtasks = [];
    database.rawQuery('SELECT * FROM qust').then((value) {
      value.forEach((element) {
        if (element['status'] == 'NEW')
          newtasks.add(element);
        else if (element['status'] == 'done')
          donetasks.add(element);
        else
          archivedtasks.add(element);
      });
      emit(GetDataBaseState());
    });
  }

  void UbdateDataFromDataBase({required String status, required int id}) {
    database.rawUpdate('UPDATE qust SET status= ? WHERE id = ?',
        ['$status', id]).then((value) {
      print('ubdated');
      emit(UbdateDataBaseState());
      GetDataFromDataBase(database);
    });
  }

  void DeleteDataFromDataBase({required int id}) {
    database.rawDelete('DELETE FROM qust WHERE id = ?', [id]).then((value) {
      print('deleted');
      emit(DeleteDataBaseState());
      GetDataFromDataBase(database);
    });
  }
}
