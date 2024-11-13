Gilbert Kristian - 2306274951 - PBP D
===
# Wearwise Mobile
Wearwise is an innovative mobile app that revolutionizes your clothing shopping experience. Browse a curated selection of high-quality, stylish apparel while enjoying features like virtual try-ons and personalized recommendations. Committed to sustainability, Wearwise use an eco-friendly materials, allowing you to shop responsibly. 

## Direct List
- :books: [Tugas 7](#Tugas-7)
- :books: [Tugas 8](#Tugas-8)

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




