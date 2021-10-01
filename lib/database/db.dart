class Logo{
  String description;
  String location;
  String image;
  Logo(this.description,this.location,this.image);

}
final Logo logo1=Logo('SEE & DO', 'endroit', 'assets/logos/see and do.png');//
final Logo logo2=Logo('EAT & DRINK', 'madagascar', 'assets/logos/eat and drink.png');
final Logo logo3=Logo('STAY', 'diego', 'assets/logos/stay.png');
List<Logo> logos = <Logo>[
  logo1,
  logo2,
  logo3,
];



class Hotel{
  String description;
  String location;
  String image;
  Hotel(this.description,this.location,this.image);

}
final Hotel hotel1=Hotel('list hotel', 'endroit', 'assets/images/uns.jpg');//
final Hotel hotel2=Hotel('diego', 'madagascar', 'assets/images/deux.jpg');
final Hotel hotel3=Hotel('antsiranana', 'diego', 'assets/images/trois.jpg');
List<Hotel> hotels = <Hotel>[
  hotel1,
  hotel2,
  hotel3,
];

class City{
  String description;
  String location;
  String image;
  City(this.description,this.location,this.image);

}
final City city1=City('Antsiranana', 'Madagascar', 'assets/images/trois.jpg');//
final City city2=City('Antananarivo', 'Madagascar', 'assets/provinces/antananarivo.jpeg');
final City city3=City('Fianaratsoa', 'Madagascar', 'assets/provinces/Fianaratsoa.jpeg');
final City city4=City('Mahajanga', 'Madagascar', 'assets/provinces/Mahajanga.jpeg');

List<City> citys = <City>[
  city1,
  city2,
  city3,
  city4,
];
