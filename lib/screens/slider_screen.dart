import 'package:componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders & Checks'),
      ),
      body: Column(children: [
        Slider.adaptive(
            value: _sliderValue,
            min: 50,
            max: 500,
            onChanged: _sliderEnabled
                ? (value) {
                    _sliderValue = value;
                    setState(() {});
                  }
                : null),
        /*  Checkbox(
            value: _sliderEnabled,
            onChanged: (value) {
              _sliderEnabled = value ?? true;
              setState(() {});
            }),*/
        // Switch(
        //   value: _sliderEnabled,
        //   onChanged: (value) => setState(() {
        //     _sliderEnabled = value;
        //   }),
        // ),
        CheckboxListTile(
          activeColor: AppTheme.primary,
          value: _sliderEnabled,
          title: const Text('Hablitar Slider'),
          onChanged: (value) => setState(
            () {
              _sliderEnabled = value ?? true;
            },
          ),
        ),
        SwitchListTile.adaptive(
          value: _sliderEnabled,
          title: const Text('Hablitar Slider'),
          onChanged: (value) => setState(() {
            _sliderEnabled = value;
          }),
        ),

        const AboutListTile(),
        Expanded(
          child: SingleChildScrollView(
            child: Image(
              image: const NetworkImage(
                "https://www.nicepng.com/png/full/433-4336827_banner-batman-from-the-animated-animado-dibujos-de.png",
              ),
              fit: BoxFit.contain,
              width: _sliderValue,
            ),
          ),
        ),
      ]),
    );
  }
}
