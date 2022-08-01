import 'package:facebook_messenger_ui/messenger_screen.dart';
import 'package:flutter/material.dart';

class FaceBookScreen extends StatefulWidget {
  FaceBookScreen({Key? key}) : super(key: key);

  @override
  State<FaceBookScreen> createState() => _FaceBookScreenState();
}

class _FaceBookScreenState extends State<FaceBookScreen> {
  List <Models>  models = [

  Models(image: "https://scontent.fcai19-7.fna.fbcdn.net/v/t39.30808-1/283787937_1461799470924893_7434805395622483887_n.jpg?stp=dst-jpg_s480x480&_nc_cat=103&ccb=1-7&_nc_sid=7206a8&_nc_ohc=WHTc29lmrmMAX_ElMXB&_nc_ht=scontent.fcai19-7.fna&oh=00_AT8xGZ_ZRDyMlU6vCryYX4MpnPDhpRVSYLdqNSQ2r-9d9w&oe=62EC5E6A", textPost: "hello every one", name: "Youssef Mohammed", story: false, active: true,time: "2 h ago."),
    Models(image: "https://scontent.fcai19-7.fna.fbcdn.net/v/t39.30808-1/257366889_949055509353475_3336170289681035711_n.jpg?stp=dst-jpg_p480x480&_nc_cat=107&ccb=1-7&_nc_sid=7206a8&_nc_ohc=9GQBC40KjQoAX8cdJtZ&_nc_ht=scontent.fcai19-7.fna&oh=00_AT9X9Tl-gOuocVxJDdnrllpqFWwGq7HWK5IceXM5LxohPQ&oe=62EB228C", textPost: "Hello", name: "Moaz Mohamed", story: true, active: true, time: "5 h ago."),
   Models(image: "https://scontent.fcai19-7.fna.fbcdn.net/v/t1.6435-1/116354126_2672973796283154_2858912572407362223_n.jpg?stp=dst-jpg_s480x480&_nc_cat=100&ccb=1-7&_nc_sid=7206a8&_nc_ohc=x7nq5ZYYCEIAX9Yj-kh&_nc_ht=scontent.fcai19-7.fna&oh=00_AT8RUzZ7GQ5e6GzsZRltGGSfNTlq1P8YGfeTGAecknNqQQ&oe=630D9B9A", textPost: "“Depression is like a heaviness that you can’t ever escape. It crushes down on you, making even the smallest things like tying your shoes or chewing on toast seem like a twenty-mile hike uphill. Depression is a part of you; it’s in your bones and your blood.”", name: "Ali Ezz", story:false, active:false, time: "2 min ago."),
   Models(image: "https://scontent.fcai19-7.fna.fbcdn.net/v/t1.6435-1/175359230_3936040943101761_8115425737055085014_n.jpg?stp=dst-jpg_p480x480&_nc_cat=101&ccb=1-7&_nc_sid=7206a8&_nc_ohc=23peRin-mYwAX94VZS2&_nc_ht=scontent.fcai19-7.fna&oh=00_AT9EW51xQF_abSGxHax_lm9a-6eFbw_XoLJF-5d7Hu_56w&oe=630CEC1A", textPost: "Hello every one ", name: "Amir Mohamed", story: true, active: true, time: "Just now."),
    Models(image: "https://scontent.fcai19-7.fna.fbcdn.net/v/t39.30808-6/296721391_633440878140873_5045470662541349587_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=9fN95_JUnc8AX8CE8B_&_nc_ht=scontent.fcai19-7.fna&oh=00_AT9wdLRBtqm-vS69x7Wxnodz1JGiT7LtCOa0skvPnyli9Q&oe=62EC7D12", textPost: "Hello", name: "Mohamed Salah", story: false, active: false, time:"2 days."),
    Models(image: "https://scontent.fcai19-7.fna.fbcdn.net/v/t1.6435-1/199385759_345470910277839_3988273979229903886_n.jpg?stp=dst-jpg_p480x480&_nc_cat=1&ccb=1-7&_nc_sid=c6021c&_nc_ohc=cDBoDpz6XHEAX9XvFBV&_nc_ht=scontent.fcai19-7.fna&oh=00_AT9Z08ytSHVs6zGzAwe6hHAcv9mw89w87d4hDZ7an6o5iA&oe=630CED85", textPost: "G O A T", name: "Leo Messi", story: true, active: true, time: "10 days ago."),


  ];

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

  Widget buildPostsList() {

    return Expanded(
      child: Container(
        height: 200,
        child: ListView.separated(

          itemBuilder: (context, index) =>  buildPostItem(index),
          itemCount:models.length,
          scrollDirection: Axis.vertical, separatorBuilder: (BuildContext context, int index) {
            return Divider(
              height: 5,
              color: Colors.grey[900],
              thickness: 10,
            );
        },
        ),
      ),
    );
  }

