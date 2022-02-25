import 'package:language_learning_game/aap_config/appConfig.dart';
import 'package:language_learning_game/constants/audios.dart';
import 'package:language_learning_game/constants/colors.dart';
import 'package:language_learning_game/constants/images.dart';
import 'package:language_learning_game/constants/languages_text.dart';
import 'package:language_learning_game/models/categories.dart';
import 'package:language_learning_game/widgets/game_pages/choose_image/3_home_game_choosing.dart';
import 'package:language_learning_game/widgets/game_pages/choose_image/4_home_game_choosing_image.dart';
import 'package:language_learning_game/widgets/game_pages/choose_image/home_choose_image.dart';
import 'package:language_learning_game/widgets/game_pages/fliping_cards/home_fliping_card_2.dart';
import 'package:language_learning_game/widgets/game_pages/fliping_cards/home_fliping_card_3.dart';
import 'package:language_learning_game/widgets/game_pages/fliping_cards/home_fliping_card_4.dart';
import 'package:language_learning_game/widgets/game_pages/match_images/home_match_image_circled.dart';
import 'package:language_learning_game/widgets/game_pages/match_images/home_square_matching.dart';
import 'package:language_learning_game/widgets/game_pages/true_false_game/true_false_game.dart';
import 'package:language_learning_game/widgets/main_widgets_pages/crown_page/home_crown_page.dart';
import 'package:language_learning_game/widgets/main_widgets_pages/home_page/home_page.dart';
import 'package:language_learning_game/widgets/main_widgets_pages/profile_page/home_profile_page.dart';
import 'package:flutter/material.dart';

class DataText {
  DataText._();

  static const List<Map<String, String>> onBoardingTexts = [
    {"image": Images.onboardingImag_1, "title": "Enjoy Visual Games"},
    {"image": Images.onboardingImag_2, "title": "Learn Languages"},
  ];
  // main_widgets
  static const List<Widget> mainWidgets = [
    HomePage(),
    HomeCrownPage(),
    HomeProfilePage()
  ];
  // ********************* modes ***********88
  static final jsonGameMode = {
    "data": [
      {"image_path": Images.gmModeSingle, "name": "Single Game"},
      {"image_path": Images.gmModeSelect, "name": "Select Games"},
      {"image_path": Images.gmModeRandom, "name": "Random Game"},
    ]
  };

