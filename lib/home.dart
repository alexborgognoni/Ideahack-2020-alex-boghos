import 'package:Ideahack_2020/ProfilePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'Environment.dart';
import 'CardGame.dart';
import 'ProfilePage.dart';

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  int _tabIndex = 0;

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3);
  }

  void _toggleTab() {
    _tabIndex = _tabController.index + 1;
    _tabController.animateTo(_tabIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      bottomNavigationBar: BottomAppBar(notchMargin: 20, color: Colors.white),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text('TAP LEARN',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                fontFamily: 'sans-serif-light',
                color: Colors.black)),
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.black,
          tabs: [
            Tab(text: 'Environments'),
            Tab(text: 'Exercises'),
            Tab(text: 'Profile'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.add),
        focusColor: Colors.white,
        backgroundColor: Color.fromRGBO(48, 48, 48, 0.9),
      ),
      body: TabBarView(controller: _tabController, children: [
        Card(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://image.freepik.com/free-photo/medical-background-crumpled-paper-brain-shape-with-light-bulb_1232-2101.jpg'),
                  ),
                ),
                child: OutlineButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Environment(basic_titles,
                            basic_images, basic_infos, 'BASICS')));
                  },
                  splashColor: Colors.blueGrey[200],
                  highlightElevation: 2.2,
                  child: ListTile(
                    leading: Icon(
                      Icons.admin_panel_settings_sharp,
                      color: Colors.black,
                      size: 20,
                    ),
                    title: Text('BASICS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            fontFamily: 'sans-serif-light',
                            color: Colors.black)),
                    contentPadding: EdgeInsets.all(40),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://image.freepik.com/free-photo/close-up-view-young-businesswoman-working-his-plan-writing-idea-notebook-with-digital-tablet_35674-1126.jpg'),
                  ),
                ),
                child: OutlineButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Environment(office_titles,
                            office_images, office_infos, 'OFFICE')));
                  },
                  splashColor: Colors.blueGrey[200],
                  highlightElevation: 2.2,
                  child: ListTile(
                    leading: Icon(
                      Icons.location_city,
                      color: Colors.black87,
                      size: 20,
                    ),
                    title: Text('OFFICE',
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 22.0,
                            fontFamily: 'sans-serif-light',
                            color: Colors.black)),
                    contentPadding: EdgeInsets.all(40),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://image.freepik.com/free-photo/restaurant-interior_1127-3394.jpg'),
                  ),
                ),
                child: OutlineButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Environment(bar_titles,
                            bar_images, bar_infos, 'RESTAURANT/BAR')));
                  },
                  splashColor: Colors.blueGrey[200],
                  highlightElevation: 2.2,
                  child: ListTile(
                    leading: Icon(
                      Icons.restaurant,
                      color: Colors.black87,
                      size: 20,
                    ),
                    title: Text('RESTAURANT / BAR',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            fontFamily: 'sans-serif-light',
                            color: Colors.white)),
                    contentPadding: EdgeInsets.all(40),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://image.freepik.com/free-photo/blur-hospital_1203-7972.jpg'),
                  ),
                ),
                child: OutlineButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Environment(hospital_titles,
                            hospital_images, hospital_infos, 'HOSPITAL')));
                  },
                  splashColor: Colors.blueGrey[200],
                  highlightElevation: 2.2,
                  child: ListTile(
                    leading: Icon(
                      Icons.local_hospital,
                      color: Colors.black87,
                      size: 20,
                    ),
                    title: Text('HOSPITAL',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            fontFamily: 'sans-serif-light',
                            color: Colors.black)),
                    contentPadding: EdgeInsets.all(40),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://image.freepik.com/free-photo/stay-home-concept-wooden-table-side-view-hand-holding-wooden-cube_176474-9516.jpg'),
                  ),
                ),
                child: OutlineButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Environment(
                            home_titles, home_images, home_infos, 'HOME')));
                  },
                  splashColor: Colors.blueGrey[200],
                  highlightElevation: 2.2,
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 20,
                    ),
                    title: Text('HOME',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            fontFamily: 'sans-serif-light',
                            color: Colors.white)),
                    contentPadding: EdgeInsets.all(40),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://cdn.pixabay.com/photo/2015/01/28/23/35/landscape-615429_1280.jpg'),
                  ),
                ),
                child: OutlineButton(
                  onPressed: () {},
                  splashColor: Colors.blueGrey[200],
                  highlightElevation: 2.2,
                  child: ListTile(
                    leading: Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 20,
                    ),
                    title: Text('NATURE',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            fontFamily: 'sans-serif-light',
                            color: Colors.white)),
                    contentPadding: EdgeInsets.all(40),
                  ),
                ),
              ),
            ],
          ),
        ),
        Card(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Container(
                child: OutlineButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => CardGame()));
                  },
                  splashColor: Colors.blueGrey[200],
                  highlightedBorderColor: Colors.black,
                  child: ListTile(
                    leading:
                        Icon(Icons.home_work_outlined, color: Colors.black),
                    title: Text('Exercise 1'),
                    subtitle: Text('Card game'),
                  ),
                ),
              ),
              Container(
                child: OutlineButton(
                  onPressed: () {},
                  splashColor: Colors.blueGrey[200],
                  child: ListTile(
                    leading:
                        Icon(Icons.home_work_outlined, color: Colors.black),
                    title: Text('Exercise 2'),
                  ),
                ),
              ),
              Container(
                child: OutlineButton(
                  onPressed: () {},
                  splashColor: Colors.blueGrey[200],
                  child: ListTile(
                    leading:
                        Icon(Icons.home_work_outlined, color: Colors.black),
                    title: Text('Exercise 3'),
                  ),
                ),
              ),
            ],
          ),
        ),
        ProfilePage(),
      ]),
    ));
  }
}

