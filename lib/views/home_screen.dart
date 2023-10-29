import 'package:flutter/material.dart';
import 'package:wallpaper_beats/data/data.dart';
import 'package:wallpaper_beats/models/category_model.dart';
import 'package:wallpaper_beats/widgets/category_tile.dart';
import 'package:wallpaper_beats/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<CategoryModel> categories = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories = getCategory();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: brandName(),
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0,
        ),
        body: SizedBox(
          child: Column(
            children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: GestureDetector(
                onTap: () {
                  ScaffoldMessenger.of(context)
                      .showSnackBar(const SnackBar(content: Text('touched')));
                },
                child: TextField(
                  enabled: false,
                  decoration: InputDecoration(
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    disabledBorder: searchBarDecoration(),
                    hintText: 'Search',
                    suffixIcon: const Icon(Icons.search),
                  ),
                ),
              ),
            ),
            Container(
              height: 80,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 24),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                return CategoryTile(imageUrl: categories[index].imageUrl, title: categories[index].categoryName, size: MediaQuery.sizeOf(context),);}, itemCount: categories.length),
            ),
          ]),
        ));
  }
}
