import 'package:seller/const/const.dart';
import '../add_product.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          color: Colors.black,
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Tools',
          style: TextStyle(color: textPrimary, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        color: background,
        child: ListView(
          children: <Widget>[
            10.heightBox,
            Section(
              title: 'Basic Function',
              items: [
                ToolItem(
                    icon: Icons.add,
                    label: 'Add Product',
                    destination: AddProductPage()),
                ToolItem(
                  icon: Icons.shop,
                  label: 'Products',
                ),
                ToolItem(
                  icon: Icons.shopping_cart,
                  label: 'Order',
                ),
                ToolItem(
                  icon: Icons.attach_money,
                  label: 'Finance',
                ),
                ToolItem(
                  icon: Icons.autorenew,
                  label: 'Customer Returns',
                ),
                ToolItem(
                  icon: Icons.star_half_rounded,
                  label: 'Reviews',
                ),
                ToolItem(
                  icon: Icons.schedule,
                  label: 'Schedule Drops-offs',
                ),
              ],
            ),
            10.heightBox,
            Section(
              title: 'Marketing',
              items: [
                ToolItem(
                  icon: Icons.mark_email_read,
                  label: 'Campaigns',
                ),
                ToolItem(
                  icon: Icons.adb,
                  label: 'Product Ads',
                ),
              ],
            ),
            10.heightBox,
            Section(
              title: 'Promotions',
              items: [
                ToolItem(
                  icon: Icons.card_giftcard,
                  label: 'Vouchers',
                ),
                ToolItem(
                  icon: Icons.local_shipping,
                  label: 'Free Shipping',
                ),
              ],
            ),
            10.heightBox,
          ],
        ),
      ),
    );
  }
}

class Section extends StatelessWidget {
  final String title;
  final List<ToolItem> items;

  Section({required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 15, right: 10, top: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 5.0, bottom: 20.0),
            child: Text(
              title,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Wrap(
            spacing: 18.0, // Adjust the spacing between items
            runSpacing: 25.0, // Adjust the spacing between rows of items
            alignment: WrapAlignment.spaceBetween,
            children: items,
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class ToolItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final Widget? destination; // Make destination parameter optional

  ToolItem({required this.icon, required this.label, this.destination});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the specified destination screen if provided
        if (destination != null) {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => destination!));
        }
      },
      child: Column(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: const BoxDecoration(
              color: backgroundPrimary, // Change the color as desired
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Icon(
                icon,
                size: 20,
                color: primary, // Change the color as desired
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
          ),
        ],
      ),
    );
  }
}
