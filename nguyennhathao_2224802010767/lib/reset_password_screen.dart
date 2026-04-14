import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reset password"), //
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView( // Sử dụng ListView giúp màn hình có thể cuộn khi bàn phím ảo hiện lên
          children: [
            const SizedBox(height: 40),
            
            // ICON
            const Icon(
              Icons.lock_reset,
              size: 100,
              color: Colors.orange, //
            ),
            const SizedBox(height: 40),
            
            // TRƯỜNG NHẬP EMAIL
            const TextField(
              decoration: InputDecoration(
                labelText: "Email", //
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            
            // NÚT RESET PASSWORD
            ElevatedButton( //
              onPressed: () {
                // Sự kiện click in ra hộp thoại "Đã reset password"
                showDialog(
                  context: context,
                  builder: (_) => const AlertDialog(
                    title: Text('Thông báo'),
                    content: Text("Đã reset password"), //
                  ),
                );
              },
              child: const Text("Reset password"), //
            ),
            const SizedBox(height: 10),
            
            // NÚT BACK
            OutlinedButton( //
              onPressed: () {
                // Sự kiện click trở về màn hình login
                Navigator.pop(context); //
              },
              child: const Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}