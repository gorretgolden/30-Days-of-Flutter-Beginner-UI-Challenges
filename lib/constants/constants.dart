//list of network images
import 'package:thirty_days_beginner_ui_basics/models/chat_model.dart';
import 'package:thirty_days_beginner_ui_basics/models/movie_model.dart';

List<String> imageUrls = [
  'https://img.freepik.com/free-photo/dinner-table-with-foods-soft-drinks-restaurant_114579-3319.jpg?t=st=1725646283~exp=1725649883~hmac=a4f4a60d278381c97d12de7bba9d334687007aa1bed8a9c25916d3475e3920ec&w=1060',
  'https://img.freepik.com/free-photo/healthy-lunch-table-restaurant_140725-6523.jpg?t=st=1725646315~exp=1725649915~hmac=ae95e18012233302f350c3a609253a3c9c0a543d30086e7cab5818ef82991b54&w=1060',
  'https://img.freepik.com/free-photo/close-up-appetizing-ramadan-meal_23-2151182453.jpg?uid=R46484519&ga=GA1.2.858364278.1724432012',
  'https://img.freepik.com/free-photo/eid-al-fitr-celebration-with-delicious-food_23-2151205170.jpg?uid=R46484519&ga=GA1.2.858364278.1724432012',
  'https://img.freepik.com/free-photo/eid-al-fitr-celebration-with-delicious-food_23-2151205169.jpg?uid=R46484519&ga=GA1.2.858364278.1724432012',
  'https://img.freepik.com/free-photo/dinner-table-with-foods-soft-drinks-restaurant_114579-3319.jpg?t=st=1725646283~exp=1725649883~hmac=a4f4a60d278381c97d12de7bba9d334687007aa1bed8a9c25916d3475e3920ec&w=1060',
];

//Products list
final List<Map<String, dynamic>> products = [
  {
    'name': "Hand Bag",
    'price': 50000,
    'imagePath':
        'https://img.freepik.com/free-photo/fashionable-feminine-leather-lady-background_1203-6493.jpg?uid=R46484519&ga=GA1.1.858364278.1724432012&semt=ais_hybrid',
    'rating': 4.0
  },
  {
    'name': "Elegance High Heel",
    'price': 80000,
    'imagePath':
        'https://img.freepik.com/free-photo/fashion-pink-glamour-women-heels_1203-6509.jpg?uid=R46484519&ga=GA1.1.858364278.1724432012&semt=ais_hybrid',
    'rating': 4.4
  },
  {
    'name': "Casual Dress",
    'price': 30000,
    'imagePath':
        'https://img.freepik.com/free-photo/beautiful-black-girl-with-shopping-bags-city_1157-24431.jpg?t=st=1728134286~exp=1728137886~hmac=1b9526ba410c117f661648d704eb40ee1ef3b458594dc382ed7adb64a43499ea&w=1800',
    'rating': 3.0
  },
  {
    'name': "Luxury Necklace",
    'price': 80000,
    'imagePath':
        'https://img.freepik.com/free-photo/bust-showcase-jewelry-display-necklace-pendant-jewelry-lifestyle-fashion-accessories-mockup_460848-14326.jpg?uid=R46484519&ga=GA1.1.858364278.1724432012&semt=ais_hybrid',
    'rating': 4.8
  },
  {
    'name': "Casual Dress",
    'price': 30000,
    'imagePath':
        'https://img.freepik.com/free-photo/beautiful-black-girl-with-shopping-bags-city_1157-24431.jpg?t=st=1728134286~exp=1728137886~hmac=1b9526ba410c117f661648d704eb40ee1ef3b458594dc382ed7adb64a43499ea&w=1800',
    'rating': 3.0
  },
  {
    'name': "Luxury Necklace",
    'price': 80000,
    'imagePath':
        'https://img.freepik.com/free-photo/bust-showcase-jewelry-display-necklace-pendant-jewelry-lifestyle-fashion-accessories-mockup_460848-14326.jpg?uid=R46484519&ga=GA1.1.858364278.1724432012&semt=ais_hybrid',
    'rating': 4.8
  }
];

