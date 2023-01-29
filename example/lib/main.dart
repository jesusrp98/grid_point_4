import 'package:flutter/material.dart';
import 'package:grid_point_4/grid_point_4.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '4-Point Grid',
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('4-Point Grid'),
        ),
        body: ListView(
          children: const [
            _SizedColoredBox(GridSpacing.s4),
            _SizedColoredBox(GridSpacing.s8),
            _SizedColoredBox(GridSpacing.s12),
            _SizedColoredBox(GridSpacing.s16),
            _SizedColoredBox(GridSpacing.s20),
            _SizedColoredBox(GridSpacing.s24),
            _SizedColoredBox(GridSpacing.s28),
            _SizedColoredBox(GridSpacing.s32),
            _SizedColoredBox(GridSpacing.s36),
            _SizedColoredBox(GridSpacing.s40),
            _SizedColoredBox(GridSpacing.s44),
            _SizedColoredBox(GridSpacing.s48),
            _SizedColoredBox(GridSpacing.s52),
            _SizedColoredBox(GridSpacing.s56),
            _SizedColoredBox(GridSpacing.s60),
            _SizedColoredBox(GridSpacing.s64),
            _SizedColoredBox(GridSpacing.s68),
            _SizedColoredBox(GridSpacing.s72),
            _SizedColoredBox(GridSpacing.s76),
            _SizedColoredBox(GridSpacing.s80),
            _SizedColoredBox(GridSpacing.s84),
            _SizedColoredBox(GridSpacing.s88),
            _SizedColoredBox(GridSpacing.s92),
            _SizedColoredBox(GridSpacing.s96),
          ].separateWith(GridSpacing.gap16),
        ),
      ),
    );
  }
}

class _SizedColoredBox extends StatelessWidget {
  final double dimension;

  const _SizedColoredBox(this.dimension);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: dimension,
      child: ColoredBox(
        color: Theme.of(context).colorScheme.primary,
        child: dimension > GridSpacing.s16
            ? Center(
                child: Text(
                  dimension.toInt().toString(),
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ),
              )
            : null,
      ),
    );
  }
}
