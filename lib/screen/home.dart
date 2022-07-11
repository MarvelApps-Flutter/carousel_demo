import 'package:carousel_module/widget/pageview_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1D28),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top + 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Hello Afshin',
                        style: TextStyle(
                            fontFamily: 'NeueHaasDisplay',
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                      Text(
                        'Book your favourite movie',
                        style: TextStyle(
                            fontFamily: 'NeueHaasDisplay',
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey),
                      )
                    ],
                  ),
                  const Spacer(),
                  CircleAvatar(
                    radius: 25,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.network(
                        'https://dm.henkel-dam.com/is/image/henkel/men_perfect_com_thumbnails_home_pack_400x400-wcms-international?scl=1&fmt=jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              child: Container(
                height: 40,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  color: const Color(0xFF292A37),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Search',
                        style: TextStyle(
                            fontFamily: 'NeueHaasDisplay',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  'Featured Movies',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontFamily: 'NeueHaasDisplay',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.6,
              child: const PageViewWidget(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 60,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                const Icon(
                  Icons.home,
                  color: Colors.white,
                  size: 30,
                ),
                Container(
                  height: 5,
                  width: 5,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                )
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.explore,
                  color: Colors.grey.shade300,
                ),
                const SizedBox(
                  height: 5,
                  width: 5,
                )
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.ac_unit,
                  color: Colors.grey.shade300,
                ),
                const SizedBox(
                  height: 5,
                  width: 5,
                )
              ],
            ),
            Column(
              children: [
                Icon(
                  Icons.person,
                  color: Colors.grey.shade300,
                ),
                const SizedBox(
                  height: 5,
                  width: 5,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
