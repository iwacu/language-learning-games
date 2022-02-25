import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:language_learning_game/aap_config/appConfig.dart';
import 'package:language_learning_game/cubit/data_manipulation/data_manipulation_cubit.dart';
import 'package:language_learning_game/cubit/game_handler/games_handler_cubit.dart';
import 'constants/sizeConfig.dart';
import 'constants/theme.dart';
import 'routes/app_router.dart';

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late AudioPlayer player;

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return MultiBlocProvider(
          providers: [
            BlocProvider(
                create: (context) => DataManipulationCubit()..getData()),
            BlocProvider(
                create: (context) => GamesHandlerCubit()..getInitialData()),
          ],
          child: MaterialApp(
            title: AppConfig.instance.appValues!.dbName,
            debugShowCheckedModeBanner: false,
            theme: theme(),
            onGenerateRoute: _appRouter.onGenerateRoute,
          ),
        );
      });
    });
  }
}
