import 'package:seller/const/const.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F6),
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: const Text(
          "Dashboard",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: textPrimary,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.share_outlined,
              size: 25,
            ),
            color: textPrimary,
            onPressed: () {
              // Handle search icon click
            },
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                size: 25,
                color: textPrimary,
              )),
          10.widthBox,
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            // Section 1: Store Image and Name
            StoreInfoSection(),

            // Section 2: Business Data in a Graph

            // Section 3: Sales Data
            SalesDataSection(),
            10.heightBox,

            // Section 4: Traffic Data
            TrafficDataSection(),
            10.heightBox,

            // Section 5: Join Community
            CommunitySection(
              title: "Join Our Community",
              icon: Icons.group,
              paragraph: "Get Connected with other  Seller",
            ),
            10.heightBox,

            // Section 6: Live Chat
            CommunitySection(
              title: "Live Chat ",
              icon: Icons.question_answer_outlined,
              paragraph: "Chat with our Customer Support",
            ),
          ],
        ),
      ),
    );
  }
}

class StoreInfoSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 100,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                // Replace with your image
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Store Name',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(width: 8.0),
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                  // Handle edit button click
                },
              ),
            ],
          ),
          SizedBox(height: 10.0),
        ],
      ),

      // Add more store information or design here
    );
  }
}

class SalesDataSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 15.0, bottom: 20),
      child: Column(
        children: <Widget>[
          // Section title
          Text(
            'Sales Data',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Divider(
            thickness: 0.5,
            color: textfieldGrey,
          ),
          SizedBox(height: 10.0),
          // Sales data (Revenue, Orders, Unit Sold, etc.)
          // You can use a combination of widgets to display the data
          // Example:

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomCard(
                    title: 'Revenue',
                    value: '\$5,000',
                    icon: Icons.monetization_on, // Add icon here
                  ),
                  CustomCard(
                    title: 'Orders',
                    value: '100',
                    icon: Icons.shopping_cart, // Add icon here
                  ),
                ],
              ),
              5.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomCard(
                    title: 'Unit Sold',
                    value: '500',
                    icon: Icons.local_grocery_store, // Add icon here
                  ),
                  CustomCard(
                    title: 'Average Sold',
                    value: '\$50',
                    icon: Icons.attach_money, // Add icon here
                  ),
                ],
              )
            ],
          ),
          // Add more sales-related information or design here
        ],
      ),
    );
  }
}

class TrafficDataSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 15.0, bottom: 20),
      child: Column(
        children: <Widget>[
          // Section title
          Text(
            'Traffic Data',
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
          Divider(
            thickness: 0.5,
            color: textfieldGrey,
          ),
          SizedBox(height: 10.0),
          // Traffic data (Store View, Unique Visitor, etc.)
          // You can use a similar approach as SalesDataSection,
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomCard(
                    title: 'Store View',
                    value: '10,000',
                    icon: Icons.store, // Add icon here
                  ),
                  CustomCard(
                    title: 'Unique Visitor',
                    value: '5,000',
                    icon: Icons.people, // Add icon here
                  ),
                ],
              ),
              5.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomCard(
                    title: 'Cart Units',
                    value: '2,500',
                    icon: Icons.shopping_basket, // Add icon here
                  ),
                  CustomCard(
                    title: 'A2C Visitor',
                    value: '1,000',
                    icon: Icons.person_add, // Add icon here
                  ),
                ],
              )
            ],
          ),
          // Add more traffic-related information or design here
        ],
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon; // Icon data

  CustomCard({
    required this.title,
    required this.value,
    required this.icon, // Icon parameter
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        width: context.screenWidth / 2 - 20,
        height: 70,
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Icon with title
            Icon(
              icon,
              size: 24.0,
              color: primary, // Customize icon color
            ),
            SizedBox(height: 8.0),
            Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      children: [
                        Icon(Icons.arrow_drop_up, color: primary),
                        Text(
                          value,
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ],
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class CommunitySection extends StatelessWidget {
  final String title;
  final IconData icon;
  final String paragraph;

  const CommunitySection(
      {required this.title, required this.icon, required this.paragraph});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          // Join Community section with icon, title, and more
          // You can use a ListTile or any layout that suits your design
          // Example:
          ListTile(
            leading: Icon(icon, size: 30.0, color: primary),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(width: 8.0),
                Icon(
                  Icons.arrow_forward_ios_sharp,
                  size: 15,
                ),
              ],
            ),
            subtitle: RichText(
              text: TextSpan(
                text: paragraph,
                style: TextStyle(color: textfieldGrey),
                children: <TextSpan>[
                  TextSpan(
                    text: '\nLearn More',
                    style: TextStyle(color: primary),
                  ),
                ],
              ),
            ),
            onTap: () {
              // Handle Join Community action
            },
          ),
        ],
      ),
    );
  }
}
