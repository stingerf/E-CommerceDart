import 'package:flutter/material.dart';
import 'package:skl_e_commerse/pages/login.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(255, 181, 51, 1),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 8),
        child: Column(
          children: [
            // Bagian header dengan gambar profil dan nama pengguna
            Container(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 181, 51, 1),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage(
                      'images/pp/1.jpeg', // Gambar profil dummy
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Sumbul R",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "sumbul@raul.com",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Tombol aksi seperti Edit Profil, Pengaturan, dll.
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  _buildProfileOption(
                    icon: Icons.edit,
                    label: "Edit Profile",
                    onTap: () {
                      // Aksi edit profil
                    },
                  ),
                  _buildProfileOption(
                    icon: Icons.lock,
                    label: "Change Password",
                    onTap: () {
                      // Aksi ubah kata sandi
                    },
                  ),
                  _buildProfileOption(
                    icon: Icons.settings,
                    label: "Settings",
                    onTap: () {
                      // Aksi pengaturan
                    },
                  ),
                  _buildProfileOption(
                    icon: Icons.notifications,
                    label: "Notifications",
                    onTap: () {
                      // Aksi notifikasi
                    },
                  ),
                  _buildProfileOption(
                    icon: Icons.help_outline,
                    label: "Help & Support",
                    onTap: () {
                      // Aksi bantuan
                    },
                  ),
                  _buildProfileOption(
                    icon: Icons.logout,
                    label: "Logout",
                    onTap: () {
                      Navigator.pushNamed(context, '/login');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk membangun widget opsi profil
  Widget _buildProfileOption({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: const Color.fromRGBO(255, 181, 51, 1),
        ),
        title: Text(
          label,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 18),
        onTap: onTap,
      ),
    );
  }
}

void main() => runApp(MaterialApp(
      home: ProfilePage(),
    ));
