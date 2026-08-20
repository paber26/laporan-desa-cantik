/**
 * LAPORAN AKHIR DESA CANTIK POPONTOLEN 2026
 * Interactive Document Engine & Enhanced PDF Generator
 */

document.addEventListener('DOMContentLoaded', () => {
  // Elements
  const printBtn = document.getElementById('printBtn');
  const sidebarToggle = document.getElementById('sidebarToggle');
  const themeToggle = document.getElementById('themeToggle');
  const fontSizeUp = document.getElementById('fontSizeUp');
  const fontSizeDown = document.getElementById('fontSizeDown');
  const sidebar = document.getElementById('appSidebar');
  const mainWrapper = document.getElementById('mainWrapper');
  const tocLinks = document.querySelectorAll('.toc-list a, .toc-sublist a');
  const sections = document.querySelectorAll('.page-sheet[id]');
  const toastNotification = document.getElementById('toastNotification');

  // Helper Toast Notification
  function showToast(message, type = 'info') {
    if (!toastNotification) return;
    toastNotification.textContent = message;
    toastNotification.className = `toast-notification show ${type}`;
    setTimeout(() => {
      toastNotification.className = 'toast-notification';
    }, 4000);
  }

  // 1. Generate Real PDF & Open in New Tab
  if (printBtn) {
    printBtn.addEventListener('click', async () => {
      const docContainer = document.querySelector('.document-container');
      if (!docContainer) {
        window.open('print.html', '_blank');
        return;
      }

      showToast('⏳ Sedang memproses dan men-generate dokumen PDF...', 'info');

      // Check if html2pdf is loaded
      if (typeof html2pdf !== 'undefined') {
        try {
          const opt = {
            margin: [10, 10, 10, 10],
            filename: 'Laporan_Akhir_Desa_Cantik_Popontolen_2026.pdf',
            image: { type: 'jpeg', quality: 0.98 },
            html2canvas: { scale: 2, useCORS: true, letterRendering: true, logging: false },
            jsPDF: { unit: 'mm', format: 'a4', orientation: 'portrait' },
            pagebreak: { mode: ['css', 'legacy'] }
          };

          // Generate PDF Blob
          const pdfBlob = await html2pdf().set(opt).from(docContainer).outputPdf('blob');
          const blobUrl = URL.createObjectURL(pdfBlob);
          
          // Open generated PDF in a brand new tab
          const newTab = window.open(blobUrl, '_blank');
          if (newTab) {
            showToast('✅ Dokumen PDF berhasil di-generate dan dibuka di tab baru!', 'success');
          } else {
            showToast('⚠️ Pop-up diblokir browser. Membuka halaman cetak khusus...', 'warning');
            window.open('print.html', '_blank');
          }
        } catch (err) {
          console.warn('html2pdf fallback to dedicated print view:', err);
          window.open('print.html', '_blank');
        }
      } else {
        // Direct fallback to clean print tab
        window.open('print.html', '_blank');
      }
    });
  }

  // 2. Sidebar Toggle (Mobile & Desktop)
  if (sidebarToggle) {
    sidebarToggle.addEventListener('click', () => {
      if (window.innerWidth <= 1024) {
        sidebar.classList.toggle('open');
      } else {
        sidebar.classList.toggle('collapsed');
        mainWrapper.classList.toggle('full-width');
      }
    });
  }

  // Close sidebar on click outside in mobile
  document.addEventListener('click', (e) => {
    if (window.innerWidth <= 1024 && sidebar && sidebar.classList.contains('open')) {
      if (!sidebar.contains(e.target) && !sidebarToggle.contains(e.target)) {
        sidebar.classList.remove('open');
      }
    }
  });

  // 3. Theme Mode Toggle (Dark / Light)
  const savedTheme = localStorage.getItem('desa_cantik_theme');
  if (savedTheme === 'dark') {
    document.body.classList.add('dark-mode');
    updateThemeIcon(true);
  }

  if (themeToggle) {
    themeToggle.addEventListener('click', () => {
      const isDark = document.body.classList.toggle('dark-mode');
      localStorage.setItem('desa_cantik_theme', isDark ? 'dark' : 'light');
      updateThemeIcon(isDark);
    });
  }

  function updateThemeIcon(isDark) {
    if (!themeToggle) return;
    themeToggle.innerHTML = isDark
      ? `<svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="5"></circle><line x1="12" y1="1" x2="12" y2="3"></line><line x1="12" y1="21" x2="12" y2="23"></line><line x1="4.22" y1="4.22" x2="5.64" y2="5.64"></line><line x1="18.36" y1="18.36" x2="19.78" y2="19.78"></line><line x1="1" y1="12" x2="3" y2="12"></line><line x1="21" y1="12" x2="23" y2="12"></line><line x1="4.22" y1="19.78" x2="5.64" y2="18.36"></line><line x1="18.36" y1="5.64" x2="19.78" y2="4.22"></line></svg>`
      : `<svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M21 12.79A9 9 0 1 1 11.21 3 7 7 0 0 0 21 12.79z"></path></svg>`;
    themeToggle.setAttribute('title', isDark ? 'Mode Terang' : 'Mode Gelap');
  }

  // 4. Font Size Adjustment
  let currentScale = 100;
  if (fontSizeUp) {
    fontSizeUp.addEventListener('click', () => {
      if (currentScale < 125) {
        currentScale += 5;
        document.documentElement.style.fontSize = `${currentScale}%`;
      }
    });
  }
  if (fontSizeDown) {
    fontSizeDown.addEventListener('click', () => {
      if (currentScale > 85) {
        currentScale -= 5;
        document.documentElement.style.fontSize = `${currentScale}%`;
      }
    });
  }

  // 5. Scrollspy for Table of Contents
  function onScrollSpy() {
    let currentId = '';
    const scrollPos = window.scrollY + 140;

    sections.forEach((section) => {
      const top = section.offsetTop;
      const height = section.offsetHeight;
      if (scrollPos >= top && scrollPos < top + height) {
        currentId = section.getAttribute('id');
      }
    });

    if (currentId) {
      tocLinks.forEach((link) => {
        const item = link.closest('.toc-item') || link;
        if (link.getAttribute('href') === `#${currentId}`) {
          item.classList.add('active');
        } else {
          item.classList.remove('active');
        }
      });
    }
  }

  window.addEventListener('scroll', onScrollSpy, { passive: true });
  onScrollSpy();

  // Smooth scroll click handler
  tocLinks.forEach((link) => {
    link.addEventListener('click', (e) => {
      const targetId = link.getAttribute('href');
      if (targetId && targetId.startsWith('#')) {
        const targetElem = document.querySelector(targetId);
        if (targetElem) {
          e.preventDefault();
          targetElem.scrollIntoView({ behavior: 'smooth' });
          if (window.innerWidth <= 1024 && sidebar) {
            sidebar.classList.remove('open');
          }
        }
      }
    });
  });
});
