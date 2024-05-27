class FakeHttpService {
  Future<Map<String, dynamic>> post(
    String url, {
    required Map<String, dynamic> body,
  }) async {
    // Simulate a network delay
    await Future.delayed(const Duration(seconds: 1));

    if (url == 'https://api.example.com/signin') {
      if (body['email'] == 'user@example.com' &&
          body['password'] == 'password') {
        return {
          'id': '1',
          'email': 'user@example.com',
          'username': 'Fake User',
        };
      } else {
        throw Exception('Invalid credentials');
      }
    }

    throw Exception('Unknown endpoint');
  }
}
