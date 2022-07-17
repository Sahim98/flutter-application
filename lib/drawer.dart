import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/AcidAttack.dart';
import 'package:flutter_application_1/Choking.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

void main() {
  runApp(Situation());
}

class Situation extends StatefulWidget {
  @override
  _SituationState createState() => _SituationState();
}

class _SituationState extends State<Situation> {
  GlobalKey<SliderDrawerState> _key = GlobalKey<SliderDrawerState>();
  late String title;

  @override
  void initState() {
    title = "Home";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SliderDrawer(
            appBar: SliderAppBar(
                appBarColor: Colors.white,
                title: Text(title,
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.w700))),
            key: _key,
            sliderOpenSize: 179,
            slider: _SliderView(
              onItemClick: (title) {
                _key.currentState!.closeSlider();
                setState(() {
                  this.title = title;
                });
              },
            ),
            child: _AuthorList()),
      ),
    );
  }
}

class _SliderView extends StatelessWidget {
  final Function(String)? onItemClick;

  const _SliderView({Key? key, this.onItemClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          CircleAvatar(
            radius: 65,
            backgroundColor: Colors.grey,
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/images/user_profile.jpg'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'User',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                fontFamily: 'BalsamiqSans'),
          ),
          SizedBox(
            height: 20,
          ),
          _SliderMenuItem(
              title: 'Home', iconData: Icons.home, onTap: onItemClick),
          _SliderMenuItem(
              title: 'First aid',
              iconData: Icons.add_circle,
              onTap: onItemClick),
          _SliderMenuItem(
              title: 'Notification',
              iconData: Icons.notifications_active,
              onTap: onItemClick),
          _SliderMenuItem(
              title: 'Map', iconData: Icons.location_on, onTap: onItemClick),
          _SliderMenuItem(
              title: 'Emergency helpline',
              iconData: Icons.call,
              onTap: onItemClick),
          _SliderMenuItem(
              title: 'Setting', iconData: Icons.settings, onTap: onItemClick),
          _SliderMenuItem(
              title: 'LogOut',
              iconData: Icons.arrow_back_ios,
              onTap: onItemClick),
        ],
      ),
    );
  }
}

class _SliderMenuItem extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Function(String)? onTap;

  const _SliderMenuItem(
      {Key? key,
      required this.title,
      required this.iconData,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(title,
            style: TextStyle(
                color: Colors.black, fontFamily: 'BalsamiqSans_Regular')),
        leading: Icon(iconData, color: Colors.black),
        onTap: () => onTap?.call(title));
  }
}

class _AuthorList extends StatefulWidget {
  @override
  State<_AuthorList> createState() => _AuthorListState();
}

class _AuthorListState extends State<_AuthorList> {
  @override
  Widget build(BuildContext context) {
    List<Data> dataList = [];
    List cls = [Choking(), AcidAttack()];
    dataList.add(Data(Colors.green, 'Choking'));
    dataList.add(Data(Colors.green, 'Acid attack'));
    dataList.add(Data(Colors.green, 'Burining'));
    dataList.add(Data(Colors.green, 'Heart attack'));
    dataList.add(Data(Colors.green, 'Blood Pressure'));
    dataList.add(Data(Colors.green, 'Bleeding'));
    dataList.add(Data(Colors.green, 'Drowning'));
    dataList.add(Data(Colors.green, 'Poisoning'));
    dataList.add(Data(Colors.green, 'Head Injury'));
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView.separated(
          scrollDirection: Axis.vertical,
          physics: BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          itemBuilder: (builder, index) {
            return LimitedBox(
              maxHeight: 100,
              child: Container(
                decoration: new BoxDecoration(
                    color: dataList[index].color,
                    borderRadius: new BorderRadius.all(
                      const Radius.circular(10.0),
                    )),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            dataList[index].name,
                            style: TextStyle(
                                fontFamily: 'Cambria',
                                fontSize: 23,
                                color: Colors.white),
                          ),
                        ),
                        MaterialButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => cls[index]),
                            );
                          },
                          child: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (builder, index) {
            return Divider(
              height: 15,
              thickness: 0,
            );
          },
          itemCount: dataList.length),
    );
  }
}

class Data {
  MaterialColor color;
  String name;
  Data(this.color, this.name);
}

class ColoursHelper {
  static Color blue() => Color(0xff5e6ceb);

  static Color blueDark() => Color(0xff4D5DFB);
}
