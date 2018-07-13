class Pizza{

  final int id;
  final String name;
  final String imageUrl;
  final int price;
  final String description;

  const Pizza({
    this.id,
    this.name,
    this.imageUrl,
    this.price,
    this.description

  });


}



final  PizzaData =[
    
    new Pizza(
       id:1,
       name:"Chicken Golden Delight",
       imageUrl:"https://www.dominos.co.in/files/items/Chicken_Golden_Delight.jpg",
       price:120,
       description:"Mmm! Barbeque chicken with a topping of golden corn loaded with extra cheese. Worth its weight in gold!"

    )
    ,
    new Pizza(
      id:2,
      name:"Non Veg Supreme",
      imageUrl :"https://www.dominos.co.in/files/items/Non-Veg_Supreme.jpg",
      price:140,
      description:"Bite into supreme delight of Black Olives, Onions, Grilled Mushrooms, Pepper BBQ Chicken, Peri-Peri Chicken, Grilled Chicken Rashers"


    ),
    new Pizza(
      id:3,
      name:"Chicken Dominator",
      imageUrl : "https://www.dominos.co.in/files/items/Dominator.jpg",
      price:160,
      description:"Treat your taste buds with Double Pepper Barbecue Chicken, Peri-Peri Chicken, Chicken Tikka & Grilled Chicken Rashers"
    ),

    new Pizza(
      id: 4,
      name: "PERI-PERI CHICKEN",
      imageUrl: "https://www.dominos.co.in/files/items/Peri-Peri_Chicken.jpg",
      price: 180,
      description: "Peri-Peri Chicken I Red Paprika"
    ),
    
     new Pizza(

      id:5,
      name:"CHICKEN FIESTA",
      imageUrl:"https://www.dominos.co.in/files/items/chunky-chicken.png",
      price:200,
      description:"Grilled Chicken Rashers I Peri-Peri Chicken I Onion I Capsicum"

     ),

     
     


];