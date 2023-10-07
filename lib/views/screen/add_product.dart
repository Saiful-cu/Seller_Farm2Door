import 'package:seller/const/const.dart';
import 'dart:async';

class AddProductPage extends StatefulWidget {
  @override
  _AddProductPageState createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  String selectedCategory = '';
  TextEditingController productNameController = TextEditingController();
  TextEditingController youtubeLinkController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController specificationController = TextEditingController();
  TextEditingController keywordsController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          color: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'Add Product',
          style: TextStyle(color: textPrimary, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            customTextField(
              title: "Product Name",
              titleHint: "Enter product Name",
              Controllert: productNameController,
              line: 1,
            ),
            SizedBox(height: 16.0),
            Text('Categories:'),
            // DropdownButtonFormField<String>(
            //   value: selectedCategory,
            //   onChanged: (value) {
            //     setState(() {
            //       selectedCategory = value!;
            //     });
            //   },
            //   items: [
            //     'Category 1',
            //     'Category 2',
            //     'Category 3',
            //   ].map<DropdownMenuItem<String>>((String value) {
            //     return DropdownMenuItem<String>(
            //       value: value,
            //       child: Text(value),
            //     );
            //   }).toList(),
            // ),
            SizedBox(height: 16.0),
            Text('Add Photos:'),
            Row(
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // Handle upload photos action
                  },
                  icon: Icon(Icons.upload_file),
                  style: ElevatedButton.styleFrom(
                    primary: primary,
                  ),
                  label: Text('Upload Photos'),
                ),
                const SizedBox(width: 16.0),
                ElevatedButton.icon(
                  onPressed: () {
                    // Handle take pictures action
                  },
                  style: ElevatedButton.styleFrom(
                    primary: primary,
                  ),
                  icon: const Icon(Icons.camera),
                  label: const Text('Take Pictures'),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            customTextField(
              title: "Product Video (Youtube Link)",
              titleHint: "www.youtube.com",
              Controllert: youtubeLinkController,
              line: 2,
            ),

            const SizedBox(height: 16.0),
            customTextField(
              title: "Descriptions",
              titleHint: "Enter product descriptions",
              Controllert: descriptionController,
              line: 4,
            ),

            const SizedBox(height: 16.0),
            customTextField(
              title: "Specifications",
              titleHint: "Enter product specifications",
              Controllert: specificationController,
              line: 2,
            ),
            const SizedBox(height: 16.0),
            customTextField(
                title: "Product Keywords",
                titleHint: "Enter product keywords",
                Controllert: keywordsController,
                line: 2),

            const SizedBox(height: 16.0),
            customTextField(
              title: "Price",
              titleHint: "Enter product price",
              Controllert: priceController,
              line: 1,
            ),
            const SizedBox(height: 32.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: primary,
                  padding: EdgeInsets.only(
                    left: context.screenWidth / 2 - 40,
                    right: context.screenWidth / 2 - 40,
                    top: 10,
                    bottom: 10,
                  )),
              onPressed: () {
                // Handle submit button action
              },
              child: const Text(
                'Submit',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    productNameController.dispose();
    youtubeLinkController.dispose();
    descriptionController.dispose();
    specificationController.dispose();
    keywordsController.dispose();
    priceController.dispose();
    super.dispose();
  }
}

class customTextField extends StatelessWidget {
  final String title;
  final String titleHint;
  final TextEditingController Controllert;
  final int line;

  customTextField({
    required this.title,
    required this.titleHint,
    required this.Controllert,
    required this.line,
    // Icon parameter
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: Controllert,
      maxLines: line,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        labelText: title,
        hintText: titleHint,
        border: outlineInputBorder,
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
      ),
    );
  }

  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(5.0),
    borderSide: BorderSide(color: Colors.grey),
  );
}
