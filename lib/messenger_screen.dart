


import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
 MessengerScreen({Key? key}) : super(key: key);

List<StoryModels> storyModels = [
  StoryModels(imageUrl: "https://scontent.fcai19-7.fna.fbcdn.net/v/t1.6435-1/116354126_2672973796283154_2858912572407362223_n.jpg?stp=dst-jpg_s480x480&_nc_cat=100&ccb=1-7&_nc_sid=7206a8&_nc_ohc=x7nq5ZYYCEIAX9Yj-kh&_nc_ht=scontent.fcai19-7.fna&oh=00_AT8RUzZ7GQ5e6GzsZRltGGSfNTlq1P8YGfeTGAecknNqQQ&oe=630D9B9A", story: true, active: false,firstName: "Ali",lastName: "Ezz"),
  StoryModels(imageUrl: "https://scontent.fcai19-7.fna.fbcdn.net/v/t39.30808-6/296721391_633440878140873_5045470662541349587_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=9fN95_JUnc8AX8CE8B_&_nc_ht=scontent.fcai19-7.fna&oh=00_AT9wdLRBtqm-vS69x7Wxnodz1JGiT7LtCOa0skvPnyli9Q&oe=62EC7D12", story: false, active: false,firstName: "Mohamed",lastName: "Salah"),
  StoryModels(imageUrl: "https://scontent.fcai19-7.fna.fbcdn.net/v/t1.6435-1/175359230_3936040943101761_8115425737055085014_n.jpg?stp=dst-jpg_p480x480&_nc_cat=101&ccb=1-7&_nc_sid=7206a8&_nc_ohc=23peRin-mYwAX94VZS2&_nc_ht=scontent.fcai19-7.fna&oh=00_AT9EW51xQF_abSGxHax_lm9a-6eFbw_XoLJF-5d7Hu_56w&oe=630CEC1A", story: true, active: true,firstName: "Amir",lastName: "Mohammed"),
  StoryModels(lastName: "Mohamed", firstName: "Moaz", imageUrl:"https://scontent.fcai19-7.fna.fbcdn.net/v/t39.30808-1/257366889_949055509353475_3336170289681035711_n.jpg?stp=dst-jpg_p480x480&_nc_cat=107&ccb=1-7&_nc_sid=7206a8&_nc_ohc=fWW1iclcmEMAX9odjJw&_nc_ht=scontent.fcai19-7.fna&oh=00_AT_ODDXsRgkHAqR8sDlVJXhkPlh82127rQ8ocXYjLfne0g&oe=62ED1CCC", story: true, active: true),
  StoryModels(lastName: "Messi", firstName: "Leo", imageUrl:"https://scontent.fcai19-7.fna.fbcdn.net/v/t1.6435-1/199385759_345470910277839_3988273979229903886_n.jpg?stp=dst-jpg_p480x480&_nc_cat=1&ccb=1-7&_nc_sid=c6021c&_nc_ohc=cDBoDpz6XHEAX9XvFBV&_nc_ht=scontent.fcai19-7.fna&oh=00_AT9Z08ytSHVs6zGzAwe6hHAcv9mw89w87d4hDZ7an6o5iA&oe=630CED85", story: true, active: false),


];
//
  //
