import 'package:flutter/material.dart';

class FaceBookScreen extends StatelessWidget {
  const FaceBookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Colors.grey[700],
          child: Column(

            children: [buildAppbar(),
              buildWritePost(),
              buildPostsList()
            ],
          ),

        ),
      ),
    );
  }
}

Widget buildAppbar() {
  return Container(
    color: Colors.grey[800],
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.all(5),
          child: Row(
            children: [
              Icon(
                Icons.facebook,
                size: 35,
                color: Colors.blue,
              ),
              Text(
                " facebook",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 32),
              ),
              Spacer(),
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  CircleAvatar(
                    radius: 17,
                    backgroundColor: Colors.grey[700],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      )),
                ],
              ),
              SizedBox(
                width: 5,
              ),
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.grey[700],
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.message,
                        color: Colors.white,
                      )),
                ],
              ),
            ],
          ),
        ),
        DefaultTabController(
          length: 4,

          child: TabBar(
              automaticIndicatorColorAdjustment: false,
              labelColor: Colors.blue,
              indicatorColor: Colors.blue,

              tabs: [
            Tab(
              icon: Icon(
                Icons.home_filled,
                color: Colors.white,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.people_alt,
                color: Colors.white,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.white,
              ),
            ),
          ]),
        ),
      ],
    ),
  );
}

Widget buildWritePost() {
  return Container(
    decoration: BoxDecoration(
        color: Colors.grey[800],
        border: Border(top: BorderSide(color: Colors.grey, width: 1))),
    child: Container(
      margin: EdgeInsets.all(5),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                "https://d3j2s6hdd6a7rg.cloudfront.net/v2/uploads/media/default/0002/23/thumb_122243_default_news_size_5.jpeg"),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 8),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 1),
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.grey[800]),
              child: Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.grey[800]),
                  child: Text(
                    "What's in your mind",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  )),
            ),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.photo_album_outlined,
                color: Colors.green,
              ))
        ],
      ),
    ),
  );
}

Widget buildPostItem() {
  return Container(
    decoration: BoxDecoration(
        border: Border(
            top: BorderSide(color: Colors.black54, width: 5),
            bottom: BorderSide(color: Colors.black54, width: 5)),
        color: Colors.black54),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://d3j2s6hdd6a7rg.cloudfront.net/v2/uploads/media/default/0002/23/thumb_122243_default_news_size_5.jpeg"),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "  Mohamed Salah",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  Text(
                    "    2 hours ago.",
                    style: TextStyle(color: Colors.grey, fontSize: 9),
                  )
                ],
              ),
              Spacer(),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_horiz_rounded,
                    color: Colors.grey,
                  )),
            ],
          ),
        ),

        Container(
            margin: EdgeInsets.only(left: 10,right: 5,bottom: 5),
            child: Text("Mohamed Salah Hamed Mahrous Ghaly is an Egyptian professional footballer who plays as a forward or on the right wing for Premier League club Liverpool and captains the Egypt national team.",style: TextStyle(fontSize: 12,color: Colors.white),)),
        Container(
          width: double.infinity,
          child: Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPBF4FUn35cD1OJlatT8hDj1xU78KoOO52nw&usqp=CAU",
            fit: BoxFit.fill,
          ),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(
            color: Colors.grey,
            width: 1,
          ))),
          child: Row(
            children: [
              Expanded(
                child: TextButton.icon(
                  onPressed: () {
                    // Respond to button press
                  },
                  icon: Icon(
                    Icons.favorite,
                    size: 15,
                    color: Colors.white,
                  ),
                  label: Text(
                    "Like",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: TextButton.icon(
                  onPressed: () {
                    Colors.blue;
                    // Respond to button press
                  },
                  icon: Icon(
                    Icons.comment,
                    size: 15,
                    color: Colors.white,
                  ),
                  label: Text(
                    "Comment",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: TextButton.icon(
                  onPressed: () {
                    // Respond to button press
                  },
                  icon: Icon(
                    Icons.screen_share_outlined,
                    size: 15,
                    color: Colors.white,
                  ),
                  label: Text(
                    "Share",
                    style: TextStyle(fontSize: 13, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    ),
  );
}

Widget buildPostsList() {
  return Expanded(
    child: Container(
      height: 200,
      child: ListView.builder(
        itemBuilder: (context, index) => buildPostItem(),
        itemCount: 10,
        scrollDirection: Axis.vertical,
      ),
    ),
  );
}

