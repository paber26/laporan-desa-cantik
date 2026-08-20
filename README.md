# Laporan Akhir Pembinaan Desa Cantik Popontolen Tahun 2026 (Format LaTeX)
**Badan Pusat Statistik Kabupaten Minahasa Selatan**

Proyek dokumen resmi Laporan Akhir Pembinaan Desa Cinta Statistik (Desa Cantik) Desa Popontolen berbasis **LaTeX (`.tex`)** modular standar publikasi kedinasan BPS.

---

## 🌟 Keunggulan Format LaTeX

1. **Konsistensi Matematis & Pixel-Perfect**: Tata letak, pemenggalan kata (*hyphenation*), spasi antar-paragraf, dan batas halaman 100% terkunci dan tidak akan bergeser antar komputer.
2. **Struktur Modular Per-Bab**: Setiap bab dipisah ke dalam berkas `.tex` mandiri di folder `sections/` sehingga sangat mudah diedit dan dilengkapi.
3. **Standar Tata Naskah Dinas**:
   - Ukuran kertas: **A4**
   - Margin resmi: **Kiri 3.0 cm, Kanan 2.0 cm, Atas 2.5 cm, Bawah 2.5 cm**
   - Spasi: **1.5 (One-half spacing)**
   - Penomoran: **Romawi (`i, ii`)** untuk kata pengantar & daftar isi, serta **Arab (`1, 2, 3...`)** untuk bab isi.

---

## 📁 Struktur Direktori Berkas

```
D:\BPSMinsel\Desa Cantik\
│
├── main.tex                         # Master file LaTeX (Pengaturan dokumen & \input)
│
├── sections/                        # Folder file bab terpisah (EDIT DI SINI)
│   ├── 00_cover.tex                 # Cover resmi BPS dengan TikZ ribbon & logo
│   ├── 01_kata_pengantar.tex        # Kata Pengantar & TTD Kepala BPS
│   ├── 02_bab1_pendahuluan.tex      # BAB I Pendahuluan (Latar Belakang, Profil Desa, Tata Kelola)
│   ├── 03_bab2_persiapan.tex        # BAB II Persiapan (Tabel Rencana Kerja, Pelatihan, Anggaran)
│   ├── 04_bab3_pembinaan.tex        # BAB III Pembinaan & Pendampingan (Matriks Realisasi, SDI)
│   ├── 05_bab4_penutup.tex          # BAB IV Penutup (Kendala, Matriks Solusi, Kesimpulan & Saran)
│   └── 06_lampiran.tex              # Cover Halaman Lampiran
│
├── images/                          # Folder logo resmi PNG
│   ├── logo-bps.png                 # Logo resmi BPS
│   ├── logo-desacantik.png          # Logo resmi Desa Cantik
│   ├── logo-berakhlak.png           # Logo resmi BerAKHLAK
│   └── logo-sensusekonomi.png       # Logo resmi Sensus Ekonomi 2026
│
├── Laporan Akhir Desa Cantik Popontolen Tahun 2026.pdf  # File sumber PDF asli
└── README.md                        # Panduan penggunaan proyek
```

---

## 🚀 Cara Kompilasi ke PDF

### Cara 1: Menggunakan Overleaf (Paling Mudah & Rekomendasi Tanpa Install Software)
1. Buka situs **[Overleaf.com](https://www.overleaf.com)** dan buat akun / login.
2. Buat proyek baru dengan memilih **New Project** $\rightarrow$ **Upload Project**.
3. Kompres (*ZIP*) folder `Desa Cantik` (pastikan memuat `main.tex`, folder `sections/`, dan folder `images/`) lalu unggah file `.zip` tersebut ke Overleaf.
4. Klik tombol hijau **Recompile** di Overleaf. Dokumen PDF sempurna akan langsung ter-*generate* dan dapat diunduh!

### Cara 2: Menggunakan Compiler Lokal di Komputer (MiKTeX / TeX Live)
Jika Anda menginstall compiler LaTeX lokal di komputer Windows:
```bash
pdflatex main.tex
```
*(Jalankan perintah 2 kali agar Daftar Isi dan penomoran otomatis ter-update sempurna).*

---

## ✏️ Cara Mengedit / Melengkapi Isi Laporan

1. Buka berkas bab yang ingin Anda edit di dalam folder `sections/` (misalnya `sections/02_bab1_pendahuluan.tex` atau `sections/03_bab2_persiapan.tex`).
2. Ubah atau tambahkan teks yang diinginkan.
3. Kompilasi ulang `main.tex` untuk melihat hasil PDF yang telah ter-update secara otomatis.
