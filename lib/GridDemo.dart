import 'package:flutter/material.dart';

class GridDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Grid List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: GridView.count(
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this would produce 2 rows.
          crossAxisCount: 2,
          // Generate 100 Widgets that display their index in the List
          children: List.generate(100, (index) {
            return getGridItem(index, context);
          }),
          //  childAspectRatio: 0.5,
        ),
      ),
    );
  }


  Widget getGridItem(int index, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: new Card(
        child: Column(
          children: <Widget>[
            new Stack(
              children: <Widget>[
                new Image.network(
                  'https://github.com/flutter/website/blob/master/_includes/code/layout/lakes/images/lake.jpg?raw=true',
                  fit: BoxFit.fill,
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: <Widget>[

                      new Icon(
                          Icons.comment,
                          color: const Color(0xFF000000),
                          size: 24.0),

                      new Icon(
                          Icons.favorite,
                          color: const Color(0xFF000000),
                          size: 24.0),

                    ],
                  ),
                )


              ],
            ), //stack


            Padding(
              padding: const EdgeInsets.all(4.0),
              child: new Text(
                "Lorem ipsum is placeholder text commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.",
                style: new TextStyle(fontSize: 12.0,
                    color: const Color(0xFF000000),
                    fontWeight: FontWeight.w200,
                    fontFamily: "Roboto"),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),


          ],

        ),


      ),
    );
  }
}