  // ********************** categories_list *************
  static final json = {
    "data": [
      {
        "cat_userId": 1,
        "cat_opened": 0,
        "cat_name": "Clothes",
        "cat_prof_img": Images.homeDshClothes,
        "cat_badge": "",
        "cat_percentage": "",
        "cat_color": getStringColor(redOrange),
        "route": "/clothe_game_page",
        "cat_score": 0
      },
      {
        "cat_userId": 1,
        "cat_opened": 1,
        "cat_name": "Transportation",
        "cat_prof_img": Images.homeDshTransport,
        "cat_badge": "",
        "cat_percentage": "",
        "cat_color": getStringColor(redOrangeF),
        "route": "",
        "cat_score": 0
      },
      {
        "cat_userId": 1,
        "cat_opened": 1,
        "cat_name": "Animals",
        "cat_prof_img": Images.homeDshAnimals,
        "cat_badge": "",
        "cat_percentage": "",
        "cat_color": getStringColor(redOrangeGry),
        "route": "",
        "cat_score": 0
      },
      {
        "cat_userId": 1,
        "cat_opened": 1,
        "cat_name": "Numbers",
        "cat_prof_img": Images.homeDshNumbers,
        "cat_badge": "",
        "cat_percentage": "",
        "cat_color": getStringColor(redOrangeGryF),
        "route": "",
        "cat_score": 0
      },
      {
        "cat_userId": 1,
        "cat_opened": 1,
        "cat_name": "Food",
        "cat_prof_img": Images.homeDshfood,
        "cat_badge": "",
        "cat_percentage": "",
        "cat_color": getStringColor(yellowOrange),
        "route": "",
        "cat_score": 0
      },
      {
        "cat_userId": 1,
        "cat_opened": 1,
        "cat_name": "Desserts",
        "cat_prof_img": Images.homeDshDesserts,
        "cat_badge": "",
        "cat_percentage": "",
        "cat_color": getStringColor(redOrangeGry),
        "route": "",
        "cat_score": 0
      },
      {
        "cat_userId": 1,
        "cat_opened": 1,
        "cat_name": "Sports",
        "cat_prof_img": Images.homeDshSports,
        "cat_badge": "",
        "cat_percentage": "",
        "cat_color": getStringColor(redOrange),
        "route": "",
        "cat_score": 0
      },
      {
        "cat_userId": 1,
        "cat_opened": 1,
        "cat_name": "Body Parts",
        "cat_prof_img": Images.homeDshBody,
        "cat_badge": "",
        "cat_percentage": "",
        "cat_color": getStringColor(redOrangeF),
        "route": "",
        "cat_score": 0
      },
      {
        "cat_userId": 1,
        "cat_opened": 1,
        "cat_name": "Countries",
        "cat_prof_img": Images.homeDshCountries,
        "cat_badge": "",
        "cat_percentage": "",
        "cat_color": getStringColor(redOrangeGry),
        "route": "",
        "cat_score": 0
      },
      {
        "cat_userId": 1,
        "cat_opened": 1,
        "cat_name": "Occupations",
        "cat_prof_img": Images.homeDshOccupations,
        "cat_badge": "",
        "cat_percentage": "",
        "cat_color": getStringColor(redOrangeGryF),
        "route": "",
        "cat_score": 0
      },
    ]
  };
  // *********************** words *******************
  static final wordsData = {
    "data": [
      {
        'audio_path': Audios.shirtAudio,
        'cat_id': 1,
        'image_path': Images.shirt,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.shirt
            : SpannishLanguagesText.shirt,
        'cat_color': getStringColor(wordColor1),
        'name': 'Shirt',
        'cat_score': 0
      },
      {
        'audio_path': Audios.tShirtAudio,
        'cat_id': 1,
        'image_path': Images.tShirt,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.tShirt
            : SpannishLanguagesText.tShirt,
        'cat_color': getStringColor(wordColor2),
        'name': 'T-Shirt',
        'cat_score': 0
      },
      {
        'audio_path': Audios.pantsAudio,
        'cat_id': 1,
        'image_path': Images.pants,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.pants
            : SpannishLanguagesText.pants,
        'cat_color': getStringColor(wordColor3),
        'name': 'Pants',
        'cat_score': 0
      },
      {
        'audio_path': Audios.skirtAudio,
        'cat_id': 1,
        'image_path': Images.skirt,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.skirt
            : SpannishLanguagesText.skirt,
        'cat_color': getStringColor(wordColor4),
        'name': 'Skirt',
        'cat_score': 0
      },
      {
        'audio_path': Audios.coatAudio,
        'cat_id': 1,
        'image_path': Images.coat,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.coat
            : SpannishLanguagesText.coat,
        'cat_color': getStringColor(wordColor5),
        'name': 'Coat',
        'cat_score': 0
      },
      {
        'audio_path': Audios.shoesAudio,
        'cat_id': 1,
        'image_path': Images.shoes,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.shoes
            : SpannishLanguagesText.shoes,
        'cat_color': getStringColor(wordColor6),
        'name': 'Shoes',
        'cat_score': 0
      },
      {
        'audio_path': Audios.dressShoesAudio,
        'cat_id': 1,
        'image_path': Images.dressShoes,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.dressShoes
            : SpannishLanguagesText.dressShoes,
        'cat_color': getStringColor(wordColor7),
        'name': 'Dress Shoes',
        'cat_score': 0
      },
      {
        'audio_path': Audios.rain_boatsAudio,
        'cat_id': 1,
        'image_path': Images.rain_boats,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.rain_boats
            : SpannishLanguagesText.rain_boats,
        'cat_color': getStringColor(wordColor8),
        'name': 'Rain boots',
        'cat_score': 0
      },
      {
        'audio_path': Audios.sportShoesAudio,
        'cat_id': 1,
        'image_path': Images.sportShoes,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.sportShoes
            : SpannishLanguagesText.sportShoes,
        'cat_color': getStringColor(wordColor9),
        'name': 'Sport Shoes',
        'cat_score': 0
      },
      {
        'audio_path': Audios.hatAudio,
        'cat_id': 1,
        'image_path': Images.hat,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.hat
            : SpannishLanguagesText.hat,
        'cat_color': getStringColor(wordColor1),
        'name': 'Hat',
        'cat_score': 0
      },
      {
        'audio_path': Audios.glovesAudio,
        'cat_id': 1,
        'image_path': Images.gloves,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.gloves
            : SpannishLanguagesText.gloves,
        'cat_color': getStringColor(wordColor2),
        'name': 'Gloves',
        'cat_score': 0
      },
      {
        'audio_path': Audios.scarfAudio,
        'cat_id': 1,
        'image_path': Images.scarf,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.scarf
            : SpannishLanguagesText.scarf,
        'cat_color': getStringColor(wordColor3),
        'name': 'Scarf',
        'cat_score': 0
      },
      {
        'audio_path': Audios.vestAudio,
        'cat_id': 1,
        'image_path': Images.vest,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.vest
            : SpannishLanguagesText.vest,
        'cat_color': getStringColor(wordColor4),
        'name': 'Vest',
        'cat_score': 0
      },
      {
        'audio_path': Audios.cardiganAudio,
        'cat_id': 1,
        'image_path': Images.cardigan,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.cardigan
            : SpannishLanguagesText.cardigan,
        'cat_color': getStringColor(wordColor5),
        'name': 'Cardigan',
        'cat_score': 0
      },
      {
        'audio_path': Audios.robeAudio,
        'cat_id': 1,
        'image_path': Images.robe,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.robe
            : SpannishLanguagesText.robe,
        'cat_color': getStringColor(wordColor6),
        'name': 'Dress',
        'cat_score': 0
      },
      {
        'audio_path': Audios.highillsAudio,
        'cat_id': 1,
        'image_path': Images.highills,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.highills
            : SpannishLanguagesText.highills,
        'cat_color': getStringColor(wordColor7),
        'name': 'High Heels',
        'cat_score': 0
      },
      {
        'audio_path': Audios.socksAudio,
        'cat_id': 1,
        'image_path': Images.socks,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.socks
            : SpannishLanguagesText.socks,
        'cat_color': getStringColor(wordColor8),
        'name': 'Socks',
        'cat_score': 0
      },
      {
        'audio_path': Audios.stockingsAudio,
        'cat_id': 1,
        'image_path': Images.stockings,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.stockings
            : SpannishLanguagesText.stockings,
        'cat_color': getStringColor(wordColor9),
        'name': 'Stockings',
        'cat_score': 0
      },
      {
        'audio_path': Audios.maskAudio,
        'cat_id': 1,
        'image_path': Images.mask,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.mask
            : SpannishLanguagesText.mask,
        'cat_color': getStringColor(wordColor1),
        'name': 'Mask',
        'cat_score': 0
      },
      {
        'audio_path': Audios.earmuffsAudio,
        'cat_id': 1,
        'image_path': Images.earmuffs,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.earmuffs
            : SpannishLanguagesText.earmuffs,
        'cat_color': getStringColor(wordColor2),
        'name': 'Earmuffs',
        'cat_score': 0
      },
      {
        'audio_path': Audios.trainAudio,
        'cat_id': 2,
        'image_path': Images.train,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.train
            : SpannishLanguagesText.train,
        'cat_color': getStringColor(wordColor1),
        'name': 'Train',
        'cat_score': 0
      },
      {
        'audio_path': Audios.ferryAudio,
        'cat_id': 2,
        'image_path': Images.ferry,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.ferry
            : SpannishLanguagesText.ferry,
        'cat_color': getStringColor(wordColor2),
        'name': 'Ferry',
        'cat_score': 0
      },
      {
        'audio_path': Audios.busAudio,
        'cat_id': 2,
        'image_path': Images.bus,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.bus
            : SpannishLanguagesText.bus,
        'cat_color': getStringColor(wordColor3),
        'name': 'Bus',
        'cat_score': 0
      },
      {
        'audio_path': Audios.taxiAudio,
        'cat_id': 2,
        'image_path': Images.cub,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.cub
            : SpannishLanguagesText.cub,
        'cat_color': getStringColor(wordColor4),
        'name': 'Taxi',
        'cat_score': 0
      },
      {
        'audio_path': Audios.bicyleAudio,
        'cat_id': 2,
        'image_path': Images.bicyle,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.bicyle
            : SpannishLanguagesText.bicyle,
        'cat_color': getStringColor(wordColor5),
        'name': 'Bicycle',
        'cat_score': 0
      },
      {
        'audio_path': Audios.motorbikeAudio,
        'cat_id': 2,
        'image_path': Images.motorbike,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.motorbike
            : SpannishLanguagesText.motorbike,
        'cat_color': getStringColor(wordColor6),
        'name': 'Motorbike',
        'cat_score': 0
      },
      {
        'audio_path': Audios.helicopterAudio,
        'cat_id': 2,
        'image_path': Images.helicopter,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.helicopter
            : SpannishLanguagesText.helicopter,
        'cat_color': getStringColor(wordColor7),
        'name': 'Helicopter',
        'cat_score': 0
      },
      {
        'audio_path': Audios.airPlaneAudio,
        'cat_id': 2,
        'image_path': Images.airplane,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.airplane
            : SpannishLanguagesText.airplane,
        'cat_color': getStringColor(wordColor8),
        'name': 'Airplane',
        'cat_score': 0
      },
      {
        'audio_path': Audios.carriageAudio,
        'cat_id': 2,
        'image_path': Images.carriage,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.carriage
            : SpannishLanguagesText.carriage,
        'cat_color': getStringColor(wordColor9),
        'name': 'Carriage',
        'cat_score': 0
      },
      {
        'audio_path': Audios.truckAudio,
        'cat_id': 2,
        'image_path': Images.truck,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.truck
            : SpannishLanguagesText.truck,
        'cat_color': getStringColor(wordColor1),
        'name': 'Truck',
        'cat_score': 0
      },
      {
        'audio_path': Audios.cableCarAudio,
        'cat_id': 2,
        'image_path': Images.cable_car,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.cable_car
            : SpannishLanguagesText.cable_car,
        'cat_color': getStringColor(wordColor2),
        'name': 'Cable Car',
        'cat_score': 0
      },
      {
        'audio_path': Audios.fireTruckAudio,
        'cat_id': 2,
        'image_path': Images.fire,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.fire
            : SpannishLanguagesText.fire,
        'cat_color': getStringColor(wordColor3),
        'name': 'Fire Truck',
        'cat_score': 0
      },
      {
        'audio_path': Audios.ambulanceAudio,
        'cat_id': 2,
        'image_path': Images.ambulance,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.ambulance
            : SpannishLanguagesText.ambulance,
        'cat_color': getStringColor(wordColor4),
        'name': 'Ambulance',
        'cat_score': 0
      },
      {
        'audio_path': Audios.cruiseAudio,
        'cat_id': 2,
        'image_path': Images.boat,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.boat
            : SpannishLanguagesText.boat,
        'cat_color': getStringColor(wordColor5),
        'name': 'Cruise',
        'cat_score': 0
      },
      {
        'audio_path': Audios.boatAudio,
        'cat_id': 2,
        'image_path': Images.small_boat,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.small_boat
            : SpannishLanguagesText.small_boat,
        'cat_color': getStringColor(wordColor6),
        'name': 'Boat',
        'cat_score': 0
      },
      {
        'audio_path': Audios.rocketAudio,
        'cat_id': 2,
        'image_path': Images.fusee,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.fusee
            : SpannishLanguagesText.fusee,
        'cat_color': getStringColor(wordColor7),
        'name': 'Rocket',
        'cat_score': 0
      },
      {
        'audio_path': Audios.automobileAudio,
        'cat_id': 2,
        'image_path': Images.car,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.car
            : SpannishLanguagesText.car,
        'cat_color': getStringColor(wordColor8),
        'name': 'Automobile',
        'cat_score': 0
      },
      {
        'audio_path': Audios.submarineAudio,
        'cat_id': 2,
        'image_path': Images.sub_mrn,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.sub_mrn
            : SpannishLanguagesText.sub_mrn,
        'cat_color': getStringColor(wordColor9),
        'name': 'Submarine',
        'cat_score': 0
      },
      {
        'audio_path': Audios.subwayAudio,
        'cat_id': 2,
        'image_path': Images.metro,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.metro
            : SpannishLanguagesText.metro,
        'cat_color': getStringColor(wordColor1),
        'name': 'Subway',
        'cat_score': 0
      },
      {
        'audio_path': Audios.yachtAudio,
        'cat_id': 2,
        'image_path': Images.vg_boat,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.vg_boat
            : SpannishLanguagesText.vg_boat,
        'cat_color': getStringColor(wordColor2),
        'name': 'Yacht',
        'cat_score': 0
      },
      {
        'audio_path': Audios.dogAudio,
        'cat_id': 3,
        'image_path': Images.dog,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.dog
            : SpannishLanguagesText.dog,
        'cat_color': getStringColor(wordColor1),
        'name': 'Dog',
        'cat_score': 0
      },
      {
        'audio_path': Audios.catsAudio,
        'cat_id': 3,
        'image_path': Images.cat,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.cat
            : SpannishLanguagesText.cat,
        'cat_color': getStringColor(wordColor2),
        'name': 'Cat',
        'cat_score': 0
      },
      {
        'audio_path': Audios.deersAudio,
        'cat_id': 3,
        'image_path': Images.deer,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.deer
            : SpannishLanguagesText.deer,
        'cat_color': getStringColor(wordColor3),
        'name': 'Deer',
        'cat_score': 0
      },
      {
        'audio_path': Audios.tigersAudio,
        'cat_id': 3,
        'image_path': Images.tiger,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.tiger
            : SpannishLanguagesText.tiger,
        'cat_color': getStringColor(wordColor4),
        'name': 'Tiger',
        'cat_score': 0
      },
      {
        'audio_path': Audios.lionsAudio,
        'cat_id': 3,
        'image_path': Images.lion,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.lion
            : SpannishLanguagesText.lion,
        'cat_color': getStringColor(wordColor5),
        'name': 'Lion',
        'cat_score': 0
      },
      {
        'audio_path': Audios.horseAudio,
        'cat_id': 3,
        'image_path': Images.horse,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.horse
            : SpannishLanguagesText.horse,
        'cat_color': getStringColor(wordColor6),
        'name': 'Horse',
        'cat_score': 0
      },
      {
        'audio_path': Audios.pigsAudio,
        'cat_id': 3,
        'image_path': Images.pig,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.pig
            : SpannishLanguagesText.pig,
        'cat_color': getStringColor(wordColor7),
        'name': 'Pig',
        'cat_score': 0
      },
      {
        'audio_path': Audios.cowsAudio,
        'cat_id': 3,
        'image_path': Images.cow,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.cow
            : SpannishLanguagesText.cow,
        'cat_color': getStringColor(wordColor8),
        'name': 'Cow',
        'cat_score': 0
      },
      {
        'audio_path': Audios.rabbitAudio,
        'cat_id': 3,
        'image_path': Images.rabbit,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.rabbit
            : SpannishLanguagesText.rabbit,
        'cat_color': getStringColor(wordColor9),
        'name': 'Rabbit',
        'cat_score': 0
      },
      {
        'audio_path': Audios.ostrichAudio,
        'cat_id': 3,
        'image_path': Images.ostrich,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.ostrich
            : SpannishLanguagesText.ostrich,
        'cat_color': getStringColor(wordColor1),
        'name': 'Ostrich',
        'cat_score': 0
      },
      {
        'audio_path': Audios.chickenAudio,
        'cat_id': 3,
        'image_path': Images.chicken,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.chicken
            : SpannishLanguagesText.chicken,
        'cat_color': getStringColor(wordColor2),
        'name': 'Chicken',
        'cat_score': 0
      },
      {
        'audio_path': Audios.parrotAudio,
        'cat_id': 3,
        'image_path': Images.parrot,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.parrot
            : SpannishLanguagesText.parrot,
        'cat_color': getStringColor(wordColor3),
        'name': 'Parrot',
        'cat_score': 0
      },
      {
        'audio_path': Audios.hippoAudio,
        'cat_id': 3,
        'image_path': Images.hippo,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.hippo
            : SpannishLanguagesText.hippo,
        'cat_color': getStringColor(wordColor4),
        'name': 'Hippo',
        'cat_score': 0
      },
      {
        'audio_path': Audios.lizardAudio,
        'cat_id': 3,
        'image_path': Images.lizard,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.lizard
            : SpannishLanguagesText.lizard,
        'cat_color': getStringColor(wordColor5),
        'name': 'Lizard',
        'cat_score': 0
      },
      {
        'audio_path': Audios.butterflyAudio,
        'cat_id': 3,
        'image_path': Images.butterfly,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.butterfly
            : SpannishLanguagesText.butterfly,
        'cat_color': getStringColor(wordColor6),
        'name': 'Butterfly',
        'cat_score': 0
      },
      {
        'audio_path': Audios.spiderAudio,
        'cat_id': 3,
        'image_path': Images.spider,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.spider
            : SpannishLanguagesText.spider,
        'cat_color': getStringColor(wordColor7),
        'name': 'Spider',
        'cat_score': 0
      },
      {
        'audio_path': Audios.bearAudio,
        'cat_id': 3,
        'image_path': Images.bear,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.bear
            : SpannishLanguagesText.bear,
        'cat_color': getStringColor(wordColor8),
        'name': 'Bear',
        'cat_score': 0
      },
      {
        'audio_path': Audios.sparrowAudio,
        'cat_id': 3,
        'image_path': Images.sparrow,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.sparrow
            : SpannishLanguagesText.sparrow,
        'cat_color': getStringColor(wordColor9),
        'name': 'Sparrow',
        'cat_score': 0
      },
      {
        'audio_path': Audios.turkeyAudio,
        'cat_id': 3,
        'image_path': Images.turkey,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.turkey
            : SpannishLanguagesText.turkey,
        'cat_color': getStringColor(wordColor1),
        'name': 'Turkey',
        'cat_score': 0
      },
      {
        'audio_path': Audios.squirrelAudio,
        'cat_id': 3,
        'image_path': Images.squirrel,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.squirrel
            : SpannishLanguagesText.squirrel,
        'cat_color': getStringColor(wordColor2),
        'name': 'Squirrel',
        'cat_score': 0
      },
      {
        'audio_path': Audios.oneAudio,
        'cat_id': 4,
        'image_path': Images.number1,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.number1
            : SpannishLanguagesText.number1,
        'cat_color': getStringColor(wordColor1),
        'name': 'One',
        'cat_score': 0
      },
      {
        'audio_path': Audios.twoAudio,
        'cat_id': 4,
        'image_path': Images.number2,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.number2
            : SpannishLanguagesText.number2,
        'cat_color': getStringColor(wordColor2),
        'name': 'Two',
        'cat_score': 0
      },
      {
        'audio_path': Audios.threeAudio,
        'cat_id': 4,
        'image_path': Images.number3,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.number3
            : SpannishLanguagesText.number3,
        'cat_color': getStringColor(wordColor3),
        'name': 'Three',
        'cat_score': 0
      },
      {
        'audio_path': Audios.fourAudio,
        'cat_id': 4,
        'image_path': Images.number4,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.number4
            : SpannishLanguagesText.number4,
        'cat_color': getStringColor(wordColor4),
        'name': 'Four',
        'cat_score': 0
      },
      {
        'audio_path': Audios.fiveAudio,
        'cat_id': 4,
        'image_path': Images.number5,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.number5
            : SpannishLanguagesText.number5,
        'cat_color': getStringColor(wordColor5),
        'name': 'Five',
        'cat_score': 0
      },
      {
        'audio_path': Audios.sixAudio,
        'cat_id': 4,
        'image_path': Images.number6,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.number6
            : SpannishLanguagesText.number6,
        'cat_color': getStringColor(wordColor6),
        'name': 'Six',
        'cat_score': 0
      },
      {
        'audio_path': Audios.sevenAudio,
        'cat_id': 4,
        'image_path': Images.number7,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.number7
            : SpannishLanguagesText.number7,
        'cat_color': getStringColor(wordColor7),
        'name': 'Seven',
        'cat_score': 0
      },
      {
        'audio_path': Audios.eightAudio,
        'cat_id': 4,
        'image_path': Images.number8,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.number8
            : SpannishLanguagesText.number8,
        'cat_color': getStringColor(wordColor8),
        'name': 'Eight',
        'cat_score': 0
      },
      {
        'audio_path': Audios.nineAudio,
        'cat_id': 4,
        'image_path': Images.number9,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.number9
            : SpannishLanguagesText.number9,
        'cat_color': getStringColor(wordColor9),
        'name': 'Nine',
        'cat_score': 0
      },
      {
        'audio_path': Audios.tenAudio,
        'cat_id': 4,
        'image_path': Images.number10,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.number10
            : SpannishLanguagesText.number10,
        'cat_color': getStringColor(wordColor1),
        'name': 'Ten',
        'cat_score': 0
      },
      {
        'audio_path': Audios.elevenAudio,
        'cat_id': 4,
        'image_path': Images.number11,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.number11
            : SpannishLanguagesText.number11,
        'cat_color': getStringColor(wordColor2),
        'name': 'Eleven',
        'cat_score': 0
      },
      {
        'audio_path': Audios.twelveAudio,
        'cat_id': 4,
        'image_path': Images.number12,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.number12
            : SpannishLanguagesText.number12,
        'cat_color': getStringColor(wordColor3),
        'name': 'Twelve',
        'cat_score': 0
      },
      {
        'audio_path': Audios.thirteenAudio,
        'cat_id': 4,
        'image_path': Images.number13,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.number13
            : SpannishLanguagesText.number13,
        'cat_color': getStringColor(wordColor4),
        'name': 'Thirteen',
        'cat_score': 0
      },
      {
        'audio_path': Audios.fourteenAudio,
        'cat_id': 4,
        'image_path': Images.number14,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.number14
            : SpannishLanguagesText.number14,
        'cat_color': getStringColor(wordColor5),
        'name': 'Fourteen',
        'cat_score': 0
      },
      {
        'audio_path': Audios.fifteenAudio,
        'cat_id': 4,
        'image_path': Images.number15,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.number15
            : SpannishLanguagesText.number15,
        'cat_color': getStringColor(wordColor6),
        'name': 'Fifteen',
        'cat_score': 0
      },
      {
        'audio_path': Audios.sixteenAudio,
        'cat_id': 4,
        'image_path': Images.number16,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.number16
            : SpannishLanguagesText.number16,
        'cat_color': getStringColor(wordColor7),
        'name': 'Sixteen',
        'cat_score': 0
      },
      {
        'audio_path': Audios.seventeenAudio,
        'cat_id': 4,
        'image_path': Images.number17,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.number17
            : SpannishLanguagesText.number17,
        'cat_color': getStringColor(wordColor8),
        'name': 'Seventeen',
        'cat_score': 0
      },
      {
        'audio_path': Audios.eightteenAudio,
        'cat_id': 4,
        'image_path': Images.number18,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.number18
            : SpannishLanguagesText.number18,
        'cat_color': getStringColor(wordColor9),
        'name': 'Eightteen',
        'cat_score': 0
      },
      {
        'audio_path': Audios.nineteenAudio,
        'cat_id': 4,
        'image_path': Images.number19,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.number19
            : SpannishLanguagesText.number19,
        'cat_color': getStringColor(wordColor1),
        'name': 'Nineteen',
        'cat_score': 0
      },
      {
        'audio_path': Audios.twentyAudio,
        'cat_id': 4,
        'image_path': Images.number20,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.number20
            : SpannishLanguagesText.number20,
        'cat_color': getStringColor(wordColor2),
        'name': 'Twenty',
        'cat_score': 0
      },
      {
        'audio_path': Audios.cookedRiceAudio,
        'cat_id': 5,
        'image_path': Images.cookedRice,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.cookedRice
            : SpannishLanguagesText.cookedRice,
        'cat_color': getStringColor(wordColor2),
        'name': 'Cooked Rice',
        'cat_score': 0
      },
      {
        'audio_path': Audios.soupAudio,
        'cat_id': 5,
        'image_path': Images.soup,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.soup
            : SpannishLanguagesText.soup,
        'cat_color': getStringColor(wordColor2),
        'name': 'Soup',
        'cat_score': 0
      },
      {
        'audio_path': Audios.noodleAudio,
        'cat_id': 5,
        'image_path': Images.noodle,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.noodle
            : SpannishLanguagesText.noodle,
        'cat_color': getStringColor(wordColor3),
        'name': 'Noodle',
        'cat_score': 0
      },
      {
        'audio_path': Audios.pastaAudio,
        'cat_id': 5,
        'image_path': Images.pasta,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.pasta
            : SpannishLanguagesText.pasta,
        'cat_color': getStringColor(wordColor4),
        'name': 'Pasta',
        'cat_score': 0
      },
      {
        'audio_path': Audios.friedRiceAudio,
        'cat_id': 5,
        'image_path': Images.friedRice,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.friedRice
            : SpannishLanguagesText.friedRice,
        'cat_color': getStringColor(wordColor5),
        'name': 'Fried Rice',
        'cat_score': 0
      },
      {
        'audio_path': Audios.toastAudio,
        'cat_id': 5,
        'image_path': Images.toast,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.toast
            : SpannishLanguagesText.toast,
        'cat_color': getStringColor(wordColor6),
        'name': 'Toast',
        'cat_score': 0
      },
      {
        'audio_path': Audios.sandwichAudio,
        'cat_id': 5,
        'image_path': Images.sandwich,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.sandwich
            : SpannishLanguagesText.sandwich,
        'cat_color': getStringColor(wordColor7),
        'name': 'Sandwich',
        'cat_score': 0
      },
      {
        'audio_path': Audios.udonAudio,
        'cat_id': 5,
        'image_path': Images.udon,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.udon
            : SpannishLanguagesText.udon,
        'cat_color': getStringColor(wordColor8),
        'name': 'Udon',
        'cat_score': 0
      },
      {
        'audio_path': Audios.sushiAudio,
        'cat_id': 5,
        'image_path': Images.sushi,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.sushi
            : SpannishLanguagesText.sushi,
        'cat_color': getStringColor(wordColor9),
        'name': 'Sushi',
        'cat_score': 0
      },
      {
        'audio_path': Audios.friedChickenAudio,
        'cat_id': 5,
        'image_path': Images.friedChicken,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.friedChicken
            : SpannishLanguagesText.friedChicken,
        'cat_color': getStringColor(wordColor1),
        'name': 'Fried Chicken',
        'cat_score': 0
      },
      {
        'audio_path': Audios.dumplingsAudio,
        'cat_id': 5,
        'image_path': Images.dumplings,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.dumplings
            : SpannishLanguagesText.dumplings,
        'cat_color': getStringColor(wordColor2),
        'name': 'Dumplings',
        'cat_score': 0
      },
      {
        'audio_path': Audios.pancakeAudio,
        'cat_id': 5,
        'image_path': Images.pancake,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.pancake
            : SpannishLanguagesText.pancake,
        'cat_color': getStringColor(wordColor3),
        'name': 'Pancake',
        'cat_score': 0
      },
      {
        'audio_path': Audios.saladAudio,
        'cat_id': 5,
        'image_path': Images.salad,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.salad
            : SpannishLanguagesText.salad,
        'cat_color': getStringColor(wordColor4),
        'name': 'Salad',
        'cat_score': 0
      },
      {
        'audio_path': Audios.kimchiAudio,
        'cat_id': 5,
        'image_path': Images.kimchi,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.kimchi
            : SpannishLanguagesText.kimchi,
        'cat_color': getStringColor(wordColor5),
        'name': 'Kimchi',
        'cat_score': 0
      },
      {
        'audio_path': Audios.grilledFishAudio,
        'cat_id': 5,
        'image_path': Images.grilledFish,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.grilledFish
            : SpannishLanguagesText.grilledFish,
        'cat_color': getStringColor(wordColor6),
        'name': 'Grilled fish',
        'cat_score': 0
      },
      {
        'audio_path': Audios.ricecakesAudio,
        'cat_id': 5,
        'image_path': Images.riceCakes,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.riceCakes
            : SpannishLanguagesText.riceCakes,
        'cat_color': getStringColor(wordColor7),
        'name': 'Rice cakes',
        'cat_score': 0
      },
      {
        'audio_path': Audios.sweetPorkAudio,
        'cat_id': 5,
        'image_path': Images.sweetSourPork,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.sweetSourPork
            : SpannishLanguagesText.sweetSourPork,
        'cat_color': getStringColor(wordColor8),
        'name': 'Sweet and Sour Pork',
        'cat_score': 0
      },
      {
        'audio_path': Audios.ramenAudio,
        'cat_id': 5,
        'image_path': Images.ramen,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.ramen
            : SpannishLanguagesText.ramen,
        'cat_color': getStringColor(wordColor9),
        'name': 'Ramen',
        'cat_score': 0
      },
      {
        'audio_path': Audios.curryriceAudio,
        'cat_id': 5,
        'image_path': Images.curryRice,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.curryRice
            : SpannishLanguagesText.curryRice,
        'cat_color': getStringColor(wordColor1),
        'name': 'Curry Rice',
        'cat_score': 0
      },
      {
        'audio_path': Audios.steakAudio,
        'cat_id': 5,
        'image_path': Images.steak,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.steak
            : SpannishLanguagesText.steak,
        'cat_color': getStringColor(wordColor2),
        'name': 'Steak',
        'cat_score': 0
      },
      {
        'audio_path': Audios.bread,
        'cat_id': 6,
        'image_path': Images.bread,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.bread
            : SpannishLanguagesText.bread,
        'cat_color': getStringColor(wordColor2),
        'name': 'Bread',
        'cat_score': 0
      },
      {
        'audio_path': Audios.pudding,
        'cat_id': 6,
        'image_path': Images.pudding,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.pudding
            : SpannishLanguagesText.pudding,
        'cat_color': getStringColor(wordColor2),
        'name': 'Pudding',
        'cat_score': 0
      },
      {
        'audio_path': Audios.cake,
        'cat_id': 6,
        'image_path': Images.cake,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.cake
            : SpannishLanguagesText.cake,
        'cat_color': getStringColor(wordColor3),
        'name': 'Cake',
        'cat_score': 0
      },
      {
        'audio_path': Audios.dalgona,
        'cat_id': 6,
        'image_path': Images.dalgona,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.dalgona
            : SpannishLanguagesText.dalgona,
        'cat_color': getStringColor(wordColor4),
        'name': 'Dalgona',
        'cat_score': 0
      },
      {
        'audio_path': Audios.tarts,
        'cat_id': 6,
        'image_path': Images.tarts,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.tarts
            : SpannishLanguagesText.tarts,
        'cat_color': getStringColor(wordColor5),
        'name': 'Tarts',
        'cat_score': 0
      },
      {
        'audio_path': Audios.milleFeuille,
        'cat_id': 6,
        'image_path': Images.milleFeuille,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.milleFeuille
            : SpannishLanguagesText.milleFeuille,
        'cat_color': getStringColor(wordColor6),
        'name': 'Mille-Feuille',
        'cat_score': 0
      },
      {
        'audio_path': Audios.icecream,
        'cat_id': 6,
        'image_path': Images.icecream,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.icecream
            : SpannishLanguagesText.icecream,
        'cat_color': getStringColor(wordColor7),
        'name': 'Icecream',
        'cat_score': 0
      },
      {
        'audio_path': Audios.sherbet,
        'cat_id': 6,
        'image_path': Images.sherbet,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.sherbet
            : SpannishLanguagesText.sherbet,
        'cat_color': getStringColor(wordColor8),
        'name': 'Sherbet',
        'cat_score': 0
      },
      {
        'audio_path': Audios.canele,
        'cat_id': 6,
        'image_path': Images.canele,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.canele
            : SpannishLanguagesText.canele,
        'cat_color': getStringColor(wordColor9),
        'name': 'Canele',
        'cat_score': 0
      },
      {
        'audio_path': Audios.cheesecakes,
        'cat_id': 6,
        'image_path': Images.cheesecakes,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.cheesecakes
            : SpannishLanguagesText.cheesecakes,
        'cat_color': getStringColor(wordColor1),
        'name': 'Cheesecakes',
        'cat_score': 0
      },
      {
        'audio_path': Audios.cookies,
        'cat_id': 6,
        'image_path': Images.cookies,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.cookies
            : SpannishLanguagesText.cookies,
        'cat_color': getStringColor(wordColor2),
        'name': 'Cookies',
        'cat_score': 0
      },
      {
        'audio_path': Audios.cremeBrule,
        'cat_id': 6,
        'image_path': Images.cremeBrule,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.cremeBrule
            : SpannishLanguagesText.cremeBrule,
        'cat_color': getStringColor(wordColor3),
        'name': 'Creme Brule',
        'cat_score': 0
      },
      {
        'audio_path': Audios.croissant,
        'cat_id': 6,
        'image_path': Images.croissant,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.croissant
            : SpannishLanguagesText.croissant,
        'cat_color': getStringColor(wordColor4),
        'name': 'Croissant',
        'cat_score': 0
      },
      {
        'audio_path': Audios.crepes,
        'cat_id': 6,
        'image_path': Images.crepes,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.crepes
            : SpannishLanguagesText.crepes,
        'cat_color': getStringColor(wordColor5),
        'name': 'Crepes',
        'cat_score': 0
      },
      {
        'audio_path': Audios.dacquoise,
        'cat_id': 6,
        'image_path': Images.dacquoise,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.dacquoise
            : SpannishLanguagesText.dacquoise,
        'cat_color': getStringColor(wordColor6),
        'name': 'Dacquoise',
        'cat_score': 0
      },
      {
        'audio_path': Audios.frenchMacarons,
        'cat_id': 6,
        'image_path': Images.frenchMacarons,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.frenchMacarons
            : SpannishLanguagesText.frenchMacarons,
        'cat_color': getStringColor(wordColor7),
        'name': 'French Macarons',
        'cat_score': 0
      },
      {
        'audio_path': Audios.caramel,
        'cat_id': 6,
        'image_path': Images.caramel,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.caramel
            : SpannishLanguagesText.caramel,
        'cat_color': getStringColor(wordColor8),
        'name': 'Caramel',
        'cat_score': 0
      },
      {
        'audio_path': Audios.candies,
        'cat_id': 6,
        'image_path': Images.candies,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.candies
            : SpannishLanguagesText.candies,
        'cat_color': getStringColor(wordColor9),
        'name': 'Candies',
        'cat_score': 0
      },
      {
        'audio_path': Audios.chocolate,
        'cat_id': 6,
        'image_path': Images.chocolate,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.chocolate
            : SpannishLanguagesText.chocolate,
        'cat_color': getStringColor(wordColor1),
        'name': 'Chocolate',
        'cat_score': 0
      },
      {
        'audio_path': Audios.pies,
        'cat_id': 6,
        'image_path': Images.pies,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.pies
            : SpannishLanguagesText.pies,
        'cat_color': getStringColor(wordColor2),
        'name': 'Pies',
        'cat_score': 0
      },
      {
        'audio_path': Audios.soccer,
        'cat_id': 7,
        'image_path': Images.soccer,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.soccer
            : SpannishLanguagesText.soccer,
        'cat_color': getStringColor(wordColor2),
        'name': 'Soccer',
        'cat_score': 0
      },
      {
        'audio_path': Audios.volleyball,
        'cat_id': 7,
        'image_path': Images.volleyball,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.volleyball
            : SpannishLanguagesText.volleyball,
        'cat_color': getStringColor(wordColor2),
        'name': 'Volleyball',
        'cat_score': 0
      },
      {
        'audio_path': Audios.baseball,
        'cat_id': 7,
        'image_path': Images.baseball,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.baseball
            : SpannishLanguagesText.baseball,
        'cat_color': getStringColor(wordColor3),
        'name': 'Baseball',
        'cat_score': 0
      },
      {
        'audio_path': Audios.basketball,
        'cat_id': 7,
        'image_path': Images.basketball,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.basketball
            : SpannishLanguagesText.basketball,
        'cat_color': getStringColor(wordColor4),
        'name': 'Basketball',
        'cat_score': 0
      },
      {
        'audio_path': Audios.jogging,
        'cat_id': 7,
        'image_path': Images.jogging,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.jogging
            : SpannishLanguagesText.jogging,
        'cat_color': getStringColor(wordColor5),
        'name': 'Jogging',
        'cat_score': 0
      },
      {
        'audio_path': Audios.marathon,
        'cat_id': 7,
        'image_path': Images.marathon,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.marathon
            : SpannishLanguagesText.marathon,
        'cat_color': getStringColor(wordColor6),
        'name': 'Marathon',
        'cat_score': 0
      },
      {
        'audio_path': Audios.swimming,
        'cat_id': 7,
        'image_path': Images.swimming,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.swimming
            : SpannishLanguagesText.swimming,
        'cat_color': getStringColor(wordColor7),
        'name': 'Swimming',
        'cat_score': 0
      },
      {
        'audio_path': Audios.zumba,
        'cat_id': 7,
        'image_path': Images.zumba,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.zumba
            : SpannishLanguagesText.zumba,
        'cat_color': getStringColor(wordColor8),
        'name': 'Zumba',
        'cat_score': 0
      },
      {
        'audio_path': Audios.badminton,
        'cat_id': 7,
        'image_path': Images.badminton,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.badminton
            : SpannishLanguagesText.badminton,
        'cat_color': getStringColor(wordColor9),
        'name': 'Badminton',
        'cat_score': 0
      },
      {
        'audio_path': Audios.tennis,
        'cat_id': 7,
        'image_path': Images.tennis,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.tennis
            : SpannishLanguagesText.tennis,
        'cat_color': getStringColor(wordColor1),
        'name': 'Tennis',
        'cat_score': 0
      },
      {
        'audio_path': Audios.scubaDiving,
        'cat_id': 7,
        'image_path': Images.scubaDiving,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.scubaDiving
            : SpannishLanguagesText.scubaDiving,
        'cat_color': getStringColor(wordColor2),
        'name': 'ScubaDiving',
        'cat_score': 0
      },
      {
        'audio_path': Audios.jumpRroping,
        'cat_id': 7,
        'image_path': Images.jumpRoping,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.jumpRoping
            : SpannishLanguagesText.jumpRoping,
        'cat_color': getStringColor(wordColor3),
        'name': 'Jump Roping',
        'cat_score': 0
      },
      {
        'audio_path': Audios.walking,
        'cat_id': 7,
        'image_path': Images.walking,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.walking
            : SpannishLanguagesText.walking,
        'cat_color': getStringColor(wordColor4),
        'name': 'Walking',
        'cat_score': 0
      },
      {
        'audio_path': Audios.goingToGym,
        'cat_id': 7,
        'image_path': Images.goingToGgym,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.goingToGgym
            : SpannishLanguagesText.goingToGgym,
        'cat_color': getStringColor(wordColor5),
        'name': 'Going To gym',
        'cat_score': 0
      },
      {
        'audio_path': Audios.squash,
        'cat_id': 7,
        'image_path': Images.squash,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.squash
            : SpannishLanguagesText.squash,
        'cat_color': getStringColor(wordColor6),
        'name': 'Squash',
        'cat_score': 0
      },
      {
        'audio_path': Audios.archery,
        'cat_id': 7,
        'image_path': Images.archery,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.archery
            : SpannishLanguagesText.archery,
        'cat_color': getStringColor(wordColor7),
        'name': 'Archery',
        'cat_score': 0
      },
      {
        'audio_path': Audios.triathlon,
        'cat_id': 7,
        'image_path': Images.triathlon,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.triathlon
            : SpannishLanguagesText.triathlon,
        'cat_color': getStringColor(wordColor8),
        'name': 'Triathlon',
        'cat_score': 0
      },
      {
        'audio_path': Audios.hiking,
        'cat_id': 7,
        'image_path': Images.hiking,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.hiking
            : SpannishLanguagesText.hiking,
        'cat_color': getStringColor(wordColor9),
        'name': 'Hiking',
        'cat_score': 0
      },
      {
        'audio_path': Audios.yoga,
        'cat_id': 7,
        'image_path': Images.yoga,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.yoga
            : SpannishLanguagesText.yoga,
        'cat_color': getStringColor(wordColor1),
        'name': 'Yoga',
        'cat_score': 0
      },
      {
        'audio_path': Audios.gymnastics,
        'cat_id': 7,
        'image_path': Images.gymnastics,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.gymnastics
            : SpannishLanguagesText.gymnastics,
        'cat_color': getStringColor(wordColor2),
        'name': 'Gymnastics',
        'cat_score': 0
      },
      {
        'audio_path': Audios.head,
        'cat_id': 8,
        'image_path': Images.head,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.head
            : SpannishLanguagesText.head,
        'cat_color': getStringColor(wordColor2),
        'name': 'Head',
        'cat_score': 0
      },
      {
        'audio_path': Audios.shoulders,
        'cat_id': 8,
        'image_path': Images.shoulders,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.shoulders
            : SpannishLanguagesText.shoulders,
        'cat_color': getStringColor(wordColor2),
        'name': 'Shoulders',
        'cat_score': 0
      },
      {
        'audio_path': Audios.chest,
        'cat_id': 8,
        'image_path': Images.chest,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.chest
            : SpannishLanguagesText.chest,
        'cat_color': getStringColor(wordColor3),
        'name': 'Chest',
        'cat_score': 0
      },
      {
        'audio_path': Audios.belly,
        'cat_id': 8,
        'image_path': Images.belly,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.belly
            : SpannishLanguagesText.belly,
        'cat_color': getStringColor(wordColor4),
        'name': 'Belly',
        'cat_score': 0
      },
      {
        'audio_path': Audios.feet,
        'cat_id': 8,
        'image_path': Images.feet,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.feet
            : SpannishLanguagesText.feet,
        'cat_color': getStringColor(wordColor5),
        'name': 'Feet',
        'cat_score': 0
      },
      {
        'audio_path': Audios.legs,
        'cat_id': 8,
        'image_path': Images.legs,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.legs
            : SpannishLanguagesText.legs,
        'cat_color': getStringColor(wordColor6),
        'name': 'Legs',
        'cat_score': 0
      },
      {
        'audio_path': Audios.arms,
        'cat_id': 8,
        'image_path': Images.arms,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.arms
            : SpannishLanguagesText.arms,
        'cat_color': getStringColor(wordColor7),
        'name': 'Arms',
        'cat_score': 0
      },
      {
        'audio_path': Audios.ears,
        'cat_id': 8,
        'image_path': Images.ears,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.ears
            : SpannishLanguagesText.ears,
        'cat_color': getStringColor(wordColor8),
        'name': 'Ears',
        'cat_score': 0
      },
      {
        'audio_path': Audios.eyes,
        'cat_id': 8,
        'image_path': Images.eyes,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.eyes
            : SpannishLanguagesText.eyes,
        'cat_color': getStringColor(wordColor9),
        'name': 'Eyes',
        'cat_score': 0
      },
      {
        'audio_path': Audios.mouth,
        'cat_id': 8,
        'image_path': Images.mouth,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.mouth
            : SpannishLanguagesText.mouth,
        'cat_color': getStringColor(wordColor1),
        'name': 'Mouth',
        'cat_score': 0
      },
      {
        'audio_path': Audios.teeth,
        'cat_id': 8,
        'image_path': Images.teeth,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.teeth
            : SpannishLanguagesText.teeth,
        'cat_color': getStringColor(wordColor2),
        'name': 'Teeth',
        'cat_score': 0
      },
      {
        'audio_path': Audios.hands,
        'cat_id': 8,
        'image_path': Images.hands,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.hands
            : SpannishLanguagesText.hands,
        'cat_color': getStringColor(wordColor3),
        'name': 'Hands',
        'cat_score': 0
      },
      {
        'audio_path': Audios.nose,
        'cat_id': 8,
        'image_path': Images.nose,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.nose
            : SpannishLanguagesText.nose,
        'cat_color': getStringColor(wordColor4),
        'name': 'Nose',
        'cat_score': 0
      },
      {
        'audio_path': Audios.neck,
        'cat_id': 8,
        'image_path': Images.neck,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.neck
            : SpannishLanguagesText.neck,
        'cat_color': getStringColor(wordColor5),
        'name': 'Neck',
        'cat_score': 0
      },
      {
        'audio_path': Audios.tongue,
        'cat_id': 8,
        'image_path': Images.tongue,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.tongue
            : SpannishLanguagesText.tongue,
        'cat_color': getStringColor(wordColor6),
        'name': 'Tongue',
        'cat_score': 0
      },
      {
        'audio_path': Audios.nails,
        'cat_id': 8,
        'image_path': Images.nails,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.nails
            : SpannishLanguagesText.nails,
        'cat_color': getStringColor(wordColor7),
        'name': 'Nails',
        'cat_score': 0
      },
      {
        'audio_path': Audios.thighs,
        'cat_id': 8,
        'image_path': Images.thighs,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.thighs
            : SpannishLanguagesText.thighs,
        'cat_color': getStringColor(wordColor8),
        'name': 'Thighs',
        'cat_score': 0
      },
      {
        'audio_path': Audios.torso,
        'cat_id': 8,
        'image_path': Images.torso,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.torso
            : SpannishLanguagesText.torso,
        'cat_color': getStringColor(wordColor9),
        'name': 'Torso',
        'cat_score': 0
      },
      {
        'audio_path': Audios.fingers,
        'cat_id': 8,
        'image_path': Images.fingers,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.fingers
            : SpannishLanguagesText.fingers,
        'cat_color': getStringColor(wordColor1),
        'name': 'Fingers',
        'cat_score': 0
      },
      {
        'audio_path': Audios.toes,
        'cat_id': 8,
        'image_path': Images.toes,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.toes
            : SpannishLanguagesText.toes,
        'cat_color': getStringColor(wordColor2),
        'name': 'Toes',
        'cat_score': 0
      },
      {
        'audio_path': Audios.uSA,
        'cat_id': 9,
        'image_path': Images.uSA,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.uSA
            : SpannishLanguagesText.uSA,
        'cat_color': getStringColor(wordColor2),
        'name': 'USA',
        'cat_score': 0
      },
      {
        'audio_path': Audios.korea,
        'cat_id': 9,
        'image_path': Images.korea,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.korea
            : SpannishLanguagesText.korea,
        'cat_color': getStringColor(wordColor2),
        'name': 'Korea',
        'cat_score': 0
      },
      {
        'audio_path': Audios.canada,
        'cat_id': 9,
        'image_path': Images.canada,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.canada
            : SpannishLanguagesText.canada,
        'cat_color': getStringColor(wordColor3),
        'name': 'Canada',
        'cat_score': 0
      },
      {
        'audio_path': Audios.japan,
        'cat_id': 9,
        'image_path': Images.japan,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.japan
            : SpannishLanguagesText.japan,
        'cat_color': getStringColor(wordColor4),
        'name': 'Japan',
        'cat_score': 0
      },
      {
        'audio_path': Audios.china,
        'cat_id': 9,
        'image_path': Images.china,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.china
            : SpannishLanguagesText.china,
        'cat_color': getStringColor(wordColor5),
        'name': 'China',
        'cat_score': 0
      },
      {
        'audio_path': Audios.mongolia,
        'cat_id': 9,
        'image_path': Images.mongolia,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.mongolia
            : SpannishLanguagesText.mongolia,
        'cat_color': getStringColor(wordColor6),
        'name': 'Mongolia',
        'cat_score': 0
      },
      {
        'audio_path': Audios.russia,
        'cat_id': 9,
        'image_path': Images.russia,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.russia
            : SpannishLanguagesText.russia,
        'cat_color': getStringColor(wordColor7),
        'name': 'Russia',
        'cat_score': 0
      },
      {
        'audio_path': Audios.ukraine,
        'cat_id': 9,
        'image_path': Images.ukraine,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.ukraine
            : SpannishLanguagesText.ukraine,
        'cat_color': getStringColor(wordColor8),
        'name': 'Ukraine',
        'cat_score': 0
      },
      {
        'audio_path': Audios.cambodia,
        'cat_id': 9,
        'image_path': Images.cambodia,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.cambodia
            : SpannishLanguagesText.cambodia,
        'cat_color': getStringColor(wordColor9),
        'name': 'Cambodia',
        'cat_score': 0
      },
      {
        'audio_path': Audios.thailand,
        'cat_id': 9,
        'image_path': Images.thailand,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.thailand
            : SpannishLanguagesText.thailand,
        'cat_color': getStringColor(wordColor1),
        'name': 'Thailand',
        'cat_score': 0
      },
      {
        'audio_path': Audios.finland,
        'cat_id': 9,
        'image_path': Images.finland,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.finland
            : SpannishLanguagesText.finland,
        'cat_color': getStringColor(wordColor2),
        'name': 'Finland',
        'cat_score': 0
      },
      {
        'audio_path': Audios.denmark,
        'cat_id': 9,
        'image_path': Images.denmark,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.denmark
            : SpannishLanguagesText.denmark,
        'cat_color': getStringColor(wordColor3),
        'name': 'Denmark',
        'cat_score': 0
      },
      {
        'audio_path': Audios.egypt,
        'cat_id': 9,
        'image_path': Images.egypt,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.egypt
            : SpannishLanguagesText.egypt,
        'cat_color': getStringColor(wordColor4),
        'name': 'Egypt',
        'cat_score': 0
      },
      {
        'audio_path': Audios.malaysia,
        'cat_id': 9,
        'image_path': Images.malaysia,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.malaysia
            : SpannishLanguagesText.malaysia,
        'cat_color': getStringColor(wordColor5),
        'name': 'Malaysia',
        'cat_score': 0
      },
      {
        'audio_path': Audios.indonesia,
        'cat_id': 9,
        'image_path': Images.indonesia,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.indonesia
            : SpannishLanguagesText.indonesia,
        'cat_color': getStringColor(wordColor6),
        'name': 'Indonesia',
        'cat_score': 0
      },
      {
        'audio_path': Audios.myanmar,
        'cat_id': 9,
        'image_path': Images.myanmar,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.myanmar
            : SpannishLanguagesText.myanmar,
        'cat_color': getStringColor(wordColor7),
        'name': 'Myanmar',
        'cat_score': 0
      },
      {
        'audio_path': Audios.laos,
        'cat_id': 9,
        'image_path': Images.laos,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.laos
            : SpannishLanguagesText.laos,
        'cat_color': getStringColor(wordColor8),
        'name': 'Laos',
        'cat_score': 0
      },
      {
        'audio_path': Audios.vietnam,
        'cat_id': 9,
        'image_path': Images.vietnam,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.vietnam
            : SpannishLanguagesText.vietnam,
        'cat_color': getStringColor(wordColor9),
        'name': 'Vietnam',
        'cat_score': 0
      },
      {
        'audio_path': Audios.uruguay,
        'cat_id': 9,
        'image_path': Images.uruguay,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.uruguay
            : SpannishLanguagesText.uruguay,
        'cat_color': getStringColor(wordColor1),
        'name': 'Uruguay',
        'cat_score': 0
      },
      {
        'audio_path': Audios.mexico,
        'cat_id': 9,
        'image_path': Images.mexico,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.mexico
            : SpannishLanguagesText.mexico,
        'cat_color': getStringColor(wordColor2),
        'name': 'Mexico',
        'cat_score': 0
      },
      {
        'audio_path': Audios.journalist,
        'cat_id': 10,
        'image_path': Images.journalist,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.journalist
            : SpannishLanguagesText.journalist,
        'cat_color': getStringColor(wordColor2),
        'name': 'Journalist',
        'cat_score': 0
      },
      {
        'audio_path': Audios.driver,
        'cat_id': 10,
        'image_path': Images.driver,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.driver
            : SpannishLanguagesText.driver,
        'cat_color': getStringColor(wordColor2),
        'name': 'Driver',
        'cat_score': 0
      },
      {
        'audio_path': Audios.cooks,
        'cat_id': 10,
        'image_path': Images.cooks,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.cooks
            : SpannishLanguagesText.cooks,
        'cat_color': getStringColor(wordColor3),
        'name': 'Cooks',
        'cat_score': 0
      },
      {
        'audio_path': Audios.teacher,
        'cat_id': 10,
        'image_path': Images.teacher,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.teacher
            : SpannishLanguagesText.teacher,
        'cat_color': getStringColor(wordColor4),
        'name': 'Teacher',
        'cat_score': 0
      },
      {
        'audio_path': Audios.professor,
        'cat_id': 10,
        'image_path': Images.professor,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.professor
            : SpannishLanguagesText.professor,
        'cat_color': getStringColor(wordColor5),
        'name': 'Professor',
        'cat_score': 0
      },
      {
        'audio_path': Audios.librarin,
        'cat_id': 10,
        'image_path': Images.librarin,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.librarin
            : SpannishLanguagesText.librarin,
        'cat_color': getStringColor(wordColor6),
        'name': 'Librarin',
        'cat_score': 0
      },
      {
        'audio_path': Audios.judge,
        'cat_id': 10,
        'image_path': Images.judge,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.judge
            : SpannishLanguagesText.judge,
        'cat_color': getStringColor(wordColor7),
        'name': 'Judge',
        'cat_score': 0
      },
      {
        'audio_path': Audios.lawyer,
        'cat_id': 10,
        'image_path': Images.lawyer,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.lawyer
            : SpannishLanguagesText.lawyer,
        'cat_color': getStringColor(wordColor8),
        'name': 'Lawyer',
        'cat_score': 0
      },
      {
        'audio_path': Audios.prosecutor,
        'cat_id': 10,
        'image_path': Images.prosecutor,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.prosecutor
            : SpannishLanguagesText.prosecutor,
        'cat_color': getStringColor(wordColor9),
        'name': 'Prosecutor',
        'cat_score': 0
      },
      {
        'audio_path': Audios.movieDirector,
        'cat_id': 10,
        'image_path': Images.movieDirector,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.movieDirector
            : SpannishLanguagesText.movieDirector,
        'cat_color': getStringColor(wordColor1),
        'name': 'Movie Director',
        'cat_score': 0
      },
      {
        'audio_path': Audios.writer,
        'cat_id': 10,
        'image_path': Images.writer,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.writer
            : SpannishLanguagesText.writer,
        'cat_color': getStringColor(wordColor2),
        'name': 'Writer',
        'cat_score': 0
      },
      {
        'audio_path': Audios.translator,
        'cat_id': 10,
        'image_path': Images.translator,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.translator
            : SpannishLanguagesText.translator,
        'cat_color': getStringColor(wordColor3),
        'name': 'Translator',
        'cat_score': 0
      },
      {
        'audio_path': Audios.artist,
        'cat_id': 10,
        'image_path': Images.artist,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.artist
            : SpannishLanguagesText.artist,
        'cat_color': getStringColor(wordColor4),
        'name': 'Artist',
        'cat_score': 0
      },
      {
        'audio_path': Audios.tvAnchor,
        'cat_id': 10,
        'image_path': Images.tvAnchor,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.tvAnchor
            : SpannishLanguagesText.tvAnchor,
        'cat_color': getStringColor(wordColor5),
        'name': 'Tv Anchor',
        'cat_score': 0
      },
      {
        'audio_path': Audios.barista,
        'cat_id': 10,
        'image_path': Images.barista,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.barista
            : SpannishLanguagesText.barista,
        'cat_color': getStringColor(wordColor6),
        'name': 'Barista',
        'cat_score': 0
      },
      {
        'audio_path': Audios.nurse,
        'cat_id': 10,
        'image_path': Images.nurse,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.nurse
            : SpannishLanguagesText.nurse,
        'cat_color': getStringColor(wordColor7),
        'name': 'Nurse',
        'cat_score': 0
      },
      {
        'audio_path': Audios.diplomat,
        'cat_id': 10,
        'image_path': Images.diplomat,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.diplomat
            : SpannishLanguagesText.diplomat,
        'cat_color': getStringColor(wordColor8),
        'name': 'Diplomat',
        'cat_score': 0
      },
      {
        'audio_path': Audios.dancer,
        'cat_id': 10,
        'image_path': Images.dancer,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.dancer
            : SpannishLanguagesText.dancer,
        'cat_color': getStringColor(wordColor9),
        'name': 'Dancer',
        'cat_score': 0
      },
      {
        'audio_path': Audios.singer,
        'cat_id': 10,
        'image_path': Images.singer,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.singer
            : SpannishLanguagesText.singer,
        'cat_color': getStringColor(wordColor1),
        'name': 'Singer',
        'cat_score': 0
      },
      {
        'audio_path': Audios.athlete,
        'cat_id': 10,
        'image_path': Images.athlete,
        'origin_name': getGameLanguage()
            ? KoreanLanguagesText.athlete
            : SpannishLanguagesText.athlete,
        'cat_color': getStringColor(wordColor2),
        'name': 'Athlete',
        'cat_score': 0
      }
    ]
  };

