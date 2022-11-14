import 'package:flutter/material.dart';
import 'package:learn_flutter/screens/home_screen.dart';

class LearnFlutterScreen extends StatefulWidget {
  const LearnFlutterScreen({super.key});

  @override
  State<LearnFlutterScreen> createState() => _LearnFlutterScreenState();
}

class _LearnFlutterScreenState extends State<LearnFlutterScreen> {
  bool isShow = false;
  bool? isCheckBox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn flutter'),
        centerTitle: false,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            return Navigator.of(context).pop();
          },
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.access_time))],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
                'assets/images/albert-einstein-noi-ve-tam-linh-1629728070.jpeg'),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Colors.black,
            ),
            Container(
              color: Colors.black,
              width: double.infinity,
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
              padding: const EdgeInsets.all(5.0),
              child: const Text(
                "This is children",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: (() {
                debugPrint("row onclick");
              }),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  Icon(Icons.local_fire_department),
                  Text("Wiget"),
                  Icon(Icons.local_fire_department),
                ],
              ),
            ),
            Checkbox(
                value: isCheckBox,
                onChanged: (bool? newCheckBox) {
                  setState(() {
                    isCheckBox = newCheckBox;
                  });
                }),
            Switch(
                value: isShow,
                onChanged: (bool isChange) {
                  setState(() {
                    isShow = isChange;
                  });
                }),
            Image.network(
                "https://vanhoavaphattrien.vn/uploads/images/2021/08/23/albert-einstein-noi-ve-tam-linh-1629728070.jpeg"),
            Image.network(
                "https://vanhoavaphattrien.vn/uploads/images/2021/08/23/albert-einstein-noi-ve-tam-linh-1629728070.jpeg"),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: isShow ? Colors.black : Colors.blue,
                    ),
                    onPressed: () {
                      debugPrint("on click");
                    },
                    child: const Text("Click"),
                  ),
                  OutlinedButton(
                    // style: OutlinedButton.styleFrom(
                    //   textStyle: TextStyle(
                    //       color: isCheckBox ? Colors.black : Colors.blue),
                    // ),
                    onPressed: () {
                      debugPrint("on click");
                    },
                    child: const Text("Click"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
