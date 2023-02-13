import 'package:animated_floating_buttons/animated_floating_buttons.dart';
import 'package:flutter/material.dart';
import 'package:wowmomo/components/bottom_navbar.dart';
import 'package:wowmomo/components/fixed_navbar.dart';
import 'package:wowmomo/pages/home/scroll_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<bool> isSelected = [true, false];

  void togglestateHandler(newIndex) {
    setState(() {
      for (int index = 0; index < isSelected.length; index++) {
        if (index == newIndex) {
          isSelected[index] = true;
        } else {
          isSelected[index] = false;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavbar(),
        floatingActionButton: AnimatedFloatingActionButton(
            //Fab list
            fabButtons: <Widget>[float1(), float2()],
            // key: key,
            // colorStartAnimation: Colors.blue,
            colorEndAnimation: Colors.red,
            animatedIconData: AnimatedIcons.menu_close //To principal button
            ),
        //  FloatingActionButton(
        //     onPressed: () {},
        //     child: Container(
        //       height: 400,
        //       width: 400,
        //       decoration: const BoxDecoration(
        //         image: DecorationImage(
        //           image: AssetImage("assets/images/logo.png"),
        //           opacity: 0.3,
        //           fit: BoxFit.fill,
        //         ),
        //       ),
        //       child: const Icon(
        //         Icons.more_horiz,
        //         size: 50,
        //         color: Colors.white,
        //       ),
        //     )),
        body: SizedBox(
            width: double.infinity,
            // height: MediaQuery.of(context).size.height,
            height: MediaQuery.of(context).size.height,
            // color: Colors.red,
            child: Stack(
              children: [
                ScrollPage(
                    togglestateHandler: togglestateHandler,
                    isSelected: isSelected,
                    index: isSelected[0] ? 0 : 1),
                FixedNavbar(),
              ],
            )));
  }
}

@immutable
class ExpandableFab extends StatefulWidget {
  const ExpandableFab({
    super.key,
    this.initialOpen,
    required this.distance,
    required this.children,
  });

  final bool? initialOpen;
  final double distance;
  final List<Widget> children;

  @override
  State<ExpandableFab> createState() => _ExpandableFabState();
}

class _ExpandableFabState extends State<ExpandableFab> {
  bool _open = false;

  @override
  void initState() {
    super.initState();
    _open = widget.initialOpen ?? false;
  }

  void _toggle() {
    setState(() {
      _open = !_open;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Stack(
        alignment: Alignment.bottomRight,
        clipBehavior: Clip.none,
        children: [
          _buildTapToCloseFab(),
          _buildTapToOpenFab(),
        ],
      ),
    );
  }

  Widget _buildTapToCloseFab() {
    return SizedBox(
      width: 56.0,
      height: 56.0,
      child: Center(
        child: Material(
          shape: const CircleBorder(),
          clipBehavior: Clip.antiAlias,
          elevation: 4.0,
          child: InkWell(
            onTap: _toggle,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.close,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTapToOpenFab() {
    return IgnorePointer(
      ignoring: _open,
      child: AnimatedContainer(
        transformAlignment: Alignment.center,
        transform: Matrix4.diagonal3Values(
          _open ? 0.7 : 1.0,
          _open ? 0.7 : 1.0,
          1.0,
        ),
        duration: const Duration(milliseconds: 250),
        curve: const Interval(0.0, 0.5, curve: Curves.easeOut),
        child: AnimatedOpacity(
          opacity: _open ? 0.0 : 1.0,
          curve: const Interval(0.25, 1.0, curve: Curves.easeInOut),
          duration: const Duration(milliseconds: 250),
          child: FloatingActionButton(
            onPressed: _toggle,
            child: const Icon(Icons.create),
          ),
        ),
      ),
    );
  }
}

Widget float1() {
  return Container(
    child: FloatingActionButton(
      onPressed: null,
      heroTag: "btn1",
      tooltip: 'First button',
      child: Icon(Icons.add),
    ),
  );
}

Widget float2() {
  return Container(
    child: FloatingActionButton(
      onPressed: null,
      heroTag: "btn2",
      tooltip: 'Second button',
      child: Icon(Icons.add),
    ),
  );
}
