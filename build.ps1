# ==============================================================================
# SCRIPT BUILD / PENGGABUNG DOKUMEN LAPORAN AKHIR DESA CANTIK POPONTOLEN 2026
# Menyatukan seluruh file per-bab dari folder 'sections/' ke 'index.html' dan 'print.html'
# ==============================================================================

$sections = @(
    "sections/cover.html",
    "sections/kata-pengantar.html",
    "sections/daftar-isi.html",
    "sections/daftar-tabel.html",
    "sections/bab1-pendahuluan.html",
    "sections/bab2-persiapan.html",
    "sections/bab3-pembinaan.html",
    "sections/bab4-penutup.html",
    "sections/lampiran.html",
    "sections/cover-belakang.html"
)

# 1. TEMPLATE UTAMA (index.html)
$indexHeader = @"
<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Laporan Akhir Pembinaan Desa Cinta Statistik (Desa Cantik) Desa Popontolen Kecamatan Tumpaan Kabupaten Minahasa Selatan Tahun 2026 - Badan Pusat Statistik">
  <meta name="author" content="Badan Pusat Statistik Kabupaten Minahasa Selatan">
  <title>Laporan Akhir Desa Cantik Popontolen Tahun 2026 | BPS Kabupaten Minahasa Selatan</title>
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/print.css" media="print">
  <link rel="icon" href="images/logo-bps.png" type="image/png">
</head>
<body>

  <!-- ==========================================================================
       TOP NAVIGATION & ACTION BAR (Non-Printable)
       ========================================================================== -->
  <header class="app-topbar no-print">
    <div class="topbar-brand">
      <button class="btn btn-icon" id="sidebarToggle" title="Buka/Tutup Navigasi Daftar Isi" aria-label="Toggle Navigation">
        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
          <line x1="3" y1="12" x2="21" y2="12"></line>
          <line x1="3" y1="6" x2="21" y2="6"></line>
          <line x1="3" y1="18" x2="21" y2="18"></line>
        </svg>
      </button>
      <span class="topbar-badge">BPS 7105</span>
      <span class="topbar-title">Desa Cantik Popontolen 2026</span>
      <span class="topbar-subtitle">| Laporan Akhir Pembinaan</span>
    </div>

    <div class="topbar-actions">
      <button class="btn btn-icon" id="fontSizeDown" title="Perkecil Ukuran Teks" aria-label="Decrease Font Size">
        <span style="font-size: 0.8rem; font-weight: bold;">A-</span>
      </button>
      <button class="btn btn-icon" id="fontSizeUp" title="Perbesar Ukuran Teks" aria-label="Increase Font Size">
        <span style="font-size: 1rem; font-weight: bold;">A+</span>
      </button>
      <button class="btn btn-icon" id="themeToggle" title="Ganti Mode Gelap/Terang" aria-label="Toggle Theme">
        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
          <path d="M21 12.79A9 9 0 1 1 11.21 3 7 7 0 0 0 21 12.79z"></path>
        </svg>
      </button>
      <button class="btn btn-success" id="printBtn" title="Buka Dokumen PDF di Tab Baru & Cetak">
        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
          <polyline points="6 9 6 2 18 2 18 9"></polyline>
          <path d="M6 18H4a2 2 0 0 1-2-2v-5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v5a2 2 0 0 1-2 2h-2"></path>
          <rect x="6" y="14" width="12" height="8"></rect>
        </svg>
        <span>Buka PDF di Tab Baru (Cetak)</span>
      </button>
    </div>
  </header>

  <!-- ==========================================================================
       SIDEBAR / DAFTAR ISI DINAMIS (Non-Printable)
       ========================================================================== -->
  <aside class="app-sidebar no-print" id="appSidebar">
    <div class="sidebar-header">
      <h2 class="sidebar-title">Daftar Isi Dokumen</h2>
    </div>
    <nav>
      <ul class="toc-list">
        <li class="toc-item">
          <a href="#coverPage"><span>Cover Laporan</span></a>
        </li>
        <li class="toc-item">
          <a href="#kataPengantar"><span>Kata Pengantar</span><small>i</small></a>
        </li>
        <li class="toc-item">
          <a href="#daftarIsi"><span>Daftar Isi</span><small>ii</small></a>
        </li>
        <li class="toc-item">
          <a href="#daftarTabel"><span>Daftar Tabel</span><small>iii</small></a>
        </li>
        <li class="toc-item">
          <a href="#bab1"><span>BAB I. Pendahuluan</span><small>1</small></a>
          <ul class="toc-sublist">
            <li><a href="#sub1-1">1.1 Latar Belakang</a></li>
            <li><a href="#sub1-2">1.2 Gambaran Umum Desa</a></li>
            <li><a href="#sub1-3">1.3 Tata Kelola Desa Cantik</a></li>
          </ul>
        </li>
        <li class="toc-item">
          <a href="#bab2"><span>BAB II. Persiapan Program</span><small>6</small></a>
          <ul class="toc-sublist">
            <li><a href="#sub2-1">2.1 Rancangan Kegiatan</a></li>
            <li><a href="#sub2-2">2.2 Sosialisasi / Pencanangan</a></li>
            <li><a href="#sub2-3">2.3 Pelatihan Pembina Statistik</a></li>
            <li><a href="#sub2-4">2.4 Anggaran Program</a></li>
          </ul>
        </li>
        <li class="toc-item">
          <a href="#bab3"><span>BAB III. Pembinaan & Pendampingan</span><small>9</small></a>
          <ul class="toc-sublist">
            <li><a href="#sub3-1">3.1 Gambaran Umum Realisasi</a></li>
            <li><a href="#sub3-2">3.2 Pengumpulan Data</a></li>
            <li><a href="#sub3-3">3.3 Pengolahan Data</a></li>
            <li><a href="#sub3-4">3.4 Penyajian Data</a></li>
            <li><a href="#sub3-5">3.5 Pemanfaatan Data</a></li>
            <li><a href="#sub3-6">3.6 Manajemen Data</a></li>
          </ul>
        </li>
        <li class="toc-item">
          <a href="#bab4"><span>BAB IV. Penutup</span><small>12</small></a>
          <ul class="toc-sublist">
            <li><a href="#sub4-1">4.1 Kendala dan Solusi</a></li>
            <li><a href="#matriksKendala">Tabel Matriks Kendala</a></li>
            <li><a href="#sub4-2">4.2 Kesimpulan & Saran</a></li>
          </ul>
        </li>
        <li class="toc-item">
          <a href="#lampiranCover"><span>Lampiran</span><small>17</small></a>
        </li>
        <li class="toc-item">
          <a href="#coverBelakang"><span>Cover Belakang</span></a>
        </li>
      </ul>
    </nav>
  </aside>

  <!-- ==========================================================================
       MAIN WRAPPER & DOCUMENT PAGES
       ========================================================================== -->
  <main class="main-wrapper" id="mainWrapper">
    <div class="document-container">
