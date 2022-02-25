import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:language_learning_game/constants/app_bar.dart';
import 'package:language_learning_game/constants/colors.dart';
import 'package:language_learning_game/constants/sizeConfig.dart';
import 'package:language_learning_game/cubit/game_handler/games_handler_cubit.dart';

class HomeGameMain extends StatefulWidget {
  const HomeGameMain({Key? key}) : super(key: key);

  @override
  _HomeGameMainState createState() => _HomeGameMainState();
}

class _HomeGameMainState extends State<HomeGameMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
          height: SizeConfig.heightMultiplier * 9, child: appBarGame(context)),
      body: BlocBuilder<GamesHandlerCubit, GamesHandlerState>(
        builder: (context, stateGame) {
          List<Widget> listWidgets = [];
          stateGame.selectedGameWidgets
              .forEach((item) => listWidgets.add(item['widget']));
          return Container(
            height: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [homeColor, homeColorLight])),
            child: IndexedStack(
              index: stateGame.selectedWidgetIndex,
              children: listWidgets,
            ),
          );
        },
      ),
    );
  }
}