List<ChatsModels> itemMessage = [
  ChatsModels(message: "Hello how are you now", imageUrl: "https://scontent.fcai19-7.fna.fbcdn.net/v/t1.6435-1/116354126_2672973796283154_2858912572407362223_n.jpg?stp=dst-jpg_s480x480&_nc_cat=100&ccb=1-7&_nc_sid=7206a8&_nc_ohc=x7nq5ZYYCEIAX9Yj-kh&_nc_ht=scontent.fcai19-7.fna&oh=00_AT8RUzZ7GQ5e6GzsZRltGGSfNTlq1P8YGfeTGAecknNqQQ&oe=630D9B9A", userName: "Ali Ezz", online: false, story: true, seen: false,time: "2 days"),
  ChatsModels(time: "2 min ago", message: "Hi, how are you", imageUrl: 'https://scontent.fcai19-7.fna.fbcdn.net/v/t39.30808-1/257366889_949055509353475_3336170289681035711_n.jpg?stp=dst-jpg_p480x480&_nc_cat=107&ccb=1-7&_nc_sid=7206a8&_nc_ohc=fWW1iclcmEMAX9odjJw&_nc_ht=scontent.fcai19-7.fna&oh=00_AT_ODDXsRgkHAqR8sDlVJXhkPlh82127rQ8ocXYjLfne0g&oe=62ED1CCC', userName: 'Moaz Mohammed', online: true, story: true, seen: true),
  ChatsModels(time: "Just now", message: "Hello", imageUrl: "https://scontent.fcai19-7.fna.fbcdn.net/v/t1.6435-1/175359230_3936040943101761_8115425737055085014_n.jpg?stp=dst-jpg_p480x480&_nc_cat=101&ccb=1-7&_nc_sid=7206a8&_nc_ohc=23peRin-mYwAX94VZS2&_nc_ht=scontent.fcai19-7.fna&oh=00_AT9EW51xQF_abSGxHax_lm9a-6eFbw_XoLJF-5d7Hu_56w&oe=630CEC1A", userName: "Amir Mohamed", online: false, story: false, seen:false),
  ChatsModels(time: "Just now", message: "Hiii", imageUrl: "https://scontent.fcai19-7.fna.fbcdn.net/v/t39.30808-6/296721391_633440878140873_5045470662541349587_n.jpg?_nc_cat=1&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=9fN95_JUnc8AX8CE8B_&_nc_ht=scontent.fcai19-7.fna&oh=00_AT9wdLRBtqm-vS69x7Wxnodz1JGiT7LtCOa0skvPnyli9Q&oe=62EC7D12", userName: "Mohamed Salah", online: true, story: true, seen: true),
  ChatsModels(time: "10 min", message: "G O  A T", imageUrl: "https://scontent.fcai19-7.fna.fbcdn.net/v/t1.6435-1/199385759_345470910277839_3988273979229903886_n.jpg?stp=dst-jpg_p480x480&_nc_cat=1&ccb=1-7&_nc_sid=c6021c&_nc_ohc=cDBoDpz6XHEAX9XvFBV&_nc_ht=scontent.fcai19-7.fna&oh=00_AT9Z08ytSHVs6zGzAwe6hHAcv9mw89w87d4hDZ7an6o5iA&oe=630CED85", userName: "Leo Messi", online: false, story: false, seen: false),



];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:  buildBottomNavigationBar(),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(10),
          child: Column(
            children: [
              userCustomAppbar(),
              buildCustomSearch(),
              buildStoriesRow(),

              Expanded(

                child:   ListView.builder(itemBuilder: (context,index) => buildChatsItem(index),
                  itemCount: itemMessage.length,

                  scrollDirection: Axis.vertical,

                ),
              )



            ],
          ),
        ),

      ),

    );

  }
  Widget buildAppBarIcons(IconData icon){
    return IconButton(onPressed: (){},
      icon: CircleAvatar(
          backgroundColor: Colors.grey[200],
          child: Icon(icon,color: Colors.black, )),

    );

  }
  Widget userCustomAppbar(){
    return Row(
      children: [
        CircleAvatar(
          radius: 18,
          backgroundImage: NetworkImage(
              "https://scontent.fcai19-7.fna.fbcdn.net/v/t39.30808-1/283787937_1461799470924893_7434805395622483887_n.jpg?stp=dst-jpg_s480x480&_nc_cat=103&ccb=1-7&_nc_sid=7206a8&_nc_ohc=WHTc29lmrmMAX_ElMXB&_nc_ht=scontent.fcai19-7.fna&oh=00_AT8xGZ_ZRDyMlU6vCryYX4MpnPDhpRVSYLdqNSQ2r-9d9w&oe=62EC5E6A"
          ),
        ),
        SizedBox(width: 10,),
        Expanded(
          child: Text("Chats", style: TextStyle(color: Colors.black,
              fontWeight: FontWeight.bold,fontSize: 27)),
        ),

        buildAppBarIcons(Icons.camera_alt_rounded),
        SizedBox(width: 3,),
        buildAppBarIcons(Icons.edit),

      ],
    );
  }
  Widget buildCustomSearch(){
    return Container(

      margin: EdgeInsets.only(top: 10,bottom: 10),
      decoration:BoxDecoration(borderRadius:BorderRadius.circular(25),color: Colors.grey[200] ),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: "Search",
            prefixIcon: Icon(Icons.search),
            border: InputBorder.none
        ),
      ),
    );



  }
  Widget buildStoriesRow(){
    return Container(
      height: 100,
      child: Row(
        children: [
          buildAddStoryItem(),
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index) => buildStoryItem(index),
              itemCount:storyModels.length, separatorBuilder: (BuildContext context, int index) {
              return Divider(color: Colors.blue,height: 2,);
            },

            ),
          ),
        ],
      ),
    );

  }
  Widget buildAddStoryItem(){
    return   Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            CircleAvatar(
              radius: 32,
              backgroundColor: Colors.grey,
            ),
            CircleAvatar(
              radius: 31,
              backgroundColor: Colors.white,
            ),
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 29,
                  backgroundImage: NetworkImage(
                      "https://scontent.fcai19-7.fna.fbcdn.net/v/t39.30808-1/283787937_1461799470924893_7434805395622483887_n.jpg?stp=dst-jpg_s480x480&_nc_cat=103&ccb=1-7&_nc_sid=7206a8&_nc_ohc=WHTc29lmrmMAX_ElMXB&_nc_ht=scontent.fcai19-7.fna&oh=00_AT8xGZ_ZRDyMlU6vCryYX4MpnPDhpRVSYLdqNSQ2r-9d9w&oe=62EC5E6A"
                  ),
                ),
                CircleAvatar(
                  radius: 9,
                  backgroundColor: Colors.white,
                ),

                CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.black,
                  child: Icon(Icons.add , color:  Colors.white,size: 13,),

                )
              ],
            )

          ],
        ),
        SizedBox(height: 3,),
        Text("Add",style: TextStyle(fontSize: 10),maxLines: 2,),
        Text("Story",style: TextStyle(fontSize: 10),maxLines: 2,)
      ],
    );
  }
  Widget buildStoryItem(index){
    return Container(
      margin: EdgeInsets.only(left: 10),
      child: Column(
        children: [
          Stack(

            alignment: AlignmentDirectional.center,
            children: [
              Visibility(
                visible: storyModels[index].story,
                child: CircleAvatar(
                  radius: 31,
                  backgroundColor: Colors.blue,
                ),
              ),
              Visibility(
                visible:false,
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                ),
              ),

              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [ CircleAvatar(
                  radius: 29,
                  backgroundImage: NetworkImage(storyModels[index].imageUrl),
                ),
                  Visibility(
                    visible: storyModels[index].active,
                    child: CircleAvatar(
                      radius: 7,

                      backgroundColor: Colors.green,
                    ),
                  ),

                ],
              )

            ],
          ),
          SizedBox(height: 3,),
          Text(storyModels[index].firstName,style: TextStyle(fontSize: 10),),
          Text(storyModels[index].lastName,style: TextStyle(fontSize: 10),)
        ],
      ),
    );

  }
  Widget buildChatsItem(index){
    return Container(
      margin: EdgeInsets.only(top: 10),
      child: Row(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: NetworkImage(itemMessage[index].imageUrl),
              ),
              Visibility(
                visible: itemMessage[index].online,
                child: Column(
                  children: [
                    Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Colors.white,
                        ),
                        CircleAvatar(
                          radius:  7,
                          backgroundColor: Colors.green,
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(width: 5,),
          Expanded(
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(itemMessage[index].userName, style: TextStyle(fontWeight: FontWeight.bold,
                        color: Colors.black,fontSize: 14)

                      ,maxLines: 1,overflow: TextOverflow.ellipsis,),
                    Spacer(),
                    Visibility(
                      visible: itemMessage[index].seen,
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  ],
                ),


                Row(
                  children: [
                    Expanded(

                      child: Row(
                        children: [
                          Text(itemMessage[index].message, style: const TextStyle(
                              color: Colors.black,fontSize: 9)

                            ,maxLines: 1,overflow: TextOverflow.ellipsis,),

                          
                          Text(".${itemMessage[index].time}", style: TextStyle(
                              color: Colors.black,fontSize: 9,fontWeight: FontWeight.bold),
                            maxLines: 1,overflow: TextOverflow.ellipsis,),
                        ],
                      ),
                    ),
                  
                  ],
                )





              ],
            ),
          ),

          Column(
            children: [

            ],
          )



        ],
      ),
    );
  }

 Widget buildBottomNavigationBar() {
   return BottomNavigationBar(
     type: BottomNavigationBarType.fixed,
     backgroundColor: Colors.white,
     selectedItemColor: Colors.blue,
     unselectedItemColor: Colors.black.withOpacity(.60),
     selectedFontSize: 14,
     unselectedFontSize: 14,

     onTap: (value) {
       // Respond to item press.
     },
     items: [
       BottomNavigationBarItem(
         label: "Chats",

         icon: Icon(Icons.wechat_sharp),

       ),
       BottomNavigationBarItem(
         label: "People",
         icon: Icon(Icons.people_alt),
       ),
       BottomNavigationBarItem(
         label: "Stories",
         icon: Icon(Icons.amp_stories_outlined),
       ),


     ],
   );
 }


}


















class StoryModels{
  String imageUrl;
  bool story;
  bool active;
String firstName;
String lastName;
  StoryModels({

   required this.lastName,required this.firstName, required this.imageUrl, required this.story, required this.active
});
}

class ChatsModels{
  String time;
  String message;
  String imageUrl;
  String userName;

  bool online;
  bool story;
  bool seen;


  ChatsModels({required this.time,required this.message, required this.imageUrl, required this.userName, required this.online, required this.story,
    required this.seen,});
}