import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mr_and_mrs/constants/colours.dart';
import 'package:mr_and_mrs/widgets/headerwidget.dart';
import 'package:mr_and_mrs/widgets/logowidget.dart';
import 'package:mr_and_mrs/widgets/textwidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool ishover = false;
  Color hovercolor = Colors.black.withOpacity(0.2);
  int? hoverindex = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 50,
              color: Colors.grey[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Header(name: "LOGIN", onpress: () {}),
                  const SizedBox(
                    width: 10,
                  ),
                  Header(name: "MY CART", onpress: () {}),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.account_circle,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: const [
                      SizedBox(
                        width: 20,
                      ),
                      Logo(),
                    ],
                  ),
                  Row(
                    children: const [
                      CText(text: "ABOUT US", size: 12),
                      Separator(),
                      CText(text: "SHOP", size: 12),
                      Separator(),
                      CText(text: "COLLECTIONS", size: 12),
                      Separator(),
                      CText(text: "PROJECTS", size: 12),
                    ],
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.search,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 450,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "data:image/jpeg;base64,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"),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: const Center(
                      child: CText(
                    text: "FREE DELIVERY",
                    weight: FontWeight.bold,
                    size: 20,
                    color: Colors.black,
                  )),
                  height: 80,
                  width: 300,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black,
                  )),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  child: const Center(
                      child: CText(
                    text: "FREE REFUND POLICY",
                    weight: FontWeight.bold,
                    size: 20,
                    color: Colors.black,
                  )),
                  height: 80,
                  width: 300,
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.black,
                  )),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 400,
              child: StreamBuilder<QuerySnapshot>(
                stream: FirebaseFirestore.instance
                    .collection("category")
                    .snapshots(),
                builder: (context, snapshot) {
                  return GridView.builder(
                    itemCount: snapshot.data!.docs.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: MouseRegion(
                          onEnter: (event) {
                            setState(() {
                              hoverindex = index;
                            });
                          },
                          onExit: (event) {
                            setState(() {
                              hoverindex = null;
                            });
                          },
                          // onHover: (event) => print(event),
                          child: Container(
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CText(
                                    text: snapshot.data!.docs[index]['name']
                                        .toString()
                                        .toUpperCase(),
                                    size: hoverindex == index ? 30 : 22,
                                    color: Colors.white,
                                    weight: FontWeight.normal,
                                  ),
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  hoverindex == index
                                      ? Container(
                                          child: const Center(
                                            child: CText(
                                                text: "Explore",
                                                size: 20,
                                                color: Colors.white),
                                          ),
                                          height: 40,
                                          width: 120,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.white)),
                                        )
                                      : const SizedBox()
                                ],
                              ),
                            ),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        snapshot.data!.docs[index]['url']),
                                    fit: BoxFit.cover,
                                    colorFilter: ColorFilter.mode(
                                        hovercolor, BlendMode.dstATop))),
                            height: 100,
                            width: 100,
                          ),
                        ),
                      );
                    },
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4),
                  );
                },
              ),
            ),
            const Center(child: CText(text: "PRODUCT FEATURES", size: 20)),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: Container(
                color: Colors.grey[100],
                height: 900,
                width: 600,
                child: StreamBuilder<QuerySnapshot>(
                  stream: FirebaseFirestore.instance
                      .collection("products")
                      .snapshots(),
                  builder: (context, snapshot) {
                    return GridView.builder(
                      itemCount: snapshot.data!.docs.length,
                      scrollDirection: Axis.vertical,
                      itemBuilder: (context, index) {
                        return Padding(
                            padding: const EdgeInsets.only(
                                bottom: 10.0, left: 4, right: 4),
                            child: MouseRegion(
                              onEnter: (event) {
                                setState(() {
                                  hoverindex = index;
                                });
                              },
                              onExit: (event) {
                                setState(() {
                                  hoverindex = null;
                                });
                              },
                              child: Column(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.black,
                                        image: DecorationImage(
                                          image: NetworkImage(snapshot
                                              .data!.docs[index]['url']),
                                          fit: BoxFit.cover,
                                        )),
                                    height: 100,
                                    width: 100,
                                  ),
                                  CText(
                                    text: snapshot.data!.docs[index]['name']
                                        .toString()
                                        .toUpperCase(),
                                    size: hoverindex == index ? 15 : 10,
                                    color: Colors.black,
                                    weight: FontWeight.normal,
                                  ),
                                ],
                              ),
                            ));
                      },
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Separator extends StatelessWidget {
  const Separator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 20,
        ),
        Container(
          height: 30,
          color: Colors.black,
          width: 1,
        ),
        const SizedBox(
          width: 20,
        ),
      ],
    );
  }
}
