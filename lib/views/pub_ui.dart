import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class PubUI extends StatelessWidget {
  const PubUI({super.key});

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(scheme: 'tel', path: phoneNumber);
    if (await canLaunchUrl(launchUri)) {
      await launchUrl(launchUri);
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> hotlines = [
      {
        'name': 'การไฟฟ้านครหลวง',
        'number': '0-2111-1111',
        'image': 'assets/images/pub_1.png',
      },
      {
        'name': 'การไฟฟ้าส่วนภูมิภาค',
        'number': '1129',
        'image': 'assets/images/pub_1.png',
      },
      {
        'name': 'การไฟฟ้าฝ่ายผลิต',
        'number': '0-2436-0000',
        'image': 'assets/images/pub_1.png',
      },
      {
        'name': 'การประปานครหลวง',
        'number': '0-2504-0123',
        'image': 'assets/images/pub_0.png',
      },
      {
        'name': 'การประปาส่วนภูมิภาค',
        'number': '0-2222-2222',
        'image': 'assets/images/pub_0.png',
      },
      {
        'name': 'TOT',
        'number': '1100',
        'image': 'assets/images/pub_0.png',
      },
      {
        'name': 'True',
        'number': '1242',
        'image': 'assets/images/pub_0.png',
      },
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          children: [
            Text(
              'สายด่วน\nสาธารณูปโภค',
              textAlign: TextAlign.center,
              style: GoogleFonts.kanit(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 16),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/pub_0.png',
                height: 140,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            ...hotlines.map((item) {
              return Card(
                elevation: 2,
                margin: const EdgeInsets.only(bottom: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      item['image']!,
                      width: 48,
                      height: 48,
                      fit: BoxFit.contain,
                    ),
                  ),
                  title: Text(
                    item['name']!,
                    style: GoogleFonts.kanit(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    item['number']!,
                    style: GoogleFonts.kanit(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                  trailing: IconButton(
                    icon: const Icon(Icons.phone, color: Colors.green),
                    onPressed: () => _makePhoneCall(item['number']!),
                  ),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}