//chats
final List<ChatModel> chats = [
  ChatModel(
      name: "Gorret Golden",
      profileImage:
          "https://img.freepik.com/free-photo/confident-business-woman-portrait-smiling-face_53876-137693.jpg?uid=R46484519&ga=GA1.2.858364278.1724432012&semt=ais_hybrid",
      time: "11:00 AM",
      isRead: false,
      lastMessage: 'See you tomorrow'),
  ChatModel(
      name: "Esther Campus",
      profileImage:
          "https://img.freepik.com/free-vector/hand-drawn-ethnic-beauty-illustration_23-2150221939.jpg?uid=R46484519&ga=GA1.2.858364278.1724432012&semt=ais_hybrid",
      time: "10:00 AM",
      isRead: true,
      lastMessage:
          'Hey wasap, we have a lecture in the evening, i hope you attend. The lecturer communicated today!'),
  ChatModel(
    profileImage: 'https://img.freepik.com/free-photo/casual-young-african-man-posing-white-wall_231208-662.jpg?uid=R46484519&ga=GA1.1.858364278.1724432012&semt=ais_hybrid',
    name: 'John Doe',
    lastMessage: 'Hello! How are you?',
    time: '9:30 AM',
    isRead: true,
  ),
  ChatModel(
    profileImage: 'https://img.freepik.com/free-photo/studio-portrait-elegant-black-american-male-dressed-suit-grey-vignette-background_613910-9479.jpg?uid=R46484519&ga=GA1.1.858364278.1724432012&semt=ais_hybrid',
    name: 'Jacob Damy',
    lastMessage: 'Hello here',
    time: '8:15 AM',
    isRead: false,
  ),
  ChatModel(
    profileImage: 'https://img.freepik.com/free-photo/low-angle-female-taking-selfie_23-2148480683.jpg?uid=R46484519&ga=GA1.1.858364278.1724432012&semt=ais_hybrid',
    name: 'Alice Johnson',
    lastMessage: 'See you at the meeting!',
    time: '7:20 AM',
    isRead: true,
  ),
  ChatModel(
    profileImage: 'https://img.freepik.com/free-psd/close-up-portrait-black-woman-isolated_23-2151833527.jpg?uid=R46484519&ga=GA1.1.858364278.1724432012&semt=ais_hybrid',
    name: 'Amal Sarah',
    lastMessage: 'You did\'nt accept the inivitation!',
    time: 'Yesterday',
    isRead: true,
  ),
    ChatModel(
      name: "Gorret Golden",
      profileImage:
          "https://img.freepik.com/free-photo/confident-business-woman-portrait-smiling-face_53876-137693.jpg?uid=R46484519&ga=GA1.2.858364278.1724432012&semt=ais_hybrid",
      time: "Yesterday",
      isRead: true,
      lastMessage: 'The code is working!'),
];

//latest movies
final List<Movie> latestMovies = [
  Movie(title: 'The Union',
   imagePath: 'https://media.themoviedb.org/t/p/w440_and_h660_face/d9CTnTHip1RbVi2OQbA2LJJQAGI.jpg', 
   releaseDate: 'Aug 16, 2024',
    rating:4.9),
      Movie(title: 'The Blacklist',
   imagePath: 'https://media.themoviedb.org/t/p/w440_and_h660_face/r935SMphvXppx5bJjbIBNx02fwc.jpg', 
   releaseDate: 'Sep 23, 2013',
    rating:4.3),
          Movie(title: 'Saving Bikini Bottom: The Sandy Cheeks Movie',
   imagePath: 'https://media.themoviedb.org/t/p/w440_and_h660_face/30YnfZdMNIV7noWLdvmcJS0cbnQ.jpg', 
   releaseDate: 'Aug 02, 2024',
    rating:4.7),
              Movie(title: 'Jujutsu Kaisen',
   imagePath: 'https://media.themoviedb.org/t/p/w440_and_h660_face/fHpKWq9ayzSk8nSwqRuaAUemRKh.jpg', 
   releaseDate: 'Oct 03, 2020',
    rating:4.5)
];


//recommended movies
final List<Movie> recommendedMovies = [
  Movie(title: 'Uri: The Surgical Strike',
   imagePath: 'https://media.themoviedb.org/t/p/w440_and_h660_face/yNySAgpAnWmPpYinim9E0tUzJWG.jpg', 
   releaseDate: 'Jan 11, 2019',
    rating:4.3),
      Movie(title: 'The Case of the Bloody Iris',
   imagePath: 'https://media.themoviedb.org/t/p/w440_and_h660_face/afpZ3Eckzo0NyU2SyKbIouoQ3jm.jpg', 
   releaseDate: 'Aug 04, 1972',
    rating:4.2),
          Movie(title: 'Night of the Living Dead',
   imagePath: 'https://media.themoviedb.org/t/p/w440_and_h660_face/inNUOa9WZGdyRXQlt7eqmHtCttl.jpg', 
   releaseDate: 'Oct 04, 1968',
    rating:4.5),
              Movie(title: 'The Man from Earth : Holocene',
   imagePath: 'https://media.themoviedb.org/t/p/w440_and_h660_face/krOWstmTUdfafRbXH9YAjVj2zE5.jpg', 
   releaseDate: 'Oct 13, 2017',
    rating:4.1)
];

