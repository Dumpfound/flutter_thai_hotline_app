import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class EmgUI extends StatelessWidget {
  const EmgUI({super.key});

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
        'name': 'เหตุร้าย',
        'number': '191',
        'image': 'assets/images/emg_1.png',
      },
      {
        'name': 'ศูนย์ปลอดภัยคมนาคม',
        'number': '1356',
        'image': 'assets/images/emg_2.png',
      },
      {
        'name': 'หน่วยแพทย์กู้ชีพ',
        'number': '1554',
        'image': 'assets/images/emg_7.png',
      },
      {
        'name': 'ศูนย์เอราวัณ',
        'number': '1646',
        'image': 'assets/images/emg_8.png',
      },
      {
        'name': 'เจ็บป่วยฉุกเฉิน',
        'number': '1669',
        'image': 'assets/images/emg_9.png',
      },
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          children: [
            Text(
              'สายด่วน\nอุบัติเหตุ-เหตุฉุกเฉิน',
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
                'assets/images/emg_0.png',
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
