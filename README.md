1. Struktur Dasar Aplikasi & Navigasi
    MaterialApp: Widget inti yang menyediakan fungsionalitas dan tema Material Design untuk seluruh aplikasi. Semua elemen visual dan navigasi di dalam aplikasi diwariskan dari widget ini.

    Fungsi: Mendefinisikan tema utama (theme, darkTheme), home screen, dan struktur navigasi.

    Scaffold: Widget yang menyediakan kerangka dasar halaman.

    Fungsi: Menyediakan struktur visual seperti app bar (AppBar), badan halaman (body), dan laci samping (jika ada).

    AppBar: Bilah navigasi di bagian atas halaman.

    Fungsi: Menampilkan judul halaman (title), tombol kembali otomatis, dan aksi-aksi (seperti ikon keranjang) di sebelah kanan (actions).

    SafeArea: Widget yang memastikan konten aplikasi tidak tertutup oleh bagian sistem operasi, seperti status bar, notch, atau bottom bar.

    Fungsi: Menyesuaikan tampilan agar aman dari insets sistem.

    Navigator: Sistem yang mengelola tumpukan route (halaman).

    Fungsi: Digunakan dengan Navigator.push untuk berpindah ke halaman baru (CartScreen, ProductDetailScreen, dll.) dan Navigator.of(context).popUntil untuk kembali ke halaman utama.

2. Layout dan Penataan Tata Letak (Layout & Structuring)
    Container: Widget serbaguna yang dapat digunakan untuk menyimpan widget lain, mengatur ukuran, warna latar belakang, batas, dan bayangan.

    Fungsi: Digunakan di mana-mana, terutama sebagai pembungkus kartu produk, tombol keranjang, dan mengatur padding atau margin.

    Padding: Widget yang memberikan ruang kosong di dalam batasnya.

    Fungsi: Memberikan jarak antara konten dan batas Container atau layar, menjaga keterbacaan.

    Row & Column: Widget untuk menata widget anak secara horizontal (Row) atau vertikal (Column).

    Fungsi: Digunakan untuk menyusun elemen seperti harga dan kuantitas, atau judul dan keranjang dalam satu baris.

    Expanded: Widget yang ditempatkan di dalam Row atau Column untuk mengisi sisa ruang yang tersedia.

    Fungsi: Memastikan teks nama produk atau widget lain menggunakan ruang selebar mungkin, mencegah overflow.

    SingleChildScrollView: Widget yang membuat kontennya dapat di-scroll secara vertikal (atau horizontal).

    Fungsi: Memungkinkan seluruh konten pada layar, seperti ProductDetailScreen atau CheckoutScreen (yang memiliki banyak form), dapat digulir jika ukurannya melebihi layar.

    CustomScrollView: Widget yang memungkinkan pembuatan efek scrolling yang canggih, seperti app bar yang menyusut.

    Fungsi: Digunakan di HomeScreen untuk menampung slivers (bagian scrollable khusus).

    SliverToBoxAdapter: Digunakan di dalam CustomScrollView untuk menempatkan widget non-sliver biasa (seperti Padding atau Column) ke dalam konteks scrolling.

    SliverGrid & SliverGridDelegateWithFixedCrossAxisCount: Digunakan untuk menampilkan produk dalam tata letak grid yang dapat di-scroll.

    Fungsi: Membuat tampilan produk di HomeScreen dan ProductListScreen dalam format kolom (2 kolom).

3. Tampilan Data dan Interaksi (Display & Interaction)
    Text: Widget untuk menampilkan teks.

    Fungsi: Menampilkan nama produk, harga, deskripsi, judul, dan status.

    Icon: Widget untuk menampilkan ikon Material Design.

    Fungsi: Menampilkan ikon kategori, ikon keranjang, ikon produk, dan ikon metode pembayaran.

    ListView.builder: Widget yang membangun daftar scrollable item secara dinamis, hanya merender item yang terlihat di layar (lazy loading).

    Fungsi: Digunakan untuk menampilkan daftar keranjang di CartScreen dan daftar horizontal kategori di HomeScreen.

    GestureDetector: Widget yang mendeteksi berbagai gerakan sentuhan.

    Fungsi: Memungkinkan widget seperti CategoryCard atau payment option di CheckoutScreen untuk merespons ketukan (onTap).

    ElevatedButton: Widget tombol utama yang memiliki elevasi.

    Fungsi: Digunakan sebagai tombol aksi penting seperti 'Tambah ke Keranjang', 'Checkout', dan 'Konfirmasi Pesanan'.

    **Stack & Positioned: Digunakan untuk menumpuk widget di atas satu sama lain.

    Fungsi: Digunakan untuk menempatkan badge notifikasi jumlah item keranjang (cart.itemCount) di sudut kanan atas ikon keranjang.

3. Input Pengguna dan Validasi (Forms & Input)
Form: Widget yang berfungsi sebagai wadah untuk form field dan memungkinkan validasi.

    Fungsi: Digunakan di CheckoutScreen untuk mengelompokkan input alamat dan memastikan semua data valid sebelum proses checkout.

    TextFormField: Widget untuk menerima input teks dari pengguna.

    Fungsi: Digunakan di CheckoutScreen untuk input Nama Lengkap, Nomor Telepon, dan Alamat Lengkap.

    TextEditingController: Objek yang mengontrol teks yang sedang diedit dalam TextFormField.

    Fungsi: Memungkinkan kita untuk mendapatkan nilai yang dimasukkan oleh pengguna atau mengaturnya secara programatik.

    GlobalKey<FormState>: Kunci unik yang digunakan untuk mengakses state dari Form.

    Fungsi: Memungkinkan pemanggilan metode _formKey.currentState!.validate() untuk memeriksa validasi semua field dalam form.
4. Fitur Khusus
Dismissible: Widget yang memungkinkan item anak untuk dihapus dengan gesture geser (swipe).

    Fungsi: Digunakan di CartScreen untuk menghapus item dari keranjang dengan menggeser kartu item ke samping.

    CircularProgressIndicator: Widget yang menampilkan indikator kemajuan melingkar.

    Fungsi: Digunakan di CheckoutScreen saat _isProcessing bernilai true untuk menunjukkan bahwa proses checkout sedang berlangsung.

    SnackBar: Pemberitahuan ringan yang muncul di bagian bawah layar untuk memberikan umpan balik singkat kepada pengguna.

    Fungsi: Digunakan untuk mengonfirmasi bahwa produk telah ditambahkan atau dihapus dari keranjang.

    AlertDialog: Jendela dialog yang muncul di tengah layar.

    Fungsi: Digunakan di CheckoutScreen untuk menampilkan pesan sukses setelah pesanan dikonfirmasi.