List<String> office_titles = [
  'Tape',
  'Ruler',
  'Paper clip',
  'Pushpin',
  'Scissors',
  'Calculator',
  'Stapler',
  'Pen',
  'Pencil',
  'Eraser',
  'Highlighter',
  'Hole-punch',
  'Rubber band',
  'Desk',
  'Chair',
  'Paper',
  'Computer',
  'Mug',
  'Lamp'
];

List<String> office_images = [
  'https://i.ebayimg.com/images/g/bhgAAOSwRNhbzGUR/s-l300.png',
  'https://pngimg.com/uploads/ruler/ruler_PNG49.png',
  'https://www.kindpng.com/picc/m/141-1411838_paperclip-png-transparent-png.png',
  'https://www.nicepng.com/png/detail/840-8407391_pushpin-icon-push-pin-emoji.png',
  'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0c/Small_pair_of_blue_scissors.png/1200px-Small_pair_of_blue_scissors.png',
  'https://purepng.com/public/uploads/large/purepng.com-calculatorcalculatorportable-electroniccalculationselectronicssmall-deviceelectronic-calculator-1701528344164daok0.png',
  'https://pngimg.com/uploads/stapler/stapler_PNG2.png',
  'https://purepng.com/public/uploads/large/purepng.com-penpenapply-inksurfacewritingdrawingspecialized-uses-14215265875091xqqq.png',
  'https://purepng.com/public/uploads/large/purepng.com-pencilpencilnarrowsolid-pigment-corecharcoal-pencilsgreyblack-1421526585133gvgag.png',
  'https://lh3.googleusercontent.com/proxy/eShyEx5EXZewSo1z53pMP1asIoCPwgv9mYizKDctjG6FBmqmotYlX-yQzoUkMntcBTqv2Xyb81J_HFOBHT0n7rejrSc3VdmKXSKBvSdvUU7Dc5-yW2cB4DgVujWatJaR',
  'https://www.pngkit.com/png/full/94-944706_this-free-icons-png-design-of-yellow-highlighter.png',
  'https://purepng.com/public/uploads/medium/blue-hole-puncher-w2j.png',
  'https://lh3.googleusercontent.com/proxy/WqYK7syi3OSt8kiSUW9rdC38vyfO0OCx9J7kNV3r4b0ekvsaMpMaTtJg8i6v3CA6mBaufWPmg4VPUYELhGwj1q9gjZBi0Tz3rZus588fgouSLaAIrXtJTIAznF1u2vS8PA',
  'https://lh3.googleusercontent.com/proxy/H8HeQXdW9vLUp7yXvSAZKrFw_yDXXwossInyzIuMSPHk0t_JtyzPbz9i9NvUgkWGZbLAVf9IlFEe2U-46e1yIAj00rejGoZTSyl3',
  'https://www.pngmart.com/files/7/Office-Chair-Transparent-Background.png',
  'https://pngimg.com/uploads/paper_sheet/paper_sheet_PNG7233.png',
  'https://www.pngmart.com/files/7/Desktop-Computer-PNG-File.png',
  'https://lh3.googleusercontent.com/proxy/OotqWGJfazEt40X0StJ23h6TX_rG3KgXBg1E0QlzcxxU70ZWayYvc5xLl_5QNYpYEADWpTvclH8KKOwL39auhIHQcjqmkvgXcG6x-omkAV1GjBZq3nn_lwEzD7ZPOd4HR3ha',
  'https://lh3.googleusercontent.com/proxy/1XERA96lap5h2Eq0b5WSY99wpYJc6k40TDz2fd9rUCCzaaa69lyC5jtcpCHcJjSeIEE-joqk2wD50k7fr1uDifUv7sOA-t-SMjQhz8IiS8-GdjwsBwj9fFMefKjApJaQ1c8L'
];

