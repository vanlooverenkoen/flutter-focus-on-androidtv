import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_tv/screen/movie_list_screen.dart';
import 'package:flutter_tv/screen/tv_show_list_screen.dart';
import 'package:flutter_tv/widget/side_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _selectedIndex = 0;

  late FocusScopeNode _screensFocusScopeNode;
  // late FocusScopeNode _menuFocusScopeNode;

  @override
  void initState() {
    _screensFocusScopeNode = FocusScopeNode(debugLabel: 'screens_focus_scope_node');
    // _menuFocusScopeNode = FocusScopeNode(debugLabel: 'menu_focus_scope_node');
    super.initState();
  }

  @override
  void dispose() {
    _screensFocusScopeNode.dispose();
    // _menuFocusScopeNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: WillPopScope(
        onWillPop: _onWillPop,
        child: Stack(
          children: [
            FocusScope(
              autofocus: true,
              node: _screensFocusScopeNode,
              // onKey: _onKeyForScreensFocusScope,
              child: Padding(
                padding: EdgeInsets.zero,
                // padding: const EdgeInsets.only(left: 16),
                child: Builder(builder: (context) {
                  switch (_selectedIndex) {
                    case 0:
                      return const MovieListScreen();
                    case 1:
                      return const TvShowListScreen();
                    default:
                      return const SizedBox();
                  }
                }),
              ),
            ),
            // Positioned.fill(
            //   child: AnimatedContainer(
            //     color: _menuFocusScopeNode.hasFocus ? Colors.black.withOpacity(0.5) : Colors.transparent,
            //     curve: Curves.easeInOut,
            //     duration: const Duration(milliseconds: 200),
            //   ),
            // ),
            // AnimatedPositioned(
            //   left: _menuFocusScopeNode.hasFocus ? 0 : -184,
            //   bottom: 0,
            //   top: 0,
            //   curve: Curves.easeInOut,
            //   duration: const Duration(milliseconds: 200),
            //   child: FocusScope(
            //     node: _menuFocusScopeNode,
            //     onKey: _onKeyForMenuFocusScope,
            //     child: SideMenu(
            //       onMovieListSelected: () => _updateSelectedIndex(0),
            //       onTvShowListSelected: () => _updateSelectedIndex(1),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
  //
  // KeyEventResult _onKeyForScreensFocusScope(FocusNode node, RawKeyEvent event) {
  //   if (event is RawKeyUpEvent || event.logicalKey != LogicalKeyboardKey.arrowLeft) return KeyEventResult.ignored;
  //   if (node is! FocusScopeNode) return KeyEventResult.ignored;
  //   if (_screensFocusScopeNode.focusInDirection(TraversalDirection.left)) return KeyEventResult.handled;
  //   _menuFocusScopeNode.requestFocus();
  //   setState(() {});
  //   return KeyEventResult.handled;
  // }

  // KeyEventResult _onKeyForMenuFocusScope(FocusNode node, RawKeyEvent event) {
  //   if (event is RawKeyUpEvent || event.logicalKey != LogicalKeyboardKey.arrowRight) return KeyEventResult.ignored;
  //   _screensFocusScopeNode.requestFocus();
  //   setState(() {});
  //   return KeyEventResult.handled;
  // }

  // void _updateSelectedIndex(int index) {
  //   _screensFocusScopeNode.requestFocus();
  //   setState(() => _selectedIndex = index);
  // }

  Future<bool> _onWillPop() async {
    // if (_menuFocusScopeNode.hasFocus) return false;
    // _menuFocusScopeNode.requestFocus();
    return false;
  }
}