  // *********** games_list ***********
  static final gamesList = {
    "data": [
      {
        "name": "True And False",
        "image_path": Images.gameTrueFalse,
        "route": "/true_false",
        "color": getStringColor(trueGameColor),
        'req_words': 1
      },
      {
        "name": "Select Image Easy",
        "image_path": Images.gameSelectImage,
        "route": "/choose_image_2x2",
        "color": getStringColor(selectGameColor),
        'req_words': 4
      },
      {
        "name": "Select Image Medium",
        "image_path": Images.gameSelectImage,
        "route": "/choose_image_3x3",
        "color": getStringColor(selectGameColor),
        'req_words': 9
      },
      {
        "name": "Select Image Hard",
        "image_path": Images.gameSelectImage,
        "route": "/choose_image_4x4",
        "color": getStringColor(selectGameColor),
        'req_words': 16
      },
      {
        "name": "Guess Word Easy",
        "image_path": Images.gameGuessWord,
        "route": "/flip_card_2x2",
        "color": getStringColor(flippingGameColor),
        'req_words': 4
      },
      {
        "name": "Guess Word Medium",
        "image_path": Images.gameGuessWord,
        "route": "/flip_card_3x3",
        "color": getStringColor(flippingGameColor),
        'req_words': 9
      },
      {
        "name": "Guess Word Hard",
        "image_path": Images.gameGuessWord,
        "route": "/flip_card_4x4",
        "color": getStringColor(flippingGameColor),
        'req_words': 16
      },
      {
        "name": "Connect Words Medium",
        "image_path": Images.gameMatch,
        "route": "/matching_circled",
        "color": getStringColor(wordMatchingGame),
        'req_words': 4
      },
      {
        "name": "Connect Words Hard",
        "image_path": Images.gameMatch,
        "route": "/matching_square",
        "color": getStringColor(wordMatchingGame),
        'req_words': 8
      },
    ]
  };
  // ************** games_widgets ********
  static final cosntCategory = Categories(
      catUserid: 0,
      catOpened: 0,
      catName: '',
      catProfImg: '',
      catBadge: '',
      catPercentage: '',
      catColor: '',
      route: '',
      catScore: 0);
  static final List<Map<String, dynamic>> gamesWidgets = [
    {
      "id": 1,
      "widget": TrueAndFalseGamePage(),
    },
    {
      "id": 2,
      "widget": HomeChooseImage(),
    },
    {
      "id": 3,
      "widget": HomeChooseImage3(),
    },
    {
      "id": 4,
      "widget": HomeChooseImage4(),
    },
    {
      "id": 5,
      "widget": HomeFlipingCards2x2(),
    },
    {
      "id": 6,
      "widget": HomeFlipingCard3(),
    },
    {
      "id": 7,
      "widget": HomeFlipingCard4x4(),
    },
    {
      "id": 8,
      "widget": HomeMatchCircles(),
    },
    {
      "id": 9,
      "widget": HomeSquareMatching(),
    },
  ];
}

String getStringColor(Color color) {
  var di = color.toString();
  const start = "Color(";
  const end = ")";

  final startIndex = di.indexOf(start);
  final endIndex = di.indexOf(end, startIndex + start.length);
  var fnlColorString = di.substring(startIndex + start.length, endIndex);
  return fnlColorString;
}

bool getGameLanguage() {
  var appName = AppConfig.instance.appValues!.dbName;
  if (appName == 'learningkorean.db') {
    print('trueeeeeeeeee');
  } else {
    print('falseeeeeeeeeee');
  }
  return appName == 'learningkorean.db' ? true : false;
}
