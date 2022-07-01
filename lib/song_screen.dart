import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'buttons/neu_button.dart';

class SongScreen extends StatefulWidget {
  const SongScreen({Key? key}) : super(key: key);

  @override
  State<SongScreen> createState() => _SongScreenState();
}

class _SongScreenState extends State<SongScreen> {
  bool image = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: SafeArea(
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        SizedBox(
                            height: 60,
                            width: 60,
                            child:
                                NeuButton(child: Icon(Icons.arrow_back_ios))),
                        Text('P L A Y  L I S T'),
                        SizedBox(
                            height: 60,
                            width: 60,
                            child: NeuButton(child: Icon(Icons.menu)))
                      ]),
                  const SizedBox(height: 10),
                  NeuButton(
                      child: Column(children: [
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: SizedBox(
                                height: 400,
                                child: Image.asset(
                                  image
                                      ? 'images/blindinglights.jpg'
                                      : 'images/Ren.jpg',
                                  fit: BoxFit.values[4],
                                )))),
                    Padding(
                        padding: const EdgeInsets.only(
                            left: 25.0, right: 25, bottom: 8),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 8),
                                    Text(image ? 'The Weekend' : 'Yoasobi',
                                        style: TextStyle(
                                            color: Colors.grey[800],
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18)),
                                    const SizedBox(height: 8),
                                    Text(
                                        image
                                            ? 'Blinding Lights'
                                            : 'Tabun  \"Probably\"',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22))
                                  ]),
                              const Icon(Icons.favorite,
                                  color: Colors.red, size: 32)
                            ]))
                  ])),
                  const SizedBox(height: 25),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(image ? '0:00' : '0:32'),
                        Icon(Icons.shuffle),
                        Icon(Icons.repeat),
                        Text(image ? '4:22' : '4:15')
                      ]),
                  const SizedBox(height: 20),
                  NeuButton(
                      child: LinearPercentIndicator(
                          lineHeight: 10,
                          percent: 0.8,
                          progressColor: Colors.cyan,
                          backgroundColor: Colors.transparent)),
                  const SizedBox(height: 30),
                  SizedBox(
                      height: 80,
                      child: Row(children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                image = true;
                              });
                            },
                            child: NeuButton(child: Icon(Icons.skip_previous)),
                          ),
                        ),
                        const Expanded(
                            flex: 2,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.0),
                              child: NeuButton(
                                  child: Icon(Icons.play_arrow, size: 32)),
                            )),
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                image = false;
                              });
                            },
                            child: NeuButton(child: Icon(Icons.skip_next)),
                          ),
                        )
                      ]))
                ]))));
  }
}