List<String> office_infos = [
  'I stick a picture on paper with tape.',
  'My friend measures the lentgh of his drawing with a ruler.',
  'I attach paper together with paper clips.',
  'Pushpins are used to attach paper to a wall.',
  'Watch out! You can cut yourself with scissors.',
  'My boss told me to use the calculator get the results.',
  'Today I bought a new stapler for my desk.',
  'My pen is empty, I have to get a new one.',
  'My classmate wouldn\'t lend me his pencil sharpener.',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  ''
];

List<String> bar_titles = [
  'Food',
  'Drink',
  'Water',
  'Beer',
  'Wine',
  'Whisky',
  'Ice',
  'Coffee',
  'Table',
  'Ashtray',
  'Plate',
  'Fork',
  'Knife',
  'Spoon',
  'Napkin',
  'Waiter',
  'Waitress',
  'Chef',
  'Bill',
  'Allergy',
  'Restroom'
];

List<String> bar_images = [
  'https://pngriver.com/wp-content/uploads/2018/04/Download-Food-PNG-File.png',
  'https://www.pngmart.com/files/7/Ice-Drink-PNG-Clipart.png',
  'https://pngimg.com/uploads/water_glass/water_glass_PNG15231.png',
  'https://purepng.com/public/uploads/large/purepng.com-glass-of-beerbeeralcoholdrinkgerman-drinkglas-of-beer-231519339253ecsa5.png',
  'https://static.wixstatic.com/media/2cd43b_0da61c815a694e718afd0820d6e118a4~mv2.png/v1/fill/w_721,h_573,fp_0.50_0.50/2cd43b_0da61c815a694e718afd0820d6e118a4~mv2.png',
  'https://img.pngio.com/whisky-png-images-free-download-whisky-png-500_617.png',
  'https://www.pngmart.com/files/7/Ice-Cube-PNG-Photo.png',
  'https://lh3.googleusercontent.com/proxy/W4113j9ofgprGRNlCZm6zD1_IgauiKQrxhj2PluPdmARmQdG2APl37ZtsDlyZmsjQ7T32t8jCNLNFKkotn-k3mGbmxPXuQKRM-QmLHjL__fvxPzieuWLeuWTqdeAIjNf',
  'https://pngriver.com/wp-content/uploads/2018/04/Download-Dining-Table-PNG.png',
  'https://i.dlpng.com/static/png/325943_preview.png',
  'https://i.pinimg.com/originals/39/24/c2/3924c2fb4e204bf83e68b01da40b998a.png',
  'https://freepngimg.com/thumb/fork/5-2-fork-png-thumb.png',
  'https://i.pinimg.com/originals/da/98/55/da98554c5ae01e62813d6f0f5efe0fb4.png',
  'https://purepng.com/public/uploads/large/purepng.com-spoonspoonsmall-shallow-bowlovalrounddessert-spooncuttyspatulaladle-1701528278452spqdm.png',
  'https://pngimg.com/uploads/napkin/napkin_PNG68.png',
  'https://static.wixstatic.com/media/2cd43b_d0934f45baba4f6e8efdbcde95b41370~mv2.png/v1/fill/w_713,h_489,fp_0.50_0.50,lg_1,q_95/2cd43b_d0934f45baba4f6e8efdbcde95b41370~mv2.webp',
  'https://pngimg.com/uploads/waiter/waiter_PNG55.png',
  'https://purepng.com/public/uploads/large/purepng.com-chefcheftrained-professional-cookfood-preparationkitchenchefsexperienced-1421526669358hbutb.png',
  'https://bloximages.newyork1.vip.townnews.com/kctv5.com/content/tncms/assets/v3/editorial/0/ae/0aedc47a-c182-5d9b-b87a-e7558ed213c3/5b759f9b75605.image.jpg?crop=450%2C450%2C175%2C0&resize=1200%2C1200&order=crop%2Cresize',
  'https://www.eufic.org/images/uploads/food-safety/landing_page_image-42.png',
  'https://m.media-amazon.com/images/I/61irPkFSn4L._AC_SS350_.jpg'
];

