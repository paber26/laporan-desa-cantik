# ==============================================================================
# SCRIPT BUILD / PENGGABUNG DOKUMEN LAPORAN AKHIR DESA CANTIK POPONTOLEN 2026
# Menyatukan seluruh file per-bab dari folder 'sections/' ke 'index.html'
# ==============================================================================

$sections = @(
    "sections/cover.html",
    "sections/kata-pengantar.html",
    "sections/daftar-isi.html",
    "sections/bab1-pendahuluan.html",
    "sections/bab2-persiapan.html",
    "sections/bab3-pembinaan.html",
    "sections/bab4-penutup.html",
    "sections/lampiran.html"
)

$header = @"
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
      <button class="btn btn-success" id="printBtn" title="Cetak atau Simpan ke format PDF (Ukuran A4)">
        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
          <polyline points="6 9 6 2 18 2 18 9"></polyline>
          <path d="M6 18H4a2 2 0 0 1-2-2v-5a2 2 0 0 1 2-2h16a2 2 0 0 1 2 2v5a2 2 0 0 1-2 2h-2"></path>
          <rect x="6" y="14" width="12" height="8"></rect>
        </svg>
        <span>Cetak / Simpan PDF</span>
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
      </ul>
    </nav>
  </aside>

  <!-- ==========================================================================
       MAIN WRAPPER & DOCUMENT PAGES
       ========================================================================== -->
  <main class="main-wrapper" id="mainWrapper">
    <div class="document-container">

      <!-- Quick Interactive Statistics Overview (Visible in Web, hidden in Print) -->
      <section class="quick-stats-grid no-print" style="width: 100%; max-width: 210mm;">
        <div class="stat-card">
          <div class="stat-val">365 Ha</div>
          <div class="stat-label">Luas Wilayah</div>
        </div>
        <div class="stat-card">
          <div class="stat-val">1.570</div>
          <div class="stat-label">Total Penduduk</div>
        </div>
        <div class="stat-card">
          <div class="stat-val">816 / 754</div>
          <div class="stat-label">Laki / Perempuan</div>
        </div>
        <div class="stat-card">
          <div class="stat-val">569</div>
          <div class="stat-label">Kepala Keluarga</div>
        </div>
        <div class="stat-card">
          <div class="stat-val">± 3 mdpl</div>
          <div class="stat-label">Ketinggian</div>
        </div>
      </section>
"@

$footer = @"
    </div>
  </main>

  <script src="js/main.js"></script>
</body>
</html>
"@

$content = $header + "`n"

foreach ($sec in $sections) {
    if (Test-Path $sec) {
        $secContent = Get-Content $sec -Raw -Encoding UTF8
        $content += "`n" + $secContent + "`n"
    } else {
        Write-Warning "File tidak ditemukan: $sec"
    }
}

$content += "`n" + $footer

[System.IO.File]::WriteAllText("$PSScriptRoot/index.html", $content, [System.Text.Encoding]::UTF8)
Write-Host "Berhasil menyatukan seluruh file sections/ ke index.html!" -ForegroundColor Green
