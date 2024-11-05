Gilbert Kristian - 2306274951 - PBP D
===
# Wearwise Mobile
Wearwise is an innovative mobile app that revolutionizes your clothing shopping experience. Browse a curated selection of high-quality, stylish apparel while enjoying features like virtual try-ons and personalized recommendations. Committed to sustainability, Wearwise use an eco-friendly materials, allowing you to shop responsibly. 

## List
- :books: [Tugas 7](#Tugas-7)

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
        - Lihat Daftar Produk, ikon cari dan warna mengikuti tema.
        - Tambah Produk, ikon _add_ dan warna mengikuti tema.
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