List<String> bar_infos = [
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  ''
];

List<String> hospital_titles = [
  'Ambulance',
  'Doctor',
  'Nurse',
  'Ill',
  'Blood',
  'Bone',
  'Skin',
  'Joint',
  'Muscle',
  'Throat',
  'Head',
  'Stomach',
  'Inhaler',
  'Medication',
  'Prescription',
  'Cough',
  'Wheelchair',
  'Instruments',
  'Needle',
  'Stretcher',
  'Pharmacy',
];

List<String> hospital_images = [
  'https://purepng.com/public/uploads/large/purepng.com-ambulanceambulanceinjured-peoplefor-an-illness-or-injuryhospital-medicalambulances-1701527408333vias4.png',
  'https://pngimg.com/uploads/doctor/doctor_PNG15988.png',
  'https://lh3.googleusercontent.com/proxy/ADMFCxahi35vFdzk6KI1oy303ne6kyj8rC0J0toGx3X8Pf7x6QRGaLVQHnbJraWbTcaipMa2iIvoDjhxmtc5-_Nhm4G84wZRpqM4LdBqXE7tKI8tyS5-EuTEm0yrs3jNun8ZUg',
  'https://img2.pngio.com/ill-child-png-transparent-ill-childpng-images-pluspng-ill-png-210_226.png',
  'https://lh3.googleusercontent.com/proxy/2V3mRIokcyf1FNQE0IU8sJm6kYoV8FMDD949nSA-Zfai_OW5r7kHHmMb4CQEE9L6-05OsCx74GhUOsfcQZxTyjig2ReWL3ouBmTJilppOPxJtJqnW77cOOHC9ICa9e0',
  'https://pngimg.com/uploads/bone/bone_PNG19.png',
  'https://cdn.mos.cms.futurecdn.net/UpQNNuE9QjptyPma55sbdN.jpg',
  'https://userscontent2.emaze.com/images/8f2940ab-1c35-4837-9923-ceb1ee2d0441/070effd9a2d14899a9684efa8b22116e.png',
  'https://images.vexels.com/media/users/3/141930/isolated/preview/2ed42771cb75bb544a24633f91e33e16-muscular-system-anatomy-human-body-by-vexels.png',
  'https://freepikpsd.com/wp-content/uploads/2019/10/neck-png-3-Transparent-Images-Free.png',
  'https://images.theconversation.com/files/175523/original/file-20170626-4492-mqyzj3.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=926&fit=clip',
  'https://ec.europa.eu/jrc/sites/jrcsh/files/styles/normal-responsive/public/c_yodiyim_-_fotolia.com_fotolia_109696075_subscription_monthly_xxl.jpg?itok=oQBGPQVH',
  'https://www.pngkey.com/png/full/387-3870609_asthma-attackers-swim-class-asthma-inhaler-png.png',
  'https://img.pngio.com/herbalism-medicine-naturopathy-alternative-health-services-clip-drugs-png-2400_1600.png',
  'https://www.pngrepo.com/download/77447/prescription.png',
  'https://www.clipartkey.com/mpngs/m/66-665387_cough-vector-clipart-psd-cough-png.png',
  'https://pngimg.com/uploads/wheelchair/wheelchair_PNG17874.png',
  'https://img3.exportersindia.com/product_images/bc-full/dir_114/3418828/stainless-steel-medical-equipment-1518070074-3633708.jpg',
  'https://www.pngmart.com/files/7/Syringe-Needle-PNG-Free-Download.png',
  'https://atlas-content-cdn.pixelsquid.com/stock-images/rolling-stretcher-y1JqDa4-600.jpg',
  'https://images.vexels.com/media/users/3/136559/isolated/preview/624dd0a951a1e8a118215b1b24a0da59-pharmacy-logo-by-vexels.png'
];

