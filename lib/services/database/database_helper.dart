import 'dart:convert';
import 'dart:io';
import 'package:language_learning_game/aap_config/appConfig.dart';
import 'package:language_learning_game/constants/data_text.dart';
import 'package:language_learning_game/models/categories.dart';
import 'package:language_learning_game/models/games_list.dart';
import 'package:language_learning_game/models/response.dart';
import 'package:language_learning_game/models/user.dart';
import 'package:language_learning_game/models/words_list.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  DatabaseHelper._privateConstructor();

  static Database? _database;

  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    String dbName = AppConfig.instance.appValues!.dbName;
    Directory documensDirectory = await getApplicationDocumentsDirectory();
    String path = join(documensDirectory.path, dbName);
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    // create user table
    await db.execute('''
      CREATE TABLE user(
        id INTEGER PRIMARY KEY,
        name TEXT,
        img TEXT,
        time_stamp TEXT
      )
    ''');
    // create categories table
    await db.execute('''
      CREATE TABLE categories(
        id INTEGER PRIMARY KEY,
        cat_userId INTEGER,
        cat_opened INTEGER,
        cat_name TEXT,
        cat_prof_img TEXT,
        cat_badge TEXT,
        cat_percentage TEXT,
        cat_color TEXT,
        cat_score INTEGER,
        route TEXT
      )
    ''');
    // create words table
    await db.execute('''
      CREATE TABLE words(
        id INTEGER PRIMARY KEY,
        audio_path TEXT,
        cat_id INTEGER,
        image_path TEXT,
        origin_name TEXT,
        cat_color TEXT,
        name TEXT,
        cat_score INTEGER
        
      )
    ''');
    // create games table
    await db.execute('''
      CREATE TABLE games(
        id INTEGER PRIMARY KEY,
        name TEXT,
        image_path TEXT,
        route TEXT,
        color TEXT,
        req_words INTEGER
      )
    ''');
    // create games Mode_table
    await db.execute('''
      CREATE TABLE gamemode(
        id INTEGER PRIMARY KEY,
        name TEXT,
        image_path TEXT
      )
    ''');
    await addUser(
        db,
        User(
            userName: 'player_1',
            userImage: '',
            timeStamp: DateTime.now().toString()));
    await DatabaseHelper.instance.insertCategories(db);
    await insertWords(db);
    await insertGames(db);
    await insertGamesMode(db);
  }

  // insert user in the user tbl
  Future<int> addUser(Database db, User user) async {
    var io = await db.insert('user', user.toMap());
    return io;
  }

  // insert categories into category tbl
  Future<int> insertCategories(Database db) async {
    var objEn = jsonEncode(DataText.json);
    String obj = objEn.toString();
    var obJson = jsonDecode(obj)["data"] as List;
    List<Categories> categories =
        obJson.map((data) => Categories.fromMap(data)).toList();
    categories.forEach((element) async {
      await db.insert('categories', element.toMap());
    });
    return 1;
  }

  // insert game_modes into game_mode tbl
  Future<int> insertGamesMode(Database db) async {
    var objEn = jsonEncode(DataText.jsonGameMode);
    String obj = objEn.toString();
    var obJson = jsonDecode(obj)["data"] as List;
    List<GamesMode> gamesMode =
        obJson.map((data) => GamesMode.fromMap(data)).toList();
    gamesMode.forEach((element) async {
      await db.insert('gamemode', element.toMap());
    });
    return 1;
  }

  // insert words into words tbl
  Future<int> insertWords(Database db) async {
    var objEn = jsonEncode(DataText.wordsData);
    String obj = objEn.toString();
    var obJson = jsonDecode(obj)["data"] as List;
    List<WordsList> words =
        obJson.map((data) => WordsList.fromMap(data)).toList();
    words.forEach((element) async {
      await db.insert('words', element.toMap());
    });
    return 1;
  }

  // insert games into games tbl
  Future<int> insertGames(Database db) async {
    var objEn = jsonEncode(DataText.gamesList);
    String obj = objEn.toString();
    var obJson = jsonDecode(obj)["data"] as List;
    List<GamesList> games =
        obJson.map((data) => GamesList.fromMap(data)).toList();
    games.forEach((element) async {
      await db.insert('games', element.toMap());
    });
    return 1;
  }

  // get user
  Future<Response<User>> getUser() async {
    Database db = await instance.database;
    try {
      var res = await db.query("user", where: "id = ?", whereArgs: [1]);
      return Response(
          object: res.isNotEmpty ? User.fromMap(res.first) : null,
          message: 'success',
          error: false);
    } catch (e) {
      return Response(object: null, message: e.toString(), error: true);
    }
  }

  // get categories
  Future<Response<List<Categories>>> getCategories() async {
    try {
      Database db = await instance.database;
      var response = await db.query('categories', orderBy: 'id');
      List<Categories> categories = response.isNotEmpty
          ? response.map((c) => Categories.fromMap(c)).toList()
          : [];
      return Response(message: 'success', error: false, object: categories);
    } catch (e) {
      return Response(message: e.toString(), error: true, object: []);
    }
  }

  // get game_modes
  Future<Response<List<GamesMode>>> getGamesMode() async {
    try {
      Database db = await instance.database;
      var response = await db.query('gamemode', orderBy: 'id');
      List<GamesMode> gamesMode = response.isNotEmpty
          ? response.map((c) => GamesMode.fromMap(c)).toList()
          : [];
      return Response(message: 'success', error: false, object: gamesMode);
    } catch (e) {
      return Response(message: e.toString(), error: true);
    }
  }

  // get words_list
  Future<Response<List<WordsList>>> getWords() async {
    try {
      Database db = await instance.database;
      var response = await db.query('words', orderBy: 'cat_score ASC');
      List<WordsList> words = response.isNotEmpty
          ? response.map((c) => WordsList.fromMap(c)).toList()
          : [];
      return Response(message: 'success', error: false, object: words);
    } catch (e) {
      return Response(message: e.toString(), error: true, object: []);
    }
  }

    // get words_list
  Future<Response<List<WordsList>>> getStaticWords() async {
    try {
      Database db = await instance.database;
      var response = await db.query('words');
      List<WordsList> words = response.isNotEmpty
          ? response.map((c) => WordsList.fromMap(c)).toList()
          : [];
      return Response(message: 'success', error: false, object: words);
    } catch (e) {
      return Response(message: e.toString(), error: true, object: []);
    }
  }

  // get games_list
  Future<Response<List<GamesList>>> getGames() async {
    try {
      Database db = await instance.database;
      var response = await db.query('games', orderBy: 'id');
      List<GamesList> games = response.isNotEmpty
          ? response.map((c) => GamesList.fromMap(c)).toList()
          : [];
      return Response(message: 'success', error: false, object: games);
    } catch (e) {
      return Response(message: e.toString(), error: true, object: []);
    }
  }

  // update score
  Future<int> updateScore(WordsList wordsList) async {
    Database db = await instance.database;
    return await db.update('words', wordsList.toMap(),
        where: 'id = ?', whereArgs: [wordsList.id]);
  }

  // update category score
  Future<int> updateCategoryScore(Categories categories) async {
    Database db = await instance.database;
    return await db.update('categories', categories.toMap(),
        where: 'id = ?', whereArgs: [categories.id]);
  }

  Future close() async {
    Database db = await instance.database;
    db.close();
  }
}
