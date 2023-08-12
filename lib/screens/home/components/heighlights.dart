import 'package:flutter/material.dart';
import 'package:flutter_profile/components/animated_counter.dart';
import 'package:flutter_profile/responsive.dart';

import '../../../constants.dart';
import 'heigh_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    HeighLight(
                      counter: AnimatedCounter(
                        value: 3,
                        text: "+",
                      ),
                      label: "Web Projects",
                    ),
                  ],
                ),
                const SizedBox(height: defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 7,
                        text: "+",
                      ),
                      label: "Flutter Projects",
                    ),

                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeighLight(
                      counter: AnimatedCounter(
                        value: 10,
                        text: "+",
                      ),
                      label: "GitHub Projects",
                    ),

                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                HeighLight(
                  counter: AnimatedCounter(
                    value: 3,
                    text: "+",
                  ),
                  label: "Web Projects",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 7,
                    text: "+",
                  ),
                  label: "Flutter Projects",
                ),
                HeighLight(
                  counter: AnimatedCounter(
                    value: 10,
                    text: "+",
                  ),
                  label: "GitHub Projects",
                ),
              ],
            ),
    );
  }
}