List<String> hospital_infos = [
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  ''
];

List<String> home_titles = [
  'Living room',
  'Television',
  'Sofa',
  'Bed room',
  'Bed',
  'Wardrobe',
  'Bathroom',
  'Toilet',
  'Shower',
  'Toothbrush',
  'Toothpaste',
  'Soap',
  'Toiletpaper',
  'Kitchen',
  'Fridge',
  'Oven',
  'Sink',
  'Car',
  'Window',
  'Door',
  'Stair'
];

List<String> home_images = [
  'https://i.pinimg.com/originals/ce/35/fd/ce35fdc25028b9a1953af4c0235064e4.jpg',
  'https://i.pinimg.com/originals/1a/1f/c7/1a1fc7167e1d597e782c500d9b5a6a2e.png',
  'https://purepng.com/public/uploads/large/purepng.com-sofasofafurniturearmrestsentirely-upholsteredloungecouchbedsteaddivan-1701527997439eb0bh.png',
  'https://www.renttheroo.com.au/images/com_hikashop/upload/furniture-images.png',
  'https://lh3.googleusercontent.com/proxy/wdV79Prpy-RlbBcZjYoHIUKpiBIn0S-E4SBqLkLgfIyRVw-vAxRWKUSM-dzKqn3Z5BRWuePiObYeop3ktaOHr_fjVteDaaSTkUC11gIA3kO9',
  'https://www.clipartkey.com/mpngs/m/31-316274_closet-images-transparent-png-wardrobe-transparent-background.png',
  'https://static.wikia.nocookie.net/theamazingworldofgumball/images/2/2c/DA_BATHROOM.png/revision/latest?cb=20151107173228',
  'https://i.pinimg.com/originals/49/59/92/49599272614c5637cbe5383a6e04f49e.png',
  'https://www.pngmart.com/files/4/Shower-PNG-Transparent.png',
  'https://us-professional.gumbrand.com/pub/media/catalog/product/cache/e07052875d27bebf5918be5f802b9966/3/1/311p.png',
  'https://upload.wikimedia.org/wikipedia/en/thumb/6/61/Toothpaste.png/1200px-Toothpaste.png',
  'https://pngimg.com/uploads/soap/soap_PNG45.png',
  'https://www.clipartkey.com/mpngs/m/28-286069_transparent-tissue-png-roll-of-toilet-paper-png.png',
  'https://www.pngmart.com/files/8/Kitchen-PNG-Transparent.png',
  'https://purepng.com/public/uploads/large/purepng.com-refrigeratorrefrigeratorfridgeiceboxrefrigeratoryfreezer-1701528368818jyb9k.png',
  'https://p7.hiclipart.com/preview/447/632/922/cooking-ranges-oven-gorenje-gas-stove-electric-cooker-oven.jpg',
  'https://purepng.com/public/uploads/large/purepng.com-sinksinksinkerwashbowlhand-basinwash-basin-1701527959250uvqog.png',
  'https://www.freepnglogos.com/uploads/car-png/car-transparent-png-pictures-icons-and-png-backgrounds-6.png',
  'https://lh3.googleusercontent.com/proxy/BBCMbhworK4bJ3fmK4345h7DHFBQRiVYcL7aMkwaWs7Zi6A-fLFmE1VbbidURQ0RRr7zbGLLzan-BkVC9XtrjZoA_b9LZRhJPHaLhIF2iLWU15KjeGsYXtg9VIo7NLXhFBdLfzioCFDfvU1YKxkUX0oK6t-fnjk',
  'https://i.pinimg.com/originals/bb/28/fe/bb28fe96f896cce969a558f0d518f4e1.png',
  'https://img.pngio.com/stairs-png-transparent-stairspng-images-pluspng-stairs-png-300_300.jpg'
];

