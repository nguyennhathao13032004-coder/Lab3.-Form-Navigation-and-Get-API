import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration"),
        // Mặc định Scaffold sẽ tự thêm nút Back (mũi tên) trên AppBar 
        // nếu màn hình này được push vào từ Navigator.
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView( // Dùng ListView để tránh lỗi tràn màn hình khi bàn phím hiện lên
          children: [
            const SizedBox(height: 20),
            const Icon(
              Icons.person_add,
              size: 100,
              color: Colors.blue,
            ),
            const SizedBox(height: 30),
            
            // USERNAME
            const TextField(
              decoration: InputDecoration(
                labelText: "Username",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            
            // EMAIL
            const TextField(
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 15),
            
            // PASSWORD
            const TextField(
              obscureText: true, // Ẩn mật khẩu
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),
            
            // NÚT SIGN UP
            OutlinedButton(
              onPressed: () {
                // Xử lý sự kiện in ra hộp thoại thông báo "Đăng ký thành công"
                showDialog(
                  context: context,
                  builder: (_) => const AlertDialog(
                    title: Text('Thông báo'),
                    content: Text("Đăng ký thành công"),
                  ),
                );
              },
              child: const Text("Sign up"),
            ),
            const SizedBox(height: 10),
            
            // NÚT BACK
            OutlinedButton(
              onPressed: () {
                // Xử lý sự kiện trở về màn hình login
                Navigator.pop(context);
              },
              child: const Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}