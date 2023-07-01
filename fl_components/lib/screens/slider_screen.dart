import 'package:fl_components/theme/app_theme.dart';
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
          title: const Text('Slider Screen'),
        ),
        body: Column(
          children: [
            Slider.adaptive(
                value: _sliderValue,
                min: 0,
                max: 500,
                activeColor: AppTheme.primaryColor,
                onChanged: !_sliderEnabled
                    ? null
                    : (value) {
                        setState(() {
                          _sliderValue = value;
                        });
                      }),
            // Checkbox(
            //     value: _sliderEnabled,
            //     activeColor: AppTheme.primaryColor,
            //     onChanged: (value) =>
            //         setState(() => _sliderEnabled = value ?? true)),
            CheckboxListTile.adaptive(
                value: _sliderEnabled,
                activeColor: AppTheme.primaryColor,
                title: const Text('Enable Slider'),
                onChanged: (value) =>
                    setState(() => _sliderEnabled = value ?? true)),
            // Switch(
            //     value: _sliderEnabled,
            //     activeColor: AppTheme.primaryColor,
            //     onChanged: (value) => setState(() => _sliderEnabled = value)),
            SwitchListTile(
                value: _sliderEnabled,
                activeColor: AppTheme.primaryColor,
                title: const Text('Enable Slider'),
                onChanged: (value) => setState(() => _sliderEnabled = value)),

            const AboutListTile(),
            Expanded(
              child: SingleChildScrollView(
                child: Image(
                  image: const NetworkImage(
                      'https://cdn.pixabay.com/photo/2020/07/06/17/51/batman-5377804_1280.png'),
                  fit: BoxFit.contain,
                  width: _sliderValue,
                ),
              ),
            )
          ],
        ));
  }
}