List<String> home_infos = [
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  ''
];

List<String> basic_titles = [
  'Hello',
  'What',
  'Yes / No',
  'Please',
  'Thank you',
  'Time',
  'People',
  'Day / Night',
  'Man / Woman',
  'Child',
  'Baby',
  'To go',
  'To look',
  'To say',
  'To sing'
];

List<String> basic_images = [
  'https://cdn2.stylecraze.com/wp-content/uploads/2019/06/GOOOOOD-MORNING-the-name-of-the-person-you-are-greeting.jpg',
  'https://i.imgur.com/UzxN32i_d.webp?maxwidth=728&fidelity=grand',
  'https://thumbs.dreamstime.com/b/yes-no-signs-28798567.jpg',
  'https://www.greekboston.com/wp-content/uploads/2018/04/say-please-greek.jpg',
  'https://images.theconversation.com/files/229651/original/file-20180727-106496-6ge8b2.jpg?ixlib=rb-1.1.0&q=45&auto=format&w=1200&h=1200.0&fit=crop',
  'https://weeeklynews.com/wp-content/uploads/sites/571/2019/05/Time_Management_Apps_You_Should_Start_Using_Yesterday_1.jpg',
  'https://assets.ey.com/content/dam/ey-sites/ey-com/en_gl/topics/global-review/2019/ey-staff-at-event.jpg',
  'https://i.ytimg.com/vi/Wr-CRKsTYGs/sddefault.jpg',
  'https://i.insider.com/58124ad2dd089541098b4ae6?width=600&format=jpeg&auto=webp',
  'https://www.freepnglogos.com/uploads/kids-png/omaha-healthy-kids-alliance-38.png',
  'https://www.freepngimg.com/thumb/baby/32688-4-baby-transparent-thumb.png',
  'https://mysafetynews.com/wp-content/uploads/2016/04/Person-Walk-Follow-Path-Plan.jpg',
  'https://img.pngio.com/business-people-looking-for-business-enterprise-business-character-png-and-psd-person-looking-png-650_919.png',
  'https://i2.wp.com/teacherspitstop.com/wp-content/uploads/2019/06/spoken-verbal.png?fit=300%2C247&ssl=1',
  'https://ieltsninja.com/content/wp-content/uploads/2018/04/iStock_000012499903Small-trans_543_300_c101.jpg'
];

List<String> basic_infos = [
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  '',
  ''
];
