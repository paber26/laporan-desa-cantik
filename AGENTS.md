# PANDUAN PENGEMBANGAN & ARSITEKTUR PROYEK
# LAPORAN AKHIR DESA CANTIK POPONTOLEN TAHUN 2026
# Badan Pusat Statistik Kabupaten Minahasa Selatan (BPS 7105)

File ini adalah instruksi permanen (Project Memory & System Guidelines) untuk AI Assistant dan pengembang. Ketika memulai percakapan baru atau berganti perangkat, ikuti seluruh arsitektur dan alur kerja yang didefinisikan di bawah ini.

---

## 🏛️ 1. Identitas & Informasi Dokumen

- **Nama Dokumen**: Laporan Akhir Pembinaan Desa Cinta Statistik (Desa Cantik) Desa Popontolen Tahun 2026.
- **Instansi**: Badan Pusat Statistik Kabupaten Minahasa Selatan.
- **Lokasi Wilayah**: Desa Popontolen, Kecamatan Tumpaan, Kabupaten Minahasa Selatan, Sulawesi Utara.
- **Data Kunci Wilayah**:
  - Luas Wilayah: 365 ha
  - Jumlah Penduduk: 1.570 jiwa (Laki-laki: 816, Perempuan: 754)
  - Jumlah Keluarga: 569 KK
  - Mata Pencaharian: Petani
  - Batas: Utara (Desa Sulu), Timur (Desa Lelema), Selatan & Barat (Desa Matani)
  - Geografis: Ketinggian $\pm 3$ mdpl, Curah hujan 179 mm/thn, Suhu 25–30$^\circ$C
  - Orbitrasi: Ke Kecamatan 6 km, ke Ibukota Kab. Minsel (Amurang) 10 km, ke Provinsi 43 km.
- **Kepala BPS Kab. Minahasa Selatan**: Irena Listianawati, SST, SE, M.Si (Amurang Barat, 10 Agustus 2026).

---

## 🔄 2. Alur Kerja Dua Tahap (Dual-Stage Architecture)

Proyek ini dipisahkan secara tegas menjadi 2 tahap:

```
┌─────────────────────────────────────────────────────────────┐
│ TAHAP 1: EDITING, PENGISIAN & DRAFTING (HTML MODULAR)       │
│ - Edit file per-bab di folder sections/ (*.html)            │
│ - Jalankan build.bat (atau build.ps1) untuk update HTML     │
│ - Buka / Live Preview di index.html atau print.html         │
└──────────────────────────────┬──────────────────────────────┘
                               │ (Setelah seluruh isi dokumen fix)
                               ▼
┌─────────────────────────────────────────────────────────────┐
│ TAHAP 2: FINALISASI & PUBLIKASI RESMI (LATEX / OVERLEAF)    │
│ - Sesuaikan perubahan teks ke folder latex/sections/ (*.tex)│
│ - Jalankan latex/package_overleaf.bat untuk membuat ZIP     │
│ - Upload Laporan_Desa_Cantik_Overleaf.zip ke Overleaf.com   │
│ - Recompile untuk menghasilkan PDF vektor 100% sempurna     │
└─────────────────────────────────────────────────────────────┘
```

---

## 📁 3. Struktur Berkas Lengkap

```
D:\BPSMinsel\Desa Cantik\
│
├── [RUANG KERJA UTAMA - HTML DRAFTING & PREVIEW]
│   ├── sections/                        # Berkas HTML per-bab (FOKUS EDITING UTAMA)
│   │   ├── cover.html                   # Halaman cover depan
│   │   ├── kata-pengantar.html          # Kata pengantar & TTD Kepala BPS
│   │   ├── daftar-isi.html              # Halaman daftar isi
│   │   ├── bab1-pendahuluan.html        # BAB I: Latar belakang, profil desa, tata kelola
│   │   ├── bab2-persiapan.html          # BAB II: Tabel rencana kerja, pencanangan, pelatihan
│   │   ├── bab3-pembinaan.html          # BAB III: Matriks realisasi, rantai data SDI
│   │   ├── bab4-penutup.html            # BAB IV: Matriks kendala/solusi, saran & kesimpulan
│   │   └── lampiran.html                # Cover pemisah lampiran
│   │
│   ├── build.bat                        # Double-click untuk menggabungkan sections/ ke index.html & print.html
│   ├── build.ps1                        # Script PowerShell penggabung otomatis
│   ├── index.html                       # Halaman web interaktif (Live preview & scrollspy)
│   ├── print.html                       # Halaman dokumen cetak khusus (Tab baru)
│   ├── css/
│   │   ├── style.css                    # Tampilan web modern, dark mode, responsive
│   │   └── print.css                    # Standar cetak A4 presisi anti-overflow
│   ├── js/
│   │   └── main.js                      # Fitur buka tab cetak, zoom teks, scrollspy
│   └── images/                          # Logo resmi PNG (BPS, Desa Cantik, BerAKHLAK, SE2026)
│
├── [RUANG KERJA FINAL - LATEX OVERLEAF PUBLISHING]
│   └── latex/                           # FOLDER KHUSUS LATEX
│       ├── main.tex                     # Master file LaTeX
│       ├── package_overleaf.bat         # Double-click untuk membuat ZIP Overleaf
│       ├── package_overleaf.ps1         # Script kompresi ZIP
│       ├── Laporan_Desa_Cantik_Overleaf.zip  # File ZIP siap upload ke Overleaf.com
│       ├── sections/                    # Berkas LaTeX (.tex) per-bab
│       │   ├── 00_cover.tex
│       │   ├── 01_kata_pengantar.tex
│       │   ├── 02_bab1_pendahuluan.tex
│       │   ├── 03_bab2_persiapan.tex
│       │   ├── 04_bab3_pembinaan.tex
│       │   ├── 05_bab4_penutup.tex
│       │   └── 06_lampiran.tex
│       └── images/                      # Salinan logo PNG untuk kompilasi LaTeX
│
├── Laporan Akhir Desa Cantik Popontolen Tahun 2026.pdf  # File PDF sumber asli
├── GEMINI.md                            # Instruksi permanen AI Assistant
├── AGENTS.md                            # Instruksi permanen Antigravity Agent
└── README.md                            # Panduan dokumentasi proyek
```

---

## 🛠️ 4. Panduan untuk AI Assistant (Setiap Percakapan Baru)

1. **Prioritas Alur**:
   - Jika pengguna meminta menambah teks, mengedit bab, atau memasukkan data baru, **selalu lakukan perubahan di file `sections/*.html` terlebih dahulu**.
   - Setelah mengedit `sections/*.html`, jalankan script `build.ps1` untuk merefresh `index.html` dan `print.html`.
   - Jika pengguna meminta sinkronisasi ke LaTeX, barulah perbarui file terkait di `latex/sections/*.tex` dan jalankan `latex/package_overleaf.ps1`.
2. **Version Control (Git)**:
   - Repository lokal telah aktif. Selalu pastikan commit dilakukan setelah setiap perubahan berarti dengan format konvensional (`feat: ...`, `fix: ...`, `docs: ...`).
3. **Pencetakan Dokumen**:
   - Pencetakan web dilakukan melalui `print.html` di tab baru yang secara native memicu dialog print browser (*Save as PDF*).
   - Pencetakan final buku resmi menggunakan `latex/Laporan_Desa_Cantik_Overleaf.zip` di Overleaf.
