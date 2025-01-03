import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey[200],
                  hintText: "Find services, food, or places",
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(width: 8),
            CircleAvatar(
              radius: 16,
              backgroundColor: Colors.green,
              child: Icon(Icons.person, color: Colors.white, size: 16),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // GoPay Balance and Actions
            Container(
              color: Colors.blue[900],
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("GoPay", style: TextStyle(color: Colors.white)),
                      Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text("Tap for history",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Rp7.434",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.add, color: Colors.white),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.payment, color: Colors.white),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.explore, color: Colors.white),
                            onPressed: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),

            // Shortcut Menu
            GridView.count(
              crossAxisCount: 4,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                _buildShortcutMenu(Icons.motorcycle, "GoRide"),
                _buildShortcutMenu(Icons.directions_car, "GoCar"),
                _buildShortcutMenu(Icons.restaurant, "GoFood"),
                _buildShortcutMenu(Icons.local_shipping, "GoSend"),
                _buildShortcutMenu(Icons.shopping_cart, "GoMart"),
                _buildShortcutMenu(Icons.phone_android, "GoPulsa"),
                _buildShortcutMenu(Icons.star, "GoClub"),
                _buildShortcutMenu(Icons.more_horiz, "More"),
              ],
            ),
            SizedBox(height: 16),

            // Promo Section
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("121 XP to your next treasure",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(height: 8),
                  LinearProgressIndicator(
                    value: 0.6,
                    backgroundColor: Colors.grey[300],
                    color: Colors.green,
                  ),
                  SizedBox(height: 16),
                  _buildPromoCard("Ada GoPay di Tokopedia",
                      "Aktifkan & Sambungkan Akun", "assets/images/image1.png"),
                  SizedBox(height: 16),
                  _buildPromoCard("Sambung Akun ke Tokopedia",
                      "Banyakin Untung", "assets/images/image2.png"),
                  SizedBox(height: 16),
                  _buildPromoCard("Bayar Apa Aja", "Lebih Hemat Pakai GoPay",
                      "assets/images/image3.png"),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.black, // Warna untuk item yang dipilih
        unselectedItemColor:
            Colors.black, // Warna untuk item yang tidak dipilih
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.local_offer), label: "Promos"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Orders"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Chat"),
        ],
      ),
    );
  }

  Widget _buildShortcutMenu(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey[200],
          child: Icon(icon, color: Colors.black),
        ),
        SizedBox(height: 8),
        Text(label, style: TextStyle(fontSize: 12)),
      ],
    );
  }

  Widget _buildPromoCard(String title, String subtitle, String imagePath) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
              color: Colors.grey[300]!, blurRadius: 6, offset: Offset(0, 2)),
        ],
      ),
      child: Row(
        children: [
          Image.asset(imagePath, width: 80, height: 80, fit: BoxFit.cover),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 4),
                Text(subtitle),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