"@

$indexFooter = @"
    </div>
  </main>

  <script src="js/main.js"></script>
</body>
</html>
"@

# 2. TEMPLATE DOKUMEN CETAK MURNI (print.html)
$printHeader = @"
<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Laporan Akhir Desa Cantik Popontolen 2026 - PDF Document</title>
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/print.css">
  <link rel="icon" href="images/logo-bps.png" type="image/png">
  <style>
    body {
      background: #475569;
      padding: 30px 0;
      display: flex;
      flex-direction: column;
      align-items: center;
      min-height: 100vh;
    }
    .document-container {
      max-width: 210mm;
      width: 100%;
      display: flex;
      flex-direction: column;
      gap: 30px;
      align-items: center;
    }
    .print-floating-bar {
      position: fixed;
      top: 18px;
      right: 24px;
      z-index: 99999;
      background: rgba(15, 23, 42, 0.95);
      backdrop-filter: blur(10px);
      padding: 10px 18px;
      border-radius: 10px;
      display: flex;
      align-items: center;
      gap: 12px;
      box-shadow: 0 8px 25px rgba(0,0,0,0.4);
      border: 1px solid rgba(255, 255, 255, 0.15);
    }
    @media print {
      .print-floating-bar, .no-print { display: none !important; }
      body { background: #FFFFFF !important; padding: 0 !important; }
      .document-container { gap: 0 !important; max-width: 100% !important; }
      .page-sheet { box-shadow: none !important; margin: 0 !important; }
    }
  </style>
</head>
<body>
  <div class="print-floating-bar no-print">
    <span style="color: #FFF; font-size: 0.85rem; font-weight: 600;">Dokumen Siap Cetak PDF</span>
    <button class="btn btn-success" onclick="window.print()">
      <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
        <polyline points="6 9 6 2 18 2 18 9"></polyline>
        <path d="M6 18H4a2 2 0 0 1-2-2v-5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v5a2 2 0 0 1-2 2h-2"></path>
        <rect x="6" y="14" width="12" height="8"></rect>
      </svg>
      <span>Cetak / Save as PDF</span>
    </button>
    <button class="btn btn-primary" onclick="window.close()">
      ✕ Tutup
    </button>
  </div>

  <div class="document-container">
"@

$printFooter = @"
  </div>

  <script>
    // Otomatis membuka dialog cetak saat halaman dibuka di tab baru
    window.addEventListener('load', function() {
      setTimeout(function() {
        window.print();
      }, 400);
    });
  </script>
</body>
</html>
"@

# Membaca seluruh sections
$sectionsContent = ""
foreach ($sec in $sections) {
    if (Test-Path $sec) {
        $secContent = Get-Content $sec -Raw -Encoding UTF8
        $sectionsContent += "`n" + $secContent + "`n"
    } else {
        Write-Warning "File tidak ditemukan: $sec"
    }
}

# Tulis file index.html
$fullIndex = $indexHeader + $sectionsContent + $indexFooter
[System.IO.File]::WriteAllText("$PSScriptRoot/index.html", $fullIndex, [System.Text.Encoding]::UTF8)

# Tulis file print.html
$fullPrint = $printHeader + $sectionsContent + $printFooter
[System.IO.File]::WriteAllText("$PSScriptRoot/print.html", $fullPrint, [System.Text.Encoding]::UTF8)

Write-Host "Berhasil menyatukan sections ke index.html dan print.html!" -ForegroundColor Green
