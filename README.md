Gilbert Kristian - 2306274951 - PBP D
===
# Wearwise Mobile
Wearwise is an innovative mobile app that revolutionizes your clothing shopping experience. Browse a curated selection of high-quality, stylish apparel while enjoying features like virtual try-ons and personalized recommendations. Committed to sustainability, Wearwise use an eco-friendly materials, allowing you to shop responsibly. 

## Direct List
- :books: [Tugas 7](#Tugas-7)
- :books: [Tugas 8](#Tugas-8)
- :books: [TUgas 9](#Tugas-9)

## Tugas-7
- Jelaskan apa yang dimaksud dengan _stateless widget_ dan _stateful widget_ dan jelaskan perbedaan dari keduanya!

    Jawab :

    _Stateless Widget_ adalah _widget_ yang tidak memiliki _state_ dan tidak akan berubah saat aplikasi berjalan. _Stateless widget_ cocok digunakan untuk komponen yang tidak tergantung pada perubahan data, contohnya seperti `Text`, `Image`.

    _Stateful Widget_ adalah _widget_ yang memiliki _state_ yang dapat berubah selama aplikasi berjalan. _Stateful Widget_ dapat diperbarui dengan `setState`. Contoh dari _stateful widget_ adalah `Checkbox`, atau `form field` yang menerima input dari pengguna.

- Sebutkan _widget_ apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya!

    Jawab :
    1. Scaffold : Menyediakan struktur dasar halaman dengan bagian body untuk konten utama
    2. AppBar : Menyediakan _header_ untuk aplikasi
    3. Padding : Memberikan ruang di sekeliling _widget_ yang ada di dalamnya.
    4. Column : Menyusun _widget_ secara vertikal.
    5. Row : Menyusun _widget_ secara horizontal.
    6. SizedBox : Memberikan ruang kosong dengan ukuran tertentu.
    7. Center : Menempatkan _child_-nya di tengah area yang tersedia.
    8. Gridview.count : Menyusun _widget_ dalam bentuk _grid_ dengan jumlah kolom yang ditentukan.
    9. Card : Menampilkan informasi dengan tampilan kotak dengan _shadow_.
    10. Text : Menampilkan teks di layar.
    11. Icon : Menampilkan ikon di layar.
    12. Material : Menyediakan material _design_ untuk _widget_ di dalamnya.
    13. InkWell : Menambahkan efek sentuhan pada widget yang dapat ditekan.
    14. SnackBar : Menampilkan pesan singkat di bagian bawah layar.
    15. Container : Sebuah _widget_ dasar yang dapat digunakan untuk mengatur ukuran dan posisi.
    16. MaterialApp : Komponen utama untuk aplikasi dengan desain Material yang menyediakan tema global dan sistem navigasi di seluruh aplikasi.
    17. GridView : Komponen utama untuk aplikasi dengan desain Material, yang menyediakan tema global dan sistem navigasi di seluruh aplikasi.

- Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut!

    Jawab :

    Fungsi `setState()` berfungsi untuk memberi tahu bahwa ada perubahan pada _state_ dari suatu _stateful widget_ sehingga _widget_ tersebut perlu diperbarui pada UI.

    Semua variabel yang berada dalam kelas _state_ dari _stateful widget_ dapat terdampak oleh `setState()`.

- Jelaskan perbedaan antara `const` dengan `final`!

    Jawab :

    `final` : hanya dapat diinisialisasi sekali dan nilainya tetap setelah inisialisasi. Namun, nilainya bisa ditentukan saat _runtime_, artinya bisa bergantung pada nilai yang hanya diketahui ketika program berjalan.
    
    `constant` : bersifat _compile-time constant_, yang berarti nilainya harus diketahui dan tetap pada waktu kompilasi.

    Contoh : 
    ```dart
    final date = DateTime.now(); 
    const pi = 3.14;
    ```  

- Jelaskan bagaimana cara kamu mengimplementasikan _checklist-checklist_ di atas!

    Jawab :
    1. Membuat proyek Flutter di direktori lokal
    2. Menjalankan _command_ berikut di terminal:
        ```terminal
        flutter create wearwise_mobile
        cd wearwise_mobile
        ```
    3. Membuat file bernama `menu.dart` di `lib`
    4. Menambahkan `import 'package:flutter/material.dart';` di file `menu.dart`
    5. Memindahkan MyHomePage dan  MyHomePageState ke dalam file `menu.dart`
    6. Menambahkan kode ini di main.dart `import 'package:wearwise_mobile/menu.dart';`
    7. Menggunakan colorScheme berikut di `main.dart`:
        ```dart
        colorScheme: ColorScheme.fromSwatch(
        primarySwatch: Colors.deepPurple,
        ).copyWith(secondary: Colors.deepPurple[400]),
        ``` 
    8. Menghapus `const MyHomePage(title: 'Flutter Demo Home Page')` menjadi `MyHomePage(), ` di `main.dart`
    9. Menghapus semua isi dari class `MyHomePage`
    10. Menambahkan `MyHomePage({super.key});` sebagai _constructor class_ `MyHomePage`.
    11. Menghapus seluruh class class _`MyHomePageState extends State<MyHomePage>`
    12. Menambahkan tiga tombol dalam `Column` di `Scaffold`:
        - Lihat Daftar Produk, ikon cari dan warna biru.
        - Tambah Produk, ikon _add_ dan warna hijau.
        - Logout, ikon logout dan warna merah.
    13. Membuat ItemHomePage seperti berikut
        ```dart
        final List<ItemHomepage> items = [
        ItemHomepage("Lihat Daftar Produk", Icons.search, Colors.blue),
        ItemHomepage("Tambah Produk", Icons.add, Colors.green),
        ItemHomepage("Logout", Icons.logout, Colors.red)];
        ```
    14. Mengganti ItemCard dan widgetnya menjadi seperti berikut :
        ```dart
        class ItemHomepage {
        final String name;
        final IconData icon;
        final Color color;

        ItemHomepage(this.name, this.icon, this.color);
        }

        class ItemCard extends StatelessWidget {
        final ItemHomepage item;
        const ItemCard(this.item, {super.key});

        @override
        Widget build(BuildContext context) {
            return Material(
            // memilih warna latar belakang dari tema aplikasi atau warna yang ditentukan.
            color: item.color,
            ...
            ...
            ...
            )
        }
        }
        ```
    15. Menambahkan aksi onTap pada setiap tombol untuk memunculkan SnackBar.
    ```dart
    onTap: () {
        // Menampilkan pesan SnackBar saat kartu ditekan.
        ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(
            SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
        );
        },
    ```
    16. Menjalankan `flutter run` untuk menjalankan aplikasi.

## Tugas-8
- Apa kegunaan `const` di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan `const`, dan kapan sebaiknya tidak digunakan?

    JAWAB :
    
    * Kegunaan `const` di Flutter adalah untuk mendeklarasikan nilai yang bersifat konstan atau tidak akan berubah selama _runtime_ aplikasi.

    * Keuntungan menggunakan `const` adalah dapat mengoptimalkan penggunaan memori dan meningkatkan kinerja dengan karena `const` hanya dibuat sekali dan dapat digunakan kembali.
    Selain itu, `const` juga dapat mencegah pembuatan ulang _widget_ yang serupa sehingga mempercepat proses _rendering_.

    * Kita sebaiknya menggunakan `const` pada saat kondisi _widget_ atau nilai yang tidak akan berubah atau bersifat bersifat statis dan tidak tergantung pada input dinamis, seperti ikon, gambar.

    * Kita sebaiknya tidak menggunakan  `const` pada saat kondisi _widget_ berisi data yang mungkin berubah seperti data dari API, _input_ pengguna, atau nilai yang dihasilkan dari sebuah _function_.

-  Jelaskan dan bandingkan penggunaan `Column` dan `Row` pada Flutter. Berikan contoh implementasi dari masing-masing _layout widget_ ini!

    JAWAB :

    `Column` digunakan untuk menyusun _widget_ secara vertikal (ditampilkan secara berurutan dari atas ke bawah).

    Contoh : 
    
    ```dart
    Column(
    children: <Widget>[
        Text('Item 1'),
        Text('Item 2'),
        Text('Item 3'),
    ],
    )
    ```

    `Row` digunakan untuk menyusun _widget_ secara horizontal (ditampilkan secara berurutan dari kiri ke kanan.)

    Contoh : 
    
    ```dart
    Row(
    children: <Widget>[
        Icon(Icons.home),
        Text('Home'),
        Icon(Icons.settings),
    ],
    )
    ```

- Sebutkan apa saja elemen _input_ yang kamu gunakan pada halaman _form_ yang kamu buat pada tugas kali ini. Apakah terdapat elemen _input_ Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

    JAWAB : 

    Elemen _input_ yang digunakan : 
    - `TextFormField` untuk memasukkan nama teks berupa nama produk, deskripsi produk, dan kuantitas produk.

    Elemen _input_ lain yang tidak digunakan : 
    - `Checkbox` untuk memilih opsi
    - `Radio` untuk memilih satu opsi dari beberapa opsi yang tersedia.
    - `Switch` untuk mengubah status antara dua keadaan, seperti mengaktifkan atau menonaktifkan
    - `DropdownButton` untuk memilih satu opsi dari daftar yang ditampilkan dalam bentuk _dropdown_.
    
- Bagaimana cara kamu mengatur tema (_theme_) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

    JAWAB : 
    Menggunakan `MaterialApp` sebagai _widget_ utama, lalu membuat objek `ThemeData` untuk pendefinisian warna dan gaya teks. Saya menggunakan warna ungu sebagai _theme color_ di aplikasi saya.

    ```dart
    class MyApp extends StatelessWidget {
    const MyApp({super.key});

    // This widget is the root of your application.
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
        title: 'Wearwise Mobile',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch( primarySwatch: Colors.deepPurple, ).copyWith(secondary: Colors.deepPurple[400]),
            useMaterial3: true,
        ),
        home: MyHomePage(),
        );
    }
    }
    ```

-  Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

    JAWAB :

    Menggunakan widget `Navigator` dan bisa menggunakan metode `push` dan `pop` untuk berpindah antarhalaman.

    Contoh penggunaan di _code_ :

    ```dart
    ListTile(
    leading: const Icon(Icons.add_circle_outlined),
        title: const Text('Tambah Produk'),
        // Bagian redirection ke ProductEntry
        onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                builder: (context) => const ProductEntryFormPage(),
                ));
        },
    ),
    ``` 

## Tugas-9
-  Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?

    JAWAB :

    Model perlu dibuat untuk pengambilan ataupun pengiriman data JSON karena model memberikan representasi yang terstruktur dan konsisten terhadap data yang akan kita gunakan dalam aplikasi. Dengan adanya model, kita dapat dengan mudah mengonversi data JSON ke dalam objek yang dapat digunakan dalam kode secara lebih aman. Selain itu, model membantu memastikan validasi tipe data, format, serta kelengkapan data sehingga meminimalkan risiko kesalahan yang sulit dideteksi. 
    
    Jika kita tidak membuat model terlebih dahulu, kemungkinan besar kita akan mengalami kesulitan dalam mengelola data JSON secara terstruktur. Mungkin saja, kita tidak akan mendapatkan _error_ secara langsung, tetapi tanpa adanya validasi dan panduan yang jelas dari model, akan sulit untuk memastikan bahwa data yang kita ambil atau kirim memiliki struktur yang benar yang dapat menyebabkan masalah pada aplikasi.

- Jelaskan fungsi dari library `http` yang sudah kamu implementasikan pada tugas ini!

    JAWAB : 

    Fungsi dari library `HTTP` adalah untuk menangani permintaan (_request_) yang memungkinkan aplikasi untuk menerima dan memproses permintaan dari klien, seperti `GET`, `POST`, `PUT`, `DELETE`, dan lainnya. Selain itu, `HTTP` juga dapat mengirimkan respons (_response_) yang berisi data yang diinginkan oleh klien dan juga dapat memberikan informasi pada _client_ tentang hasil dari permintaan, seperti 200 (OK), 404 (_Not Found_), 500 (_Internal Server Error_), dan lainnya. `HTTP` juga dapat memungkinkan kita untuk mengelola permintaan dan respons JSON dengan mudah sehingga memudahkan integrasi dengan aplikasi _frontend_ atau layanan lain.

- Jelaskan fungsi dari `CookieRequest` dan jelaskan mengapa instance `CookieRequest` perlu untuk dibagikan ke semua komponen di aplikasi Flutter!

    JAWAB :

    `CookieRequest` adalah sebuah kelas atau objek yang digunakan dalam konteks aplikasi Flutter untuk menangani permintaan `HTTP` yang melibatkan _cookies_.  Fungsi dari `CookieRequest` adalah untuk mengelola _cookies_ yang digunakan dalam permintaan `HTTP`, membantu dalam menjaga sesi pengguna, menyimpan token otentikasi atau informasi sesi yang diperlukan untuk melakukan permintaan yang aman ke _server_, dan lain-lain.

    `CookieRequest` perlu dibagikan ke semua komponen di aplikasi Flutter karena dapat menjaga konsistensi data, mengurangi kompleksitas pengembang dalam membuat _instance_ baru setiap kali melakukan permintaan `HTTP`, dan dapat dengan mudah mengelola sesi pengguna dan _cookies_ di seluruh aplikasi sehingga memungkinkan kita untuk memperbarui atau menghapus _cookies_ dengan mudah jika diperlukan.

- Jelaskan mekanisme pengiriman data mulai dari _input_ hingga dapat ditampilkan pada Flutter!

    JAWAB :

    Mekanisme pengiriman data dalam aplikasi Flutter dimulai dengan input dari pengguna melalui _widget input_ seperti `TextField` atau `Checkbox`, di mana data yang dimasukkan disimpan dalam variabel atau model yang sesuai. Setelah pengguna memberikan _input_, langkah berikutnya adalah melakukan validasi untuk memastikan data sesuai dengan format yang diharapkan. Jika data perlu dikirim ke _server_, kita menggunakan library `http` untuk melakukan permintaan `HTTP`, seperti metode `POST` untuk mengirimkan data ke _endpoint_ yang ditentukan. Setelah pengiriman, aplikasi menerima respons dari _server_ yang mungkin berupa konfirmasi atau data baru dan kita perlu memproses respons ini, biasanya dengan mengonversi data JSON menjadi objek Dart yang dapat digunakan. Untuk menampilkan data yang telah diproses di antarmuka pengguna, kita memanfaatkan state management dengan memanggil `setState()` yang memberi tahu Flutter untuk merender ulang _widget_ yang relevan. Dengan demikian, data baru atau perubahan yang terjadi akan ditampilkan secara otomatis di _User Interface_ sehingga menciptakan pengalaman interaktif bagi pengguna.

-  Jelaskan mekanisme autentikasi dari _login_, _register_, hingga _logout_. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter!

    JAWAB : 

    - _Register_
    1. Pengguna mengisi formulir _register_ di Flutter, misalnya: _username_ dan _password._

    2. Data ini kemudian dikirim sebagai permintaan `POST` ke Django menggunakan `http` atau `CookieRequest`.

    3. Django memvalidasi data, seperti memeriksa apakah _username_ sudah ada.

    4. Jika validasi berhasil, Django membuat akun pengguna baru di _database_ dengan menyimpan data seperti _username_ (unik) dan password.

    5. Django mengembalikan respons sukses (HTTP 201 _Created_) ke Flutter jika pendaftaran berhasil.

    6. Jika pendaftaran berhasil, Flutter dapat menampilkan pesan sukses atau mengarahkan pengguna ke halaman _login_.

    - _Login_
    1. Pengguna memasukkan _username_ dan _password_ pada formulir _login_.

    2. Flutter mengirim data ini ke Django melalui permintaan POST ke _endpoint_ autentikasi.

    3. Django menerima permintaan, memvalidasi _username_ dan _password_, dan membandingkannya dengan data yang ada di _database_.

    4. Jika validasi berhasil, Django membuat _access token_, lalu mengembalikan respons sukses (HTTP 200 OK) dengan data, termasuk _access token_.

    5. Flutter menyimpan _access token_ ini secara lokal untuk digunakan dalam permintaan API selanjutnya.

    6. Pengguna diarahkan ke halaman utama (menu utama aplikasi).

    - _Logout_
    1. Pengguna memilih opsi _logout_ di aplikasi Flutter
   
    2. Flutter mengirimkan permintaan ke _endpoint logout_ di Django, atau cukup menghapus _access token_ lokal.

    3. Jika menggunakan _session-based authentication_, Django akan menghapus sesi aktif dari _server_.

    4. Flutter menghapus _access token_ yang disimpan secara lokal.

    5. Pengguna diarahkan kembali ke halaman _login_.

- Jelaskan bagaimana cara kamu mengimplementasikan _checklist_ di atas secara _step-by-step_! (bukan hanya sekadar mengikuti _tutorial_)!

    JAWAB :

    1. Membuat app `authentication` di proyek Django 'Wearwise'
    2. Menambahkan `authentication` ke `INSTALLED_APPS` pada main project `settings.py`
    3. Menjalankan `pip install django-cors-headers`, lalu menambahkan django-cors-headers ke `requirements.txt`.
    4. Menambahkan `corsheaders.middleware.CorsMiddleware` ke MIDDLEWARE di settings.py
    5. Menambahkan beberapa variabel berikut di `settings.py`:
        ```python
        CORS_ALLOW_ALL_ORIGINS = True
        CORS_ALLOW_CREDENTIALS = True
        CSRF_COOKIE_SECURE = True
        SESSION_COOKIE_SECURE = True
        CSRF_COOKIE_SAMESITE = 'None'
        SESSION_COOKIE_SAMESITE = 'None
        ```
    6. Menambahkan "10.0.2.2" ke ALLOWED_HOST di settings.py
    7. Membuat _view_ untuk login di `authentication/views.py.`
        ```python
        from django.contrib.auth import authenticate, login as auth_login
        from django.http import JsonResponse
        from django.views.decorators.csrf import csrf_exempt

        @csrf_exempt
        def login(request):
            username = request.POST['username']
            password = request.POST['password']
            user = authenticate(username=username, password=password)
            if user is not None:
                if user.is_active:
                    auth_login(request, user)
                    # Status login sukses.
                    return JsonResponse({
                        "username": user.username,
                        "status": True,
                        "message": "Login sukses!"
                        # Tambahkan data lainnya jika ingin mengirim data ke Flutter.
                    }, status=200)
                else:
                    return JsonResponse({
                        "status": False,
                        "message": "Login gagal, akun dinonaktifkan."
                    }, status=401)

            else:
                return JsonResponse({
                    "status": False,
                    "message": "Login gagal, periksa kembali email atau kata sandi."
                }, status=401)
        ```
    8. Membuat `urls.py` di folder `authentication` dan menambahkan _routing_ terhadap fungsi yang sudah dibuat dengan _endpoint_ `login/`.

        ```python
        from django.urls import path
        from authentication.views import login

        app_name = 'authentication'

        urlpatterns = [
            path('login/', login, name='login'),
        ]
        ``` 
    9. Menambahkan _path_('auth/', include('authentication.urls')), pada file `wear_wise/urls.py`.
    10. Memasang _package_ di direktori wearwise_mobile
        ```terminal
        flutter pub add provider
        flutter pub add pbp_django_auth
        ```
    11. Mengubah isi file `main.dart`(sesuai dengan _file_ saya)
    12. Membuat subfolder `screens` di direktori `lib` dan menambahkan file bernama `login.dart` (kode sesuai yang ada di file saya)
    13. Mengubah `home: MyHomePage()` menjadi `home: const LoginPage()` di `main.dart`
    14. Menambahkan _function_ `register()` di `authentication/views.py` di proyek Wearwise
        ```python
        from django.contrib.auth.models import User
        import json
        @csrf_exempt
        def register(request):
            if request.method == 'POST':
                data = json.loads(request.body)
                username = data['username']
                password1 = data['password1']
                password2 = data['password2']

                # Check if the passwords match
                if password1 != password2:
                    return JsonResponse({
                        "status": False,
                        "message": "Passwords do not match."
                    }, status=400)
                
                # Check if the username is already taken
                if User.objects.filter(username=username).exists():
                    return JsonResponse({
                        "status": False,
                        "message": "Username already exists."
                    }, status=400)
                
                # Create the new user
                user = User.objects.create_user(username=username, password=password1)
                user.save()
                
                return JsonResponse({
                    "username": user.username,
                    "status": 'success',
                    "message": "User created successfully!"
                }, status=200)
            
            else:
                return JsonResponse({
                    "status": False,
                    "message": "Invalid request method."
                }, status=400)
        ```
    15. Menambahkan _path_ baru tersebut di `authentication/urls.py.`
    16. Menambahkan file `register.dart` di folder `screens` (kode sesuai dengan file saya)
    17. Membuat model yang menyesuaikan dengan data JSON dengan Quicktype.
    18. Menambahkan `<uses-permission android:name="android.permission.INTERNET" />` di `android/app/src/main/AndroidManifest.xml`
    19. Membuat file `list_productentry.dart` di folder `screens` (kode sesuai dengan file saya) dan juga membuat `productdetail.dart` untuk menampilkan detail produk
    20. Menambahkan `list_productentry.dart` ke `widgets/left_drawer.dart`
    21. Membuat sebuah fungsi _view_ baru pada `main/views.py` di proyek Wearwise (sesuai dengan kode saya).
    22. Menambahkan _path_ di `main/urls.py`
    23. Menghubungkan halaman `productentry_form.dart` dengan `CookieRequest` dan mengubah perintah pada `onPressed` (sesuai dengan kode saya)
    24. Membuat metode _view_ untuk _logout_ di `authentication/views.py`
        ```python
        from django.contrib.auth import logout as auth_logout
        @csrf_exempt
        def logout(request):
            username = request.user.username

            try:
                auth_logout(request)
                return JsonResponse({
                    "username": username,
                    "status": True,
                    "message": "Logout berhasil!"
                }, status=200)
            except:
                return JsonResponse({
                "status": False,
                "message": "Logout gagal."
                }, status=401)
        ```
    25. Menambahkan _path_ `authentication/urls.py` (sesuai dengan kode saya) 
    26. Menambahkan `final request = context.watch<CookieRequest>();` di `product_card.dart`
    27. Mengubah perintah onTap: () {...} pada widget Inkwell menjadi onTap: () async {...} agar bisa melakukan  logout secara asinkronus.
        (sesuai dengan kode saya)

















 




