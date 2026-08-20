# ==============================================================================
# SCRIPT BUILD / PENGGABUNG DOKUMEN PUBLIKASI DESA TUMPAAN DUA DALAM ANGKA 2026
# Menyatukan seluruh file per-bab dari folder 'sections/' ke 'index.html' dan 'print.html'
# Penerbit: Pemerintah Desa Tumpaan Dua, Kec. Tumpaan, Kab. Minahasa Selatan
# ==============================================================================

$sections = @(
    "sections/cover.html",
    "sections/kata-pengantar.html",
    "sections/daftar-isi.html",
    "sections/daftar-tabel.html",
    "sections/daftar-grafik.html",
    "sections/grafik-visual.html",
    "sections/bab1-demografi.html",
    "sections/bab2-pekerjaan.html",
    "sections/bab3-fasilitas.html",
    "sections/bab4-penutup.html",
    "sections/cover-belakang.html"
)

# 1. TEMPLATE UTAMA (index.html)
$indexHeader = @"
<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Publikasi Profil Desa Tumpaan Dua Dalam Angka 2026 - Pemerintah Desa Tumpaan Dua Kecamatan Tumpaan Kabupaten Minahasa Selatan">
  <meta name="author" content="Pemerintah Desa Tumpaan Dua">
  <title>Publikasi Desa Tumpaan Dua Dalam Angka 2026 | Pemerintah Desa Tumpaan Dua</title>
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
      <span class="topbar-badge" style="background: #059669;">PEMDES</span>
      <span class="topbar-title">Tumpaan Dua Dalam Angka 2026</span>
      <span class="topbar-subtitle">| Publikasi Profil Desa</span>
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
      <h2 class="sidebar-title">Daftar Isi Publikasi</h2>
    </div>
    <nav>
      <ul class="toc-list">
        <li class="toc-item">
          <a href="#coverPage"><span>Cover Publikasi</span></a>
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
          <a href="#daftarGrafik"><span>Daftar Grafik</span><small>iv</small></a>
        </li>
        <li class="toc-item">
          <a href="#grafikVisual"><span>Visualisasi Grafik</span><small>v</small></a>
        </li>
        <li class="toc-item">
          <a href="#bab1"><span>1. Kependudukan & Demografi</span><small>1</small></a>
          <ul class="toc-sublist">
            <li><a href="#sub1-1">1.1 Penduduk per Jaga (Tabel 1)</a></li>
            <li><a href="#sub1-2">1.2 Kelompok Umur (Tabel 2)</a></li>
          </ul>
        </li>
        <li class="toc-item">
          <a href="#bab2"><span>2. Keluarga & Mata Pencaharian</span><small>4</small></a>
          <ul class="toc-sublist">
            <li><a href="#tabel3">Tabel 3. Pekerjaan Utama</a></li>
          </ul>
        </li>
        <li class="toc-item">
          <a href="#bab3"><span>3. Fasilitas & Infrastruktur</span><small>6</small></a>
          <ul class="toc-sublist">
            <li><a href="#tabel4">Tabel 4. Fasilitas Desa</a></li>
          </ul>
        </li>
        <li class="toc-item">
          <a href="#bab4"><span>4. Penutup & Rekomendasi</span><small>8</small></a>
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

# 2. TEMPLATE KHUSUS PRINT TAB BARU (print.html)
$printHeader = @"
<!DOCTYPE html>
<html lang="id">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Cetak Dokumen - Publikasi Desa Tumpaan Dua Dalam Angka 2026</title>
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/print.css">
  <style>
    body {
      background: #525659 !important;
      margin: 0 !important;
      padding: 20px 0 !important;
      display: flex !important;
      flex-direction: column !important;
      align-items: center !important;
    }
    .print-doc-container {
      width: 210mm !important;
      display: flex !important;
      flex-direction: column !important;
      gap: 20px !important;
    }
    .print-doc-container .page-sheet {
      margin: 0 !important;
      box-shadow: 0 4px 15px rgba(0,0,0,0.3) !important;
    }
    @media print {
      body {
        background: transparent !important;
        padding: 0 !important;
      }
      .print-doc-container {
        width: 100% !important;
        gap: 0 !important;
      }
      .print-doc-container .page-sheet {
        box-shadow: none !important;
      }
    }
  </style>
</head>
<body>
  <div class="print-doc-container">
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
    $secPath = "$PSScriptRoot/$sec"
    if (Test-Path $secPath) {
        $secContent = Get-Content $secPath -Raw -Encoding UTF8
        $sectionsContent += "`n" + $secContent + "`n"
    } else {
        Write-Warning "File tidak ditemukan: $secPath"
    }
}

# Tulis file index.html
$fullIndex = $indexHeader + $sectionsContent + $indexFooter
[System.IO.File]::WriteAllText("$PSScriptRoot/index.html", $fullIndex, [System.Text.Encoding]::UTF8)

# Tulis file print.html
$fullPrint = $printHeader + $sectionsContent + $printFooter
[System.IO.File]::WriteAllText("$PSScriptRoot/print.html", $fullPrint, [System.Text.Encoding]::UTF8)

Write-Host "Berhasil menyatukan sections ke index.html dan print.html Publikasi Desa!" -ForegroundColor Green
