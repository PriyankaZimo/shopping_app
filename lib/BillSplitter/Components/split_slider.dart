import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app/BillSplitter/Provider/slider_provider.dart';

class SplitSlider extends StatelessWidget {
  late SliderProvider sliderProvider;

  @override
  Widget build(BuildContext context) {
    sliderProvider = context.read<SliderProvider>();
    return Container(
      padding: EdgeInsets.only(
        left: 20,
      ),
      child: Consumer<SliderProvider>(
        builder: (context, val, child) => Column(
          children: [
            Row(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white38)),
                  child: Image.network(
                    'https://cdn-icons-png.flaticon.com/512/219/219961.png',
                    scale: 10,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Me',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    '\$1356.2',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 18.0,
                  activeTrackColor: Color(0xFF9cc5f3),
                  inactiveTrackColor: Color(0xFF383357),
                  thumbShape: const RoundSliderThumbShape(
                    enabledThumbRadius: 18.0,
                    pressedElevation: 8.0,
                  ),
                  thumbColor: Color(0xFFf1c38e),
                  overlayColor: Colors.white,
                  overlayShape:
                      const RoundSliderOverlayShape(overlayRadius: 20.0),
                  tickMarkShape: RoundSliderTickMarkShape(),
                  activeTickMarkColor: Colors.white,
                  inactiveTickMarkColor: Colors.white,
                  valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                  valueIndicatorColor: Colors.black,
                  valueIndicatorTextStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                child: Slider(
                    value: val.firstSliderValue,
                    max: 100,
                    label: val.firstSliderValue.round().toString(),
                    onChanged: (value) {
                      val.firstSliderValue = value;
                      val.notifyListeners();
                    })),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white38)),
                  child: Image.network(
                    'https://cdn-icons-png.flaticon.com/512/219/219961.png',
                    scale: 12,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Cody',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    '\$1356.2',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 18.0,
                  activeTrackColor: Color(0xFFb59ced),
                  inactiveTrackColor: Color(0xFF383357),
                  thumbShape: const RoundSliderThumbShape(
                    enabledThumbRadius: 18.0,
                    pressedElevation: 8.0,
                  ),
                  thumbColor: Color(0xFFf1c38e),
                  overlayColor: Colors.white,
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
                  tickMarkShape: RoundSliderTickMarkShape(),
                  activeTickMarkColor: Colors.white,
                  inactiveTickMarkColor: Colors.white,
                  valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                  valueIndicatorColor: Colors.black,
                  valueIndicatorTextStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                child: Slider(
                    value: val.secSliderValue,
                    max: 100,
                    label: val.secSliderValue.round().toString(),
                    onChanged: (value) {
                      val.secSliderValue = value;
                      val.notifyListeners();
                    })),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white38)),
                  child: Image.network(
                    'https://cdn-icons-png.flaticon.com/512/219/219961.png',
                    scale: 12,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Khalifa',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const Spacer(),
                const Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    '\$1356.2',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 18.0,
                  thumbShape: const RoundSliderThumbShape(
                    enabledThumbRadius: 18.0,
                    pressedElevation: 8.0,
                  ),
                  thumbColor: Color(0xFFf1c38e),
                  overlayColor: Colors.white,
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 20.0),
                  activeTrackColor: Color(0xFFf1aa9b),
                  inactiveTrackColor: Color(0xFF383357),
                  activeTickMarkColor: Colors.blue,
                  inactiveTickMarkColor: Colors.white,
                  valueIndicatorShape: PaddleSliderValueIndicatorShape(),
                  valueIndicatorColor: Colors.black,
                  valueIndicatorTextStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                child: Slider(
                    value: val.thirdSliderValue,
                    max: 100,
                    label: val.thirdSliderValue.round().toString(),
                    onChanged: (value) {
                      val.thirdSliderValue = value;
                      val.notifyListeners();
                    })),
            const SizedBox(
              height: 25,
            ),
            Container(
                height: 90,
                width: double.infinity,
                padding: EdgeInsets.only(left: 15),
                margin: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                    color: Color(0xFF383357),
                    borderRadius: BorderRadius.circular(80)),
                child: val.select
                    ? Row(
                        children: [
                          Container(
                            height: 60,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(0, 5),
                                    blurRadius: 5)
                              ],
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xFF49436c),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50))),
                              onPressed: () {
                                val.selectText(false);
                              },
                              child: const Text(
                                'Confirm split',
                                style: TextStyle(
                                    fontSize: 17, color: Color(0xFFf1c38e)),
                              ),
                            ),
                          ),
                          Text(
                            '    >>>>>>>>>  ',
                            style: TextStyle(
                                color: Color(0xFF77748e), fontSize: 25),
                          )
                        ],
                      )
                    : Row(
                        children: [
                          Container(
                            height: 60,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: const [
                                BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(0, 5),
                                    blurRadius: 5)
                              ],
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Color(0xFF49436c),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50))),
                              onPressed: () {
                                val.selectText(true);
                              },
                              child: const Icon(
                                Icons.check,
                                color: Color(0xFFf1c38e),
                              ),
                            ),
                          ),

                          // Image.network('https://cdn1.iconfinder.com/data/icons/arrows-set-1-2/512/12-512.png',scale: 13,color: Color(0xFF77748e),),
                        ],
                      ))
          ],
        ),
      ),
    );
  }
}