  Widget buildPostItem(index){
    return Container(
      decoration: const BoxDecoration(

          color: Colors.black54),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: Row(
              children: [

                 Stack(
                   alignment: AlignmentDirectional.bottomEnd,
                   children: [
                     Stack(
                       alignment: AlignmentDirectional.center,
                      children: [

                        Visibility(

                           visible: models[index].story,
                          child: CircleAvatar(
                            radius: 22,
                       backgroundColor: Colors.blue,
                           ),
                        ),

                        CircleAvatar(
                          radius: 20,
                          backgroundImage: NetworkImage(

                        models[index].image),
                        ),
                      ]
                       ,
                     ),
                     Stack(
                       alignment: AlignmentDirectional.bottomEnd,
                       children: [


                       Visibility(
                         visible: models[index].active,
                         child: CircleAvatar(
                           radius: 6,
                           backgroundColor: Colors.green,
                         ),
                       )

                     ],)
                   ],
                 ),
                Container(
                  margin: EdgeInsets.only(left: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        models[index].name,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      Text(
                        models[index].time,
                        style: TextStyle(color: Colors.grey, fontSize: 9),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_horiz_rounded,
                      color: Colors.grey,
                    )),
              ],
            ),
          ),

          Container(
              margin: EdgeInsets.only(left: 10,right: 5,bottom: 5),
              child:  Text(models[index].textPost,style: TextStyle(fontSize: 12,color: Colors.white),)),
          SizedBox(
            width: double.infinity,
            child: Image.network(
              models[index].image,
              fit: BoxFit.fill,
            ),
          ),
          Container(
            decoration: const BoxDecoration(
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
                    icon: const Icon(
                      Icons.favorite,
                      size: 15,
                      color: Colors.white,
                    ),
                    label: const Text(
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
                    icon: const Icon(
                      Icons.comment,
                      size: 15,
                      color: Colors.white,
                    ),
                    label: const Text(
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
                    icon: const Icon(
                      Icons.screen_share_outlined,
                      size: 15,
                      color: Colors.white,
                    ),
                    label: const Text(
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

  Widget buildAppbar() {

    return Container(
      color: Colors.grey[800],
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(5),
            child: Row(
              children: [
                const Icon(
                  Icons.facebook,
                  size: 35,
                  color: Colors.blue,
                ),
                const Text(
                  " facebook",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 32),
                ),
                const Spacer(),
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.grey[700],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.search,
                          size: 22,
                          color: Colors.white,
                        )),
                  ],
                ),
                const SizedBox(
                  width: 5,
                ),
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    CircleAvatar(
                      radius: 16,
                      backgroundColor: Colors.grey[700],
                    ),
                    IconButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => MessengerScreen()));

                        },
                        icon: const Icon(

                          Icons.message,
                          size: 20,
                          color: Colors.white,
                        )),
                  ],
                ),
              ],
            ),
          ),
          const DefaultTabController(
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
                      Icons.notifications_none,
                      color: Colors.white,
                    ),
                  ),
                  Tab(

                    child: CircleAvatar(
                      radius: 16,
                      backgroundImage: NetworkImage('https://scontent.fcai19-7.fna.fbcdn.net/v/t39.30808-1/283787937_1461799470924893_7434805395622483887_n.jpg?stp=dst-jpg_s480x480&_nc_cat=103&ccb=1-7&_nc_sid=7206a8&_nc_ohc=WHTc29lmrmMAX_ElMXB&_nc_ht=scontent.fcai19-7.fna&oh=00_AT8xGZ_ZRDyMlU6vCryYX4MpnPDhpRVSYLdqNSQ2r-9d9w&oe=62EC5E6A'),

                    ),

                  ),
                ]),
          ),
        ],
      ),
    );
  }

  Widget buildWritePost() {
    return Visibility(
      visible: true,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey[800],
            border: const Border(top: BorderSide(color: Colors.grey, width: 1),)),
        child: Container(
          margin: const EdgeInsets.all(5),
          child: Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://scontent.fcai19-7.fna.fbcdn.net/v/t39.30808-1/283787937_1461799470924893_7434805395622483887_n.jpg?stp=dst-jpg_s480x480&_nc_cat=103&ccb=1-7&_nc_sid=7206a8&_nc_ohc=WHTc29lmrmMAX_ElMXB&_nc_ht=scontent.fcai19-7.fna&oh=00_AT8xGZ_ZRDyMlU6vCryYX4MpnPDhpRVSYLdqNSQ2r-9d9w&oe=62EC5E6A"),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 8),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 1),
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.grey[800]),
                  child: Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.grey[800]),
                      child: const Text(
                        "What's in your mind",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      )),
                ),
              ),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.photo_album_outlined,
                    color: Colors.green,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}







class Models{

  String image;
 String textPost;
 String name;
 bool story;
 bool active;
 String time;

  Models({required this.image, required this.textPost, required this.name, required this.story, required this.active,required this.time});
}