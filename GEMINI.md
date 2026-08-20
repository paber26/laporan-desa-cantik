# PANDUAN PENGEMBANGAN & ARSITEKTUR WORKSPACE
# PROGRAM DESA CANTIK KABUPATEN MINAHASA SELATAN TAHUN 2026
# Badan Pusat Statistik (BPS 7105) & Pemerintah Desa Binaan

File ini adalah instruksi permanen (Project Memory & System Guidelines) untuk AI Assistant dan pengembang. Workspace ini menaungi 2 sub-proyek dokumen terpisah dengan arsitektur dua tahap:

---

## 🏛️ 1. Sub-Proyek & Identitas Dokumen

### A. Sub-Proyek 1: `Laporan-Akhir/` (Laporan Pembinaan BPS)
- **Nama Dokumen**: Laporan Akhir Pembinaan Desa Cinta Statistik (Desa Cantik) Desa Popontolen Tahun 2026.
- **Penerbit / POV**: Badan Pusat Statistik Kabupaten Minahasa Selatan (Kepala BPS: Irena Listianawati, SST, SE, M.Si).
- **Lokasi Wilayah**: Desa Popontolen, Kecamatan Tumpaan, Kabupaten Minahasa Selatan.

### B. Sub-Proyek 2: `Publikasi-Desa/` (Publikasi Data Statistik Desa)
- **Nama Dokumen**: Publikasi Profil Desa Tumpaan Dua Dalam Angka 2026.
- **Penerbit / POV**: **Pemerintah Desa Tumpaan Dua** (Hukum Tua / Kepala Desa: **Elke S. Poluakan, SKM, M.Kes**).
- **Lokasi Wilayah**: Desa Tumpaan Dua (7 Jaga), Kecamatan Tumpaan, Kabupaten Minahasa Selatan.

---

## 🔄 2. Alur Kerja Dua Tahap (Dual-Stage Architecture)

Setiap sub-proyek (`Laporan-Akhir/` dan `Publikasi-Desa/`) menerapkan arsitektur dua tahap yang sama:

```
┌─────────────────────────────────────────────────────────────────────────┐
│ TAHAP 1: EDITING, PENGISIAN & DRAFTING (HTML MODULAR)                   │
│ - Edit file per-bab di folder sections/ (*.html)                        │
│ - Jalankan build.bat (atau build.ps1) untuk update HTML                 │
│ - Buka / Live Preview di index.html atau print.html                     │
└────────────────────────────────────┬────────────────────────────────────┘
                                     │ (Setelah seluruh isi dokumen fix)
                                     ▼
┌─────────────────────────────────────────────────────────────────────────┐
│ TAHAP 2: FINALISASI & PUBLIKASI RESMI (LATEX / OVERLEAF)                │
│ - Sesuaikan perubahan teks ke folder latex/sections/ (*.tex)            │
│ - Jalankan latex/package_overleaf.bat untuk membuat ZIP                 │
│ - Upload berkas ZIP ke Overleaf.com                                     │
│ - Recompile untuk menghasilkan PDF vektor 100% sempurna                 │
└─────────────────────────────────────────────────────────────────────────┘
```

---

## 📁 3. Struktur Berkas Lengkap Workspace

```
D:\BPSMinsel\Desa Cantik\
│
├── Laporan-Akhir/                       # PROYEK 1: LAPORAN AKHIR PEMBINAAN (POV BPS)
│   ├── sections/                        # Berkas HTML modular (Cover, Bab 1-4, Daftar Isi/Tabel)
│   ├── images/                          # Logo & grafis resmi
│   ├── css/ & js/                       # Style & script interaktif
│   ├── build.bat & build.ps1            # Pembangun HTML
│   ├── index.html & print.html          # Web preview & dokumen cetak
│   └── latex/                           # LaTeX & Overleaf packaging
│       ├── main.tex
│       ├── sections/ & images/
│       ├── package_overleaf.bat / .ps1
│       └── Laporan_Desa_Cantik_Overleaf.zip
│
├── Publikasi-Desa/                      # PROYEK 2: DESA TUMPAAN DUA DALAM ANGKA 2026 (POV PEMDES)
│   ├── sections/                        # Berkas HTML modular (Cover, Kata Pengantar, Grafik, Bab 1-4)
│   ├── images/                          # Grafik 1 & 2, foto potensi, logo
│   ├── css/ & js/                       # Style & script interaktif
│   ├── build.bat & build.ps1            # Pembangun HTML
│   ├── index.html & print.html          # Web preview & dokumen cetak
│   └── latex/                           # LaTeX & Overleaf packaging
│       ├── main.tex
│       ├── sections/ & images/
│       ├── package_overleaf.bat / .ps1
│       └── Publikasi_Desa_Tumpaan_Dua_Overleaf.zip
│
├── GEMINI.md                            # Instruksi permanen AI Assistant
├── AGENTS.md                            # Instruksi permanen Antigravity Agent
└── README.md                            # Dokumentasi umum repositori
```

---

## 🛠️ 4. Panduan untuk AI Assistant (Setiap Percakapan Baru)

1. **Kenali Sub-Proyek**:
   - Jika membahas dokumen pembinaan BPS / Popontolen $\rightarrow$ Bekerja di `Laporan-Akhir/`.
   - Jika membahas publikasi data statistik desa / Tumpaan Dua $\rightarrow$ Bekerja di `Publikasi-Desa/` (Gunakan sudut pandang **Pemerintah Desa**).
2. **Prioritas Alur**:
   - Selalu edit `sections/*.html` terlebih dahulu $\rightarrow$ jalankan `build.ps1` $\rightarrow$ setelah fix, sinkronkan ke `latex/sections/*.tex` $\rightarrow$ jalankan `package_overleaf.ps1`.
3. **Version Control (Git)**:
   - Selalu commit setiap pembaruan dengan format pesan konvensional (`feat:`, `fix:`, `docs:`, `style:`).
