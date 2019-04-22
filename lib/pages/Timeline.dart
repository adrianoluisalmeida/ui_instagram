
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Timeline extends StatefulWidget {
  @override
  _TimelineState createState() => _TimelineState();
}

class _TimelineState extends State<Timeline> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.white,
            elevation: 0.0,
            centerTitle: true,
            title:Text("instagram"),
            leading: IconButton (
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt,
                color: Colors.black
              ),
            ),
            actions: <Widget>[
              IconButton(
                icon:Icon(
                  FontAwesomeIcons.paperPlane,
                  color: Colors.black
                ),
                onPressed: () {},
              )
            ],  
          ),

          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container (
                  margin: EdgeInsets.fromLTRB(3.0, 0.0, 20.0, 0.0),
                  height: 80.0,
                  child:ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) => new Stack(
                      alignment: Alignment.topCenter,
                      children: <Widget>[
                        Container (
                          width: 60.0,
                          height: 60.0,
                          margin:EdgeInsets.fromLTRB(4.0, 0.0, 4.0, 0.0),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image:DecorationImage(
                              fit:BoxFit.fill,
                              image:NetworkImage("https://abrilexame.files.wordpress.com/2018/10/8dicas1.jpg?quality=70&strip=info&w=1000&h=1000")
                            )
                          )

                        )
                      ],
                    ),
                  )
                )
              ]
            )
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((BuildContext context, int index){
              return Post();
            },
            childCount: 3, //numero de posts
            
            ),

          )
          
        ],
    );
  }
}

class Post extends StatefulWidget {
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {

  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(children: <Widget>[
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    shape:BoxShape.circle,
                    image:DecorationImage(
                      fit:BoxFit.fill,
                      image:NetworkImage(
                        "https://abrilexame.files.wordpress.com/2018/10/8dicas1.jpg?quality=70&strip=info&w=1000&h=1000"
                      )
                    )
                  ),
                ),
                SizedBox(width: 10.0),
                Text(
                  "Perfil",
                  style:TextStyle(fontWeight: FontWeight.bold)
                )
              ],
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: (){},
              )
            ],
          ),
          ),
          Container (
            child: Stack(
              children: <Widget>[
                Image.network("https://q-ak.bstatic.com/images/hotel/max1024x768/150/150113019.jpg", fit: BoxFit.cover)
              ],
            )
          ),
         Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                   
                   Icon(FontAwesomeIcons.heart),
                   SizedBox(width: 16.0),
                   Icon(FontAwesomeIcons.comment),
                   SizedBox(width: 16.0),
                   Icon(FontAwesomeIcons.paperPlane)
                ],
              ),
               Icon(FontAwesomeIcons.bookmark)
            ],
          ),
        ),
      ],
    );
  }
}
