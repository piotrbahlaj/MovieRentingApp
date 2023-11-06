import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:projekt_testowy/drawer.dart';
import 'package:projekt_testowy/utilities/bottom_navigation_bar.dart';
import 'package:projekt_testowy/utilities/custom_appbar.dart';
import 'package:projekt_testowy/utilities/list_view_container.dart';
import 'package:projekt_testowy/utilities/page_view_container.dart';
import 'package:projekt_testowy/utilities/row_filters.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: UITest(),
  ));
}

class UITest extends StatefulWidget {
  const UITest({super.key});

  @override
  State<UITest> createState() => _UITestState();
}

class _UITestState extends State<UITest> {
  @override
  Widget build(BuildContext context) {
    //date format
    DateTime now = DateTime.now();
    String time = DateFormat.yMMMd().format(now);

    return Scaffold(
      bottomNavigationBar: const CustomNavigationBar(),
      backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
      appBar: customAppBar(),
      drawer: const MyDrawer(),
      body: SafeArea(
        //top container with title and search bar
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              //title and notification icon
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'What is on',
                        style: GoogleFonts.poppins(
                          color: Colors.black87,
                          fontSize: 23,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromRGBO(244, 243, 243, 1),
                          ),
                          child: const Icon(
                            Icons.notifications,
                            color: Colors.black87,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Your mind',
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 33,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(time)
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  // search bar
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(244, 243, 243, 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Colors.black87,
                        ),
                        hintText: 'What are we watching today?',
                        hintStyle: GoogleFonts.lato(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            // Filters
            const RowFilters(),
            const SizedBox(
              height: 15,
            ),
            // Item selection
            SizedBox(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                children: const [
                  PageViewContainer(
                    imageUrl:
                        'https://sportshub.cbsistatic.com/i/2021/08/04/f6b6891f-98bd-49be-992c-25aaf8560fad/dune-posters-1276200.jpg',
                  ),
                  PageViewContainer(
                    imageUrl:
                        'https://i.ebayimg.com/images/g/lVMAAOSwhQheYrmk/s-l1600.jpg',
                  ),
                  PageViewContainer(
                    imageUrl:
                        'https://m.media-amazon.com/images/I/51BANINoAxL._AC_.jpg',
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
              child: Text(
                'Recommended for you',
                style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ListViewContainer(
                    title: 'Avengers: Infinity War',
                    imageUrl:
                        'https://img.buzzfeed.com/buzzfeed-static/static/2018-05/4/7/enhanced/buzzfeed-prod-web-05/enhanced-buzz-15243-1525432710-0.jpg?output-format=auto&output-quality=auto',
                  ),
                  ListViewContainer(
                    title: 'Black Panther',
                    imageUrl:
                        'https://img.buzzfeed.com/buzzfeed-static/static/2018-05/4/7/enhanced/buzzfeed-prod-web-02/enhanced-buzz-7788-1525432689-0.jpg?output-format=auto&output-quality=auto',
                  ),
                  ListViewContainer(
                    title: 'Ready Player One',
                    imageUrl:
                        'https://img.buzzfeed.com/buzzfeed-static/static/2018-05/4/7/enhanced/buzzfeed-prod-web-02/enhanced-buzz-7965-1525432736-0.jpg?output-format=auto&output-quality=auto',
                  ),
                  ListViewContainer(
                    title: 'A wrinkle in time',
                    imageUrl:
                        'https://img.buzzfeed.com/buzzfeed-static/static/2018-05/4/7/enhanced/buzzfeed-prod-web-01/enhanced-buzz-32398-1525433264-0.jpg?output-format=auto&output-quality=auto',
                  ),
                  ListViewContainer(
                    title: 'Mute',
                    imageUrl:
                        'https://img.buzzfeed.com/buzzfeed-static/static/2018-05/4/7/enhanced/buzzfeed-prod-web-03/enhanced-buzz-831-1525433277-0.jpg?output-format=auto&output-quality=auto',
                  ),
                  ListViewContainer(
                    title: 'Love, Simon',
                    imageUrl:
                        'https://img.buzzfeed.com/buzzfeed-static/static/2018-05/4/7/enhanced/buzzfeed-prod-web-01/enhanced-buzz-30857-1525432773-0.jpg?output-format=auto&output-quality=auto',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
