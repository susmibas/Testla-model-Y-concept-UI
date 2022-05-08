import 'package:flutter/material.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage('lib/assets/5.png'),
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .5,
          fit: BoxFit.cover,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: MediaQuery.of(context).size.height * .4,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30))),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 18,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Select Interior",
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Black and White",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "\$1,000",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "All Black",
                            style: TextStyle(
                                color: Colors.black.withOpacity(.4),
                                fontSize: 25,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            "Included",
                            style: TextStyle(
                                color: Colors.black.withOpacity(.2),
                                fontSize: 25,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 18,
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.circle,
                            size: 40,
                            color: Colors.black.withOpacity(.2),
                          )),
                      IconButton(
                          onPressed: null,
                          icon: Icon(
                            Icons.circle,
                            size: 40,
                            color: Colors.black,
                          )),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "\$58,700",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 30,
                            fontWeight: FontWeight.w300),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        margin: const EdgeInsets.all(15.0),
                        padding: const EdgeInsets.symmetric(
                            vertical: 13.0, horizontal: 30),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: Colors.red),
                        ),
                        child: Text('NEXT'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
