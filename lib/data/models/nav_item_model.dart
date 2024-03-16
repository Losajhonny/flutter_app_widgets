import 'package:app_widgets/data/models/rive_model.dart';

class NavItemModel {
  final String title;
  final RiveModel rive;

  NavItemModel({
    required this.title,
    required this.rive,
  });
}

List<NavItemModel> bottomNavItems = [
  NavItemModel(
    title: "Help",
    rive: RiveModel(
        src: "assets/animated-icons.riv",
        artBoard: "CHAT",
        stateMachineName: "CHAT_Interactivity"),
  ),
  // NavItemModel(
  //   title: "Home",
  //   rive: RiveModel(
  //       src: "assets/animated-icons.riv",
  //       artBoard: "HOME",
  //       stateMachineName: "HOME_interactivity"),
  // ),
  NavItemModel(
    title: "Search",
    rive: RiveModel(
        src: "assets/animated-icons.riv",
        artBoard: "SEARCH",
        stateMachineName: "SEARCH_Interactivity"),
  ),
  // NavItemModel(
  //   title: "Favorites",
  //   rive: RiveModel(
  //       src: "assets/animated-icons.riv",
  //       artBoard: "LIKE/STAR",
  //       stateMachineName: "STAR_Interactivity"),
  // ),
  NavItemModel(
    title: "History",
    rive: RiveModel(
        src: "assets/animated-icons.riv",
        artBoard: "TIMER",
        stateMachineName: "TIMER_Interactivity"),
  ),
  NavItemModel(
    title: "Notifications",
    rive: RiveModel(
        src: "assets/animated-icons.riv",
        artBoard: "BELL",
        stateMachineName: "BELL_Interactivity"),
  ),
  NavItemModel(
    title: "User",
    rive: RiveModel(
        src: "assets/animated-icons.riv",
        artBoard: "USER",
        stateMachineName: "USER_Interactivity"),
  ),
];
