import 'package:seller/const/const.dart';

class MessagePage extends StatefulWidget {
  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  int selectedSectionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          color: textPrimary,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Messages',
          style: TextStyle(color: textPrimary, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          // Section Selection Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildSectionButton(
                  label: "Seller Messages", index: 0, icon: Icons.message),

              buildSectionButton(
                  label: "Customer Questions",
                  index: 1,
                  icon: Icons.question_answer_outlined),
              // Add more section buttons as needed
            ],
          ),
          100.heightBox,
          Visibility(
            visible: selectedSectionIndex == 0,
            child: buildSectionContent(
              "Seller Messages",
              Icons.store,
              "This is the seller messages section.",
            ),
          ),
          Visibility(
            visible: selectedSectionIndex == 1,
            child: buildSectionContent(
              "Customer Questions",
              Icons.question_answer,
              "This is the customer questions section.",
            ),
          ),

          // Content Based on Selection

          // Add more sections with Visibility widgets as needed
        ],
      ),
    );
  }

  Widget buildSectionButton(
      {required String label, required int index, required IconData icon}) {
    return ElevatedButton.icon(
      onPressed: () {
        setState(() {
          selectedSectionIndex = index;
        });
      },
      style: ElevatedButton.styleFrom(
        fixedSize: Size(context.screenWidth / 2.0, 24),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
        ),
        primary: selectedSectionIndex == index ? primary : textfieldGrey,
      ),
      label: Text(label),
      icon: Icon(icon),
    );
  }

  Widget buildSectionContent(String title, IconData icon, String description) {
    return Center(
      child: Column(
        children: [
          Icon(
            icon,
            size: 64,
            color: primary,
          ),
          SizedBox(height: 16),
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16),
          Text(
            description,
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
