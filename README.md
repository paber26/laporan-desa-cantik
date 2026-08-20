# Laporan Akhir Pembinaan Desa Cantik Desa Popontolen Tahun 2026
**Badan Pusat Statistik Kabupaten Minahasa Selatan**

Dokumen digital dan sistem laporan berbasis web interaktif (*HTML/CSS/JS*) yang dirancang modular per-bab untuk memudahkan pengisian data mandiri, serta siap dicetak (*print-ready*) atau diekspor menjadi dokumen **PDF ukuran A4** berstandar resmi BPS.

---

## 🌟 Fitur Utama

1. **Struktur Modular Per-Bab (Folder `sections/`)**:
   - Seluruh bagian laporan telah dipisah ke dalam file-file terpisah di folder `sections/` sehingga Anda dapat melengkapi isi bab tertentu tanpa harus mengedit file HTML raksasa.
   - Disediakan file **`build.bat`** (1-klik) untuk menggabungkan seluruh perubahan di folder `sections/` menjadi `index.html`.

2. **Format Print-Ready A4 Resmi BPS**:
   - Diatur khusus dengan CSS `@media print` dan `@page { size: A4 portrait; margin: 15mm; }`.
   - Otomatis membagi halaman per bab (*page-break-before*) sehingga tampilan cetak rapi, simetris, dan tidak ada teks maupun tabel yang terpotong secara canggung.
   - Header & Footer cetak resmi dengan penomoran halaman Romawi (`i, ii`) pada bagian awal dan Angka Arab (`1, 2, 3...`) pada bab isi.

3. **Tampilan Web Interaktif Modern**:
   - **Sidebar Navigasi Cepat / Daftar Isi Dinamis**: Otomatis mendeteksi posisi baca (*scrollspy*) dan memudahkan navigasi antar-bab.
   - **Tombol Pintas Aksi**:
     - 🖨️ **Cetak / Simpan PDF** (Otomatis membuka dialog cetak browser).
     - 🌓 **Mode Gelap / Mode Terang** (Tersimpan otomatis di preferensi browser).
     - 🔍 **Pengatur Ukuran Huruf (A- / A+)** untuk kenyamanan membaca.
   - **Kartu Ringkasan Statistik Desa**: Visualisasi data demografi, luas wilayah, jumlah KK, dan ketinggian desa Popontolen.

4. **Aset Logo Resmi PNG**:
   - Logo resmi BPS (`logo-bps.png`), Desa Cantik (`logo-desacantik.png`), BerAKHLAK (`logo-berakhlak.png`), dan Sensus Ekonomi 2026 (`logo-sensusekonomi.png`) di dalam folder `images/`.

---

## ✏️ Cara Mengedit & Melengkapi Isi Laporan

1. Buka folder [`sections/`](file:///D:/BPSMinsel/Desa%20Cantik/sections/) di text editor (VS Code, Notepad, dll).
2. Pilih file bab yang ingin Anda edit/lengkapi:
   - `cover.html` → Halaman sampul
   - `kata-pengantar.html` → Kata pengantar & tanda tangan
   - `daftar-isi.html` → Daftar isi
   - `bab1-pendahuluan.html` → Latar belakang, profil desa & tata kelola
   - `bab2-persiapan.html` → Tabel rencana kerja, sosialisasi & pelatihan
   - `bab3-pembinaan.html` → Realisasi pembinaan & manajemen data
   - `bab4-penutup.html` → Kendala & solusi, matriks kendala, kesimpulan & saran
   - `lampiran.html` → Halaman lampiran
3. Simpan perubahan file Anda.
4. **Klik dua kali (Double-click) file `build.bat`** (atau jalankan `powershell .\build.ps1` di terminal). File `index.html` akan langsung ter-update otomatis!

---

## 📖 Cara Membuka & Ekspor ke PDF

### Cara 1: Menggunakan Tombol di Tampilan Web
1. Buka file [`index.html`](file:///D:/BPSMinsel/Desa%20Cantik/index.html) menggunakan browser (Google Chrome, Microsoft Edge, atau Mozilla Firefox).
2. Klik tombol hijau **"Cetak / Simpan PDF"** pada bagian kanan atas.
3. Pada jendela dialog cetak:
   - **Destination / Tujuan**: Pilih **Save as PDF** (Simpan sebagai PDF).
   - **Pages / Halaman**: All (Semua).
   - **Layout**: Portrait.
   - **Paper size / Ukuran kertas**: A4.
   - **Margins**: Default (atau None).
   - **Options**: Centang **Background graphics** (Grafik latar belakang) agar ornamen pita warna merah & abu-abu pada cover tercetak sempurna.
4. Klik **Save / Simpan**.

### Cara 2: Shortcut Keyboard
- Tekan kombinasi tombol `Ctrl + P` (Windows) pada keyboard saat membuka file `index.html`.

---

## 📁 Struktur Direktori Berkas

```
D:\BPSMinsel\Desa Cantik\
│
├── sections/                            # FOLDER MODULAR PER-BAB (Edit di sini)
│   ├── cover.html                       # Cover Halaman Depan
│   ├── kata-pengantar.html              # Kata Pengantar & TTD
│   ├── daftar-isi.html                  # Daftar Isi
│   ├── bab1-pendahuluan.html            # BAB I Pendahuluan
│   ├── bab2-persiapan.html              # BAB II Persiapan
│   ├── bab3-pembinaan.html              # BAB III Pembinaan & Pendampingan
│   ├── bab4-penutup.html                # BAB IV Penutup (Kendala & Saran)
│   └── lampiran.html                    # Cover Lampiran
│
├── build.bat                            # 1-Klik untuk menggabungkan sections/ ke index.html
├── build.ps1                            # Script PowerShell penggabung
├── index.html                           # Halaman hasil gabungan (Buka di browser)
├── css/
│   ├── style.css                        # Tampilan web & tipografi formal dinas
│   └── print.css                        # Aturan cetak A4 & pembagian halaman PDF
├── js/
│   └── main.js                          # Pengendali interaktivitas & event cetak
├── images/                              # Folder aset logo resmi PNG
│   ├── logo-bps.png                     # Logo resmi BPS
│   ├── logo-desacantik.png              # Logo resmi Desa Cantik
│   ├── logo-berakhlak.png               # Logo resmi BerAKHLAK
│   └── logo-sensusekonomi.png           # Logo resmi Sensus Ekonomi 2026
├── Laporan Akhir Desa Cantik Popontolen Tahun 2026.pdf  # File sumber PDF asli
└── README.md                            # Panduan dokumentasi proyek
```

---

## 📌 Riwayat Perubahan (Git Version Control)
Repository ini telah diinisialisasi dengan Git (`git init`) untuk mencatat setiap iterasi dan pembaruan dokumen. Anda dapat melihat log perubahan dengan perintah:
```bash
git log --oneline
```
