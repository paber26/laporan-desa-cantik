/**
 * LAPORAN AKHIR DESA CANTIK POPONTOLEN 2026
 * Interactive Document Engine & Print Controller
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

  // 1. Buka Halaman Cetak Bersih di Tab Baru (Memicu Native Vector PDF)
  if (printBtn) {
    printBtn.addEventListener('click', () => {
      window.open('print.html', '_blank');
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
