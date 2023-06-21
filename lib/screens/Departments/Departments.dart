import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const departments());
}

class departments extends StatelessWidget {
  static String routeName = 'departments';

  const departments ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF345FB4),
          centerTitle: true,
          title: Text(
            'DEPARTMENTS',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          automaticallyImplyLeading: false,
          leadingWidth: 100,
          leading: ElevatedButton.icon(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_left_sharp),
            label: const Text('Back'),
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Color(0xFF345FB4),
            ),
          ),
        ),

        body: Column(

          children: <Widget>[

            const SizedBox(
              height: 35,
            ),
            Center(
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HomeCard(
                  onPress: () {
                    launch('https://uniq.edu.iq/Programme/2');
                  },
                  icon: 'assets/icons/pharmacy.svg',
                  title: 'Pharmacy',
                ),
                HomeCard(
                  onPress: () {
                    launch('https://uniq.edu.iq/Programme/6');
                  },
                  icon: 'assets/icons/lab.svg',
                  title: 'Medical Imaging',
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HomeCard(
                  onPress: () {
                    launch('https://uniq.edu.iq/Programme/1');
                  },
                  icon: 'assets/icons/nurse.svg',
                  title: 'Dental Imaging',
                ),
                HomeCard(
                  onPress: () {
                    launch('https://uniq.edu.iq/Programme/5');
                  },
                  icon: 'assets/icons/it.svg',
                  title: 'Computer Network',
                ),
              ],
            ),

            const SizedBox(
              height: 25,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                HomeCard(
                  onPress: () {
                    launch('https://uniq.edu.iq/Programme/9');
                  },
                  icon: 'assets/icons/busness.svg',
                  title: 'Business',
                ),
                HomeCard(
                  onPress: () {
                    launch('https://uniq.edu.iq/Programme/3');
                  },
                  icon: 'assets/icons/computer.svg',
                  title: 'Software Enginnering',
                ),
              ],
            ),

          ],
        ),

      ),
    );
  }
}




class HomeCard extends StatelessWidget {
  const HomeCard(
      {Key? key,
        required this.onPress,
        required this.icon,
        required this.title})
      : super(key: key);

  final VoidCallback onPress;
  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        child: Container(
          margin: EdgeInsets.all(9),
          child: InkWell(
            onTap: onPress,
            child: Ink(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFF345FB4),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    icon,
                    height: SizerUtil.deviceType == DeviceType.tablet
                        ? 37.sp
                        : 47.sp,
                    width: SizerUtil.deviceType == DeviceType.tablet
                        ? 30.sp
                        : 40.sp,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.subtitle2,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}