import 'package:flutter/material.dart';
import 'rawdata.dart';


void main() => runApp(new MyApp());

final isbuy=Set<Pizza>();

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {

    return new MaterialApp(
      title: 'PIZZA PLANET',
      theme: new ThemeData(
       primarySwatch: Colors.blue,
      ),

      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Pizza Planet'),
          actions: <Widget>[
            new IconButton(
               icon:Icon(Icons.shopping_cart),
                onPressed: _pushBrought,
            ),
          ],

        ),

        drawer: new Drawer(
          child: ListView(
             padding: EdgeInsets.zero,
             children: <Widget>[
               new UserAccountsDrawerHeader(
                accountName: new Text('Jacob James'),
                accountEmail: new Text('jacobja3@gmail.com'),
                currentAccountPicture: new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: new Icon(Icons.face),
                ),
               ),
               new ListTile(title: new Text('Order Pizza'), onTap: (){},),
               
               new ListTile(title: new Text('View Menu'), onTap: (){},),
               new Divider(),



             ],

          ),
        ),
        body: new Center(
          child: PizzaListView(),
        ),
      ),
    );
    
     
  }
  void _pushBrought(){
    
  }
}
class PizzaListView extends StatefulWidget{

  createState() =>new PizzaListViewState();

}
class PizzaListViewState extends State<PizzaListView>{

      
      
 


  Widget build(BuildContext context){
    return new ListView.builder(
      itemBuilder: (context,i) =>  customCard(PizzaData[i],),
       itemCount: PizzaData.length, 
    

      
    );

  }


  Widget customCard(Pizza pizza){

    final _alreadybrought=isbuy.contains(pizza);
  

    return new Container(
      padding: const EdgeInsets.all(16.0),

      child: new Card(
      child: new Column(
        children: <Widget>[
          new Image.network(pizza.imageUrl,height:180.0 ),
          new ListTile(
               title: new Text(pizza.name),
               subtitle: new Text("Rs."+pizza.price.toString()),
               trailing: new MaterialButton(
                 child: new Text('ORDER',
                 style: new TextStyle(
                   color: Colors.white
                 )),
                 color: Colors.red[800],
                 onPressed: (){
                   if(_alreadybrought){
                     return null;
                   }
                   else{
                     isbuy.add(pizza);
                   }
                 },
               ),
           
          ),
          new ExpansionTile(
            title: new Text('DESCRIPTION'),
            children: <Widget>[
              new Container(
                padding: const EdgeInsets.all(12.0),
                child: new Text(pizza.description),
              )
            ],
          )
          
         
          

          
          
          
          
        ],
      ),

    ) ,
    ) ; 
  }


  


}


