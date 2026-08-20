# Laporan Akhir Pembinaan Desa Cantik Desa Popontolen Tahun 2026
**Badan Pusat Statistik Kabupaten Minahasa Selatan**

Dokumen digital dan sistem laporan berbasis web interaktif (*HTML/CSS/JS*) yang dirancang khusus untuk memenuhi standar publikasi resmi dan siap dicetak (*print-ready*) atau diekspor menjadi dokumen **PDF ukuran A4** dengan kualitas tinggi.

---

## 🌟 Fitur Utama

1. **Format Print-Ready A4 Resmi BPS**:
   - Diatur khusus dengan CSS `@media print` dan `@page { size: A4 portrait; margin: 15mm; }`.
   - Otomatis membagi halaman per bab (*page-break-before*) sehingga tampilan cetak rapi, simetris, dan tidak ada teks maupun tabel yang terpotong secara canggung.
   - Header & Footer cetak resmi dengan penomoran halaman Romawi (`i, ii`) pada bagian awal dan Angka Arab (`1, 2, 3...`) pada bab isi.

2. **Tampilan Web Interaktif Modern**:
   - **Sidebar Navigasi Cepat / Daftar Isi Dinamis**: Otomatis mendeteksi posisi baca (*scrollspy*) dan memudahkan navigasi antar-bab.
   - **Tombol Pintas Aksi**:
     - 🖨️ **Cetak / Simpan PDF** (Otomatis membuka dialog cetak browser).
     - 🌓 **Mode Gelap / Mode Terang** (Tersimpan otomatis di preferensi browser).
     - 🔍 **Pengatur Ukuran Huruf (A- / A+)** untuk kenyamanan membaca.
   - **Kartu Ringkasan Statistik Desa**: Visualisasi data demografi, luas wilayah, jumlah KK, dan ketinggian desa Popontolen.

3. **Aset Logo Resmi PNG**:
   - Logo resmi BPS (`logo-bps.png`), Desa Cantik (`logo-desacantik.png`), BerAKHLAK (`logo-berakhlak.png`), dan Sensus Ekonomi 2026 (`logo-sensusekonomi.png`).

---

## 📖 Cara Menggunakan & Ekspor ke PDF

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
├── index.html                           # Halaman utama laporan
├── css/
│   ├── style.css                        # Tampilan web & tipografi formal dinas
│   └── print.css                        # Aturan cetak A4 & pembagian halaman PDF
├── js/
│   └── main.js                          # Pengendali interaktivitas & event cetak
├── logo-bps.png                         # Logo resmi BPS
├── logo-desacantik.png                  # Logo resmi Desa Cantik
├── logo-berakhlak.png                   # Logo resmi BerAKHLAK
├── logo-sensusekonomi.png               # Logo resmi Sensus Ekonomi 2026
├── Laporan Akhir Desa Cantik Popontolen Tahun 2026.pdf  # File sumber PDF asli
└── README.md                            # Panduan dokumentasi proyek
```

---

## 📌 Riwayat Perubahan (Git Version Control)
Repository ini telah diinisialisasi dengan Git (`git init`) untuk mencatat setiap iterasi dan pembaruan dokumen. Anda dapat melihat log perubahan dengan perintah:
```bash
git log --oneline
```
