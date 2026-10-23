import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutUI extends StatelessWidget {
  const AboutUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black87),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'สายด่วน THAILAND',
          style: GoogleFonts.kanit(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black87,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            children: [
              Text(
                'ผู้จัดทำ',
                style: GoogleFonts.kanit(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 24),
              // University logo
              Image.asset(
                'assets/images/saulogo.png',
                width: 120,
                height: 120,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 8),
              Text(
                'มหาวิทยาลัยเอเชียอาคเนย์',
                style: GoogleFonts.kanit(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 32),
              // Student photo placeholder - using me.png for now
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.grey[200],
                backgroundImage: const AssetImage('assets/images/me.png'),
              ),
              const SizedBox(height: 20),
              Text(
                'รหัสนักศึกษา',
                style: GoogleFonts.kanit(fontSize: 14, color: Colors.grey[600]),
              ),
              Text(
                '6819410048',
                style: GoogleFonts.kanit(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'ชื่อ-สกุลนักศึกษา',
                style: GoogleFonts.kanit(fontSize: 14, color: Colors.grey[600]),
              ),
              Text(
                'สวิตต์ ขำหมื่นไวย',
                style: GoogleFonts.kanit(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'อีเมล์นักศึกษา',
                style: GoogleFonts.kanit(fontSize: 14, color: Colors.grey[600]),
              ),
              Text(
                'student@example.com',
                style: GoogleFonts.kanit(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'ชื่อสาขาวิชา',
                style: GoogleFonts.kanit(fontSize: 14, color: Colors.grey[600]),
              ),
              Text(
                'วิศวกรรมคอมพิวเตอร์',
                style: GoogleFonts.kanit(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'ชื่อคณะ',
                style: GoogleFonts.kanit(fontSize: 14, color: Colors.grey[600]),
              ),
              Text(
                'วิศวกรรมศาสตร์',
                style: GoogleFonts.kanit(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
