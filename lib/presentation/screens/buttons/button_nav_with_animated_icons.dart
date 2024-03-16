import 'package:app_widgets/data/models/nav_item_model.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

const Color bottonNavBgColor = Color(0xFF17203A);

class ButtonNavWithAnimatedIcons extends StatefulWidget {
  const ButtonNavWithAnimatedIcons({
    super.key,
  });

  @override
  State<ButtonNavWithAnimatedIcons> createState() =>
      _ButtonNavWithAnimatedIconsState();
}

class _ButtonNavWithAnimatedIconsState
    extends State<ButtonNavWithAnimatedIcons> {
  List<SMIBool> riveIconInputs = [];
  List<StateMachineController?> controllers = [];
  List<String> pages = ["Chat", "Search", "History", "Notification", "Profile"];
  int selectedNavIndex = 0;

  void animateTheIcon(int index) {
    riveIconInputs[index].change(true);
    Future.delayed(const Duration(seconds: 1), () {
      riveIconInputs[index].change(false);
    });
  }

  void riveOnInit(Artboard artboard, {required String stateMachineName}) {
    StateMachineController? controller =
        StateMachineController.fromArtboard(artboard, stateMachineName);

    artboard.addController(controller!);
    controllers.add(controller);

    riveIconInputs.add(controller.findInput<bool>("active") as SMIBool);
  }

  @override
  void dispose() {
    for (var controller in controllers) {
      controller?.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Center(child: Text(pages[selectedNavIndex])),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.all(12),
            margin: const EdgeInsets.symmetric(horizontal: 24),
            decoration: BoxDecoration(
              color: bottonNavBgColor.withOpacity(0.8),
              borderRadius: const BorderRadius.all(Radius.circular(24)),
              boxShadow: [
                BoxShadow(
                  color: bottonNavBgColor.withOpacity(0.3),
                  blurRadius: 20,
                  offset: const Offset(0, 20),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(
                bottomNavItems.length,
                (index) {
                  final riveIcon = bottomNavItems[index].rive;

                  return GestureDetector(
                    onTap: () {
                      animateTheIcon(index);
                      setState(() {
                        selectedNavIndex = index;
                      });
                    },
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        AnimatedBar(isActive: selectedNavIndex == index),
                        SizedBox(
                          height: 36,
                          width: 36,
                          child: Opacity(
                            opacity: selectedNavIndex == index ? 1 : 0.5,
                            child: RiveAnimation.asset(
                              riveIcon.src,
                              artboard: riveIcon.artBoard,
                              onInit: (artBoard) {
                                riveOnInit(artBoard,
                                    stateMachineName:
                                        riveIcon.stateMachineName);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AnimatedBar extends StatelessWidget {
  const AnimatedBar({
    super.key,
    required this.isActive,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(bottom: 2),
      height: 4,
      width: isActive ? 20 : 0,
      decoration: const BoxDecoration(
          color: Color(0xFF81B4FF),
          borderRadius: BorderRadius.all(Radius.circular(12))),
    );
  }
}
