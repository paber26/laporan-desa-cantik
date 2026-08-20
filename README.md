# Laporan Akhir Pembinaan Desa Cantik Desa Popontolen Tahun 2026
**Badan Pusat Statistik Kabupaten Minahasa Selatan**

Proyek dokumen laporan resmi yang memisahkan antara **Tahap Pengisian & Drafting (HTML)** dengan **Tahap Final Publikasi & Cetak Sempurna (LaTeX)**.

---

## 🔄 Alur Kerja (Workflow) yang Disarankan

```
┌─────────────────────────────────────────────────────────────┐
│ 1. FOKUS EDITING & PENGISIAN DATA (HTML)                     │
│    - Buka folder sections/ (bab1, bab2, bab3, bab4, dll)    │
│    - Edit teks, data tabel, atau dokumentasi                │
│    - Klik 2x build.bat untuk melihat hasil di index.html    │
└──────────────────────────────┬──────────────────────────────┘
                               │ (Setelah isi laporan beres/lengkap)
                               ▼
┌─────────────────────────────────────────────────────────────┐
│ 2. FINAL PUBLIKASI & KOMPILASI PDF (LATEX)                  │
│    - Buka folder latex/sections/ untuk penyesuaian teks     │
│    - Klik 2x latex/package_overleaf.bat untuk buat ZIP      │
│    - Upload Laporan_Desa_Cantik_Overleaf.zip ke Overleaf    │
│    - Download PDF resmi berstandar publikasi BPS            │
└─────────────────────────────────────────────────────────────┘
```

---

## 📁 Struktur Direktori Terpisah

```
D:\BPSMinsel\Desa Cantik\
│
├── [1. RUANG KERJA UTAMA - DRAFTING & PREVIEW HTML]
│   ├── sections/                        # Berkas HTML per-bab (Edit di sini)
│   │   ├── cover.html
│   │   ├── kata-pengantar.html
│   │   ├── daftar-isi.html
│   │   ├── bab1-pendahuluan.html
│   │   ├── bab2-persiapan.html
│   │   ├── bab3-pembinaan.html
│   │   ├── bab4-penutup.html
│   │   └── lampiran.html
│   ├── build.bat                        # Double-click untuk compile sections/ ke index.html
│   ├── build.ps1                        # Script compiler PowerShell
│   ├── index.html                       # Tampilan Web Interaktif & Live Preview
│   ├── print.html                       # Tampilan Cetak
│   ├── css/
│   │   ├── style.css
│   │   └── print.css
│   ├── js/
│   │   └── main.js
│   └── images/                          # Logo resmi PNG
│
├── [2. RUANG KERJA FINAL - PUBLIKASI LATEX]
│   └── latex/                           # FOLDER KHUSUS LATEX
│       ├── main.tex                     # Master file LaTeX
│       ├── package_overleaf.bat         # 1-Klik buat ZIP siap upload ke Overleaf
│       ├── Laporan_Desa_Cantik_Overleaf.zip  # File ZIP siap pakai
│       ├── sections/                    # Berkas LaTeX (.tex) per-bab
│       │   ├── 00_cover.tex
│       │   ├── 01_kata_pengantar.tex
│       │   ├── 02_bab1_pendahuluan.tex
│       │   ├── 03_bab2_persiapan.tex
│       │   ├── 04_bab3_pembinaan.tex
│       │   ├── 05_bab4_penutup.tex
│       │   └── 06_lampiran.tex
│       └── images/                      # Logo resmi PNG
│
├── Laporan Akhir Desa Cantik Popontolen Tahun 2026.pdf  # Dokumen sumber asli
└── README.md                            # Panduan proyek
```

---

## ✏️ Cara Penggunaan Harian:

### Tahap 1: Mengedit & Melengkapi Isi (HTML)
1. Buka folder [`sections/`](file:///D:/BPSMinsel/Desa%20Cantik/sections/) dan buka file bab yang ingin diedit (misal: `bab1-pendahuluan.html`).
2. Ubah data atau tambahkan paragraf yang diperlukan, lalu simpan (`Ctrl + S`).
3. **Klik 2x [`build.bat`](file:///D:/BPSMinsel/Desa%20Cantik/build.bat)**.
4. Refresh browser pada [`index.html`](file:///D:/BPSMinsel/Desa%20Cantik/index.html) untuk melihat preview seketika.

### Tahap 2: Finalisasi ke LaTeX (Jika Sudah Selesai)
1. Buka folder [`latex/sections/`](file:///D:/BPSMinsel/Desa%20Cantik/latex/sections/) dan sesuaikan teks jika ada data baru.
2. **Klik 2x [`latex/package_overleaf.bat`](file:///D:/BPSMinsel/Desa%20Cantik/latex/package_overleaf.bat)** untuk menghasilkan file `Laporan_Desa_Cantik_Overleaf.zip`.
3. Buka **[Overleaf.com](https://www.overleaf.com)** $\rightarrow$ **New Project** $\rightarrow$ **Upload Project** $\rightarrow$ pilih file zip tersebut.
4. Klik **Recompile** untuk mengunduh PDF publikasi akhir yang 100% konsisten.
