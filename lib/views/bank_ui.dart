import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class BankUI extends StatelessWidget {
  const BankUI({super.key});

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
        'name': 'ธนาคารกรุงไทย',
        'number': '0-2111-1111',
        'image': 'assets/images/bank_4.png',
      },
      {
        'name': 'ธนาคารกรุงเทพ',
        'number': '1333',
        'image': 'assets/images/bank_1.png',
      },
      {
        'name': 'ธนาคารกรุงศรีอยุธยา',
        'number': '1572',
        'image': 'assets/images/bank_5.png',
      },
      {
        'name': 'ธนาคารกสิกรไทย',
        'number': '0-2888-8888',
        'image': 'assets/images/bank_3.png',
      },
      {
        'name': 'ธนาคารไทยพาณิชย์',
        'number': '0-2777-7777',
        'image': 'assets/images/bank_10.png',
      },
      {
        'name': 'ธนาคารออมสิน',
        'number': '1115',
        'image': 'assets/images/bank_2.png',
      },
      {
        'name': 'ธนาคารทหารไทยธนชาต',
        'number': '0-2299-0000',
        'image': 'assets/images/bank_6.png',
      },
      {
        'name': 'ธนาคารยูโอบี',
        'number': '0-2285-1555',
        'image': 'assets/images/bank_13.png',
      },
      {
        'name': 'ธนาคารซีไอเอ็มบี ไทย',
        'number': '0-2626-7777',
        'image': 'assets/images/bank_16.png',
      },
      {
        'name': 'ธนาคารเกียรตินาคินภัทร',
        'number': '0-2165-5555',
        'image': 'assets/images/bank_11.png',
      },
      {
        'name': 'ธนาคารไทยเครดิต',
        'number': '0-2697-5454',
        'image': 'assets/images/bank_12.png',
      },
      {
        'name': 'ธนาคารทิสโก้',
        'number': '0-2633-6000',
        'image': 'assets/images/bank_14.png',
      },
      {
        'name': 'ธนาคารอิสลามแห่งประเทศไทย',
        'number': '0-2790-8000',
        'image': 'assets/images/bank_15.png',
      },
      {
        'name': 'ธนาคารแลนด์ แอนด์ เฮ้าส์',
        'number': '0-2359-0000',
        'image': 'assets/images/bank_8.png',
      },
      {
        'name': 'ธนาคารอาคารสงเคราะห์',
        'number': '0-2645-9000',
        'image': 'assets/images/bank_9.png',
      },
      {
        'name': 'Citibank',
        'number': '0-2232-2000',
        'image': 'assets/images/bank_7.png',
      },
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          children: [
            Text(
              'สายด่วน\nธนาคาร',
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
                'assets/images/bank_0.png',
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
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    item['number']!,
                    style: GoogleFonts.kanit(
                      fontSize: 13,
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
