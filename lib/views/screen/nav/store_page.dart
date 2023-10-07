import '../../../const/const.dart';

class StoreSettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
          elevation: 3.0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back, color: textPrimary),
          ),
          backgroundColor: Colors.white,
          title: const Text(
            'Store Setting',
            style: TextStyle(color: textPrimary, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.edit,
                  size: 20,
                  color: textPrimary,
                )),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Logout",
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ))
          ]),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.white,
              child: Column(
                children: [
                  const SectionTitle(title: 'Store Profile'),
                  const Divider(
                    thickness: 0.5,
                  ),
                  10.heightBox,
                  buildFormField('Store Name', 'My Store'),
                  buildFormField('Contact Email', 'contact@example.com'),
                  buildFormField('Phone Number', '+880 131-456-7890'),
                  buildFormField('Store Policies', 'Edit Policies'),
                  buildFormField('Return/Exchange Policies', 'Edit Policies'),
                ],
              ),
            ),
            10.heightBox,
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.white,
              child: Column(
                children: [
                  const SectionTitle(title: 'Payment Settings'),
                  const Divider(
                    thickness: 0.5,
                  ),
                  10.heightBox,
                  buildPaymentMethod('Bikas', "assets/images/Bikas.png"),
                  const Divider(
                    thickness: 0.5,
                  ),
                  buildPaymentMethod(
                      'DBBL Nexus Card', "assets/images/DBBL.png"),
                  const Divider(
                    thickness: 0.5,
                  ),
                  buildPaymentMethod('Nogod', "assets/images/nogod.png"),
                ],
              ),
            ),
            10.heightBox,
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.white,
              child: Column(
                children: [
                  const SectionTitle(title: 'Shipping Settings'),
                  const Divider(
                    thickness: 0.5,
                  ),
                  const SizedBox(height: 16.0),
                  buildShippingOption('Standard Shipping', '2-5 days', '৳5.99'),
                  buildShippingOption('Express Shipping', '1-2 days', '৳9.99'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFormField(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
        ),
        const SizedBox(height: 5.0),
        TextFormField(
          initialValue: value,
          readOnly: true,
          decoration: const InputDecoration(
            // border: OutlineInputBorder(
            //   borderRadius: BorderRadius.circular(8.0),
            // ),
            contentPadding: EdgeInsets.all(12.0),
          ),
        ),
        const SizedBox(height: 16.0),
      ],
    );
  }

  Widget buildPaymentMethod(String name, String imagePath) {
    return ListTile(
      leading: Image.asset(
        imagePath,
        width: 32.0,
        height: 32.0,
      ),
      title: Text(
        name,
        style: TextStyle(fontSize: 18.0),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: 20.0,
      ),
      onTap: () {
        // Handle payment method settings
      },
    );
  }

  Widget buildShippingOption(String name, String duration, String price) {
    return ListTile(
      title: Text(
        name,
        style: const TextStyle(fontSize: 18.0),
      ),
      subtitle: Text(
        'Estimated Delivery: $duration',
        style: const TextStyle(fontSize: 14.0),
      ),
      trailing: Text(
        price,
        style: const TextStyle(
          fontSize: 18.0,
          color: primary,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {
        // Handle shipping option settings
      },
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: primary,
          ),
        ),
      ),
    );
  }
}
