<!DOCTYPE html>
<html lang="tr">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Davut Yayla | Portföy</title>
  <meta name="description" content="Yazılım geliştirme, veri analizi ve yapay zeka projeleri portföyü.">
  <style>
    :root {
      --bg: #0f172a;
      --bg-soft: #111827;
      --card: #020617;
      --accent: #38bdf8;
      --accent-soft: rgba(56, 189, 248, 0.15);
      --text: #e5e7eb;
      --muted: #9ca3af;
      --border: #1f2937;
      --radius-lg: 18px;
      --radius-xl: 26px;
      --shadow-soft: 0 18px 45px rgba(15, 23, 42, 0.9);
    }

    * {
      box-sizing: border-box;
      margin: 0;
      padding: 0;
    }

    body {
      font-family: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
      background: radial-gradient(circle at top, #1e293b 0, #020617 38%, #000 100%);
      color: var(--text);
      line-height: 1.6;
      -webkit-font-smoothing: antialiased;
    }

    a {
      color: inherit;
      text-decoration: none;
    }

    .page {
      max-width: 1040px;
      margin: 0 auto;
      padding: 24px 18px 64px;
    }

    header {
      position: sticky;
      top: 0;
      z-index: 50;
      backdrop-filter: blur(18px);
      background: linear-gradient(to bottom, rgba(15,23,42,0.95), transparent);
      padding-bottom: 8px;
    }

    .nav {
      display: flex;
      align-items: center;
      justify-content: space-between;
      gap: 16px;
      padding: 8px 0 16px;
      border-bottom: 1px solid rgba(148, 163, 184, 0.16);
    }

    .nav-left {
      display: flex;
      flex-direction: column;
      gap: 2px;
    }

    .nav-name {
      font-weight: 700;
      letter-spacing: 0.03em;
      font-size: 1rem;
    }

    .nav-sub {
      font-size: 0.78rem;
      color: var(--muted);
    }

    .nav-links {
      display: flex;
      gap: 12px;
      font-size: 0.86rem;
      flex-wrap: wrap;
    }

    .nav-links a {
      padding: 6px 10px;
      border-radius: 999px;
      border: 1px solid transparent;
      color: var(--muted);
      background: rgba(15, 23, 42, 0.7);
      transition: all 0.18s ease;
    }

    .nav-links a:hover {
      border-color: var(--accent);
      color: var(--text);
      box-shadow: 0 0 0 1px rgba(56, 189, 248, 0.35);
    }

    main {
      margin-top: 18px;
      display: flex;
      flex-direction: column;
      gap: 28px;
    }

    .hero {
      display: grid;
      grid-template-columns: minmax(0, 2.1fr) minmax(0, 1.5fr);
      gap: 22px;
      align-items: stretch;
    }

    .hero-left {
      padding: 20px 22px;
      border-radius: var(--radius-xl);
      background: radial-gradient(circle at top left, #1e293b 0, #020617 52%, #020617 100%);
      border: 1px solid rgba(148, 163, 184, 0.26);
      box-shadow: var(--shadow-soft);
      position: relative;
      overflow: hidden;
    }

    .hero-badge {
      display: inline-flex;
      align-items: center;
      gap: 6px;
      padding: 4px 10px;
      border-radius: 999px;
      font-size: 0.75rem;
      background: rgba(15, 23, 42, 0.9);
      border: 1px solid rgba(148, 163, 184, 0.55);
      color: var(--muted);
      margin-bottom: 12px;
    }

    .hero-badge-dot {
      width: 8px;
      height: 8px;
      border-radius: 999px;
      background: #22c55e;
      box-shadow: 0 0 0 6px rgba(34, 197, 94, 0.3);
    }

    .hero-title {
      font-size: clamp(1.9rem, 2.5vw + 1rem, 2.6rem);
      line-height: 1.14;
      margin-bottom: 8px;
    }

    .hero-title span {
      background: linear-gradient(to right, #38bdf8, #a855f7);
      -webkit-background-clip: text;
      color: transparent;
    }

    .hero-sub {
      font-size: 0.95rem;
      color: var(--muted);
      max-width: 540px;
      margin-bottom: 16px;
    }

    .hero-tags {
      display: flex;
      flex-wrap: wrap;
      gap: 8px;
      margin-bottom: 18px;
    }

    .tag {
      padding: 4px 9px;
      border-radius: 999px;
      font-size: 0.72rem;
      border: 1px solid rgba(148, 163, 184, 0.6);
      color: var(--muted);
      background: rgba(15, 23, 42, 0.85);
    }

    .hero-cta {
      display: flex;
      flex-wrap: wrap;
      gap: 10px;
      margin-top: 4px;
    }

    .btn-primary,
    .btn-ghost {
      font-size: 0.86rem;
      padding: 8px 14px;
      border-radius: 999px;
      border: 1px solid rgba(148, 163, 184, 0.6);
      cursor: pointer;
      background: transparent;
      color: var(--text);
      display: inline-flex;
      align-items: center;
      gap: 6px;
      transition: all 0.18s ease;
    }

    .btn-primary {
      border-color: transparent;
      background: linear-gradient(135deg, #0ea5e9, #6366f1);
      box-shadow: 0 12px 30px rgba(37, 99, 235, 0.55);
    }

    .btn-primary:hover {
      transform: translateY(-1px);
      box-shadow: 0 16px 40px rgba(37, 99, 235, 0.7);
    }

    .btn-ghost {
      background: rgba(15, 23, 42, 0.7);
    }

    .btn-ghost:hover {
      border-color: var(--accent);
      box-shadow: 0 0 0 1px rgba(56, 189, 248, 0.35);
    }

    .hero-right {
      padding: 16px 18px;
      border-radius: var(--radius-xl);
      background: radial-gradient(circle at top right, #020617 0, #020617 35%, #020617 100%);
      border: 1px solid rgba(148, 163, 184, 0.25);
      box-shadow: 0 16px 40px rgba(15, 23, 42, 0.85);
      display: flex;
      flex-direction: column;
      gap: 10px;
    }

    .hero-right-title {
      font-size: 0.9rem;
      font-weight: 600;
      margin-bottom: 2px;
    }

    .hero-right-item {
      padding: 9px 10px;
      border-radius: 14px;
      background: rgba(15, 23, 42, 0.9);
      border: 1px solid rgba(31, 41, 55, 0.9);
      font-size: 0.8rem;
    }

    .hero-right-item strong {
      font-size: 0.82rem;
    }

    .hero-right-item span {
      display: block;
      color: var(--muted);
      margin-top: 2px;
    }

    section {
      padding: 18px 20px;
      border-radius: var(--radius-lg);
      background: radial-gradient(circle at top left, rgba(15, 23, 42, 0.7), #020617);
      border: 1px solid rgba(31, 41, 55, 0.9);
      box-shadow: 0 18px 45px rgba(15, 23, 42, 0.85);
    }

    .section-header {
      display: flex;
      justify-content: space-between;
      align-items: baseline;
      gap: 12px;
      margin-bottom: 12px;
    }

    .section-title {
      font-size: 1.1rem;
      font-weight: 600;
    }

    .section-sub {
      font-size: 0.78rem;
      color: var(--muted);
    }

    .about-text {
      font-size: 0.9rem;
      color: var(--muted);
      max-width: 800px;
    }

    .skills-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(180px, 1fr));
      gap: 10px;
      font-size: 0.85rem;
    }

    .skill-card {
      padding: 10px 11px;
      border-radius: 14px;
      background: rgba(15, 23, 42, 0.9);
      border: 1px solid rgba(31, 41, 55, 0.9);
    }

    .skill-card h3 {
      font-size: 0.85rem;
      margin-bottom: 4px;
    }

    .skill-tags {
      display: flex;
      flex-wrap: wrap;
      gap: 6px;
      margin-top: 6px;
    }

    .skill-tag {
      font-size: 0.72rem;
      padding: 3px 7px;
      border-radius: 999px;
      background: rgba(15, 23, 42, 0.9);
      border: 1px solid rgba(55, 65, 81, 0.85);
      color: var(--muted);
    }

    .projects-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
      gap: 12px;
    }

    .project-card {
      padding: 12px 12px;
      border-radius: 16px;
      background: rgba(15, 23, 42, 0.96);
      border: 1px solid rgba(31, 41, 55, 0.95);
      position: relative;
      overflow: hidden;
    }

    .project-pill {
      position: absolute;
      top: 10px;
      right: 10px;
      font-size: 0.7rem;
      padding: 3px 7px;
      border-radius: 999px;
      background: rgba(8, 47, 73, 0.85);
      border: 1px solid rgba(56, 189, 248, 0.6);
      color: var(--accent);
    }

    .project-title {
      font-size: 0.95rem;
      font-weight: 600;
      margin-bottom: 5px;
    }

    .project-meta {
      font-size: 0.75rem;
      color: var(--muted);
      margin-bottom: 7px;
    }

    .project-desc {
      font-size: 0.82rem;
      color: var(--muted);
      margin-bottom: 8px;
    }

    .project-links {
      display: flex;
      flex-wrap: wrap;
      gap: 8px;
      font-size: 0.78rem;
    }

    .project-links a {
      padding: 4px 9px;
      border-radius: 999px;
      border: 1px solid rgba(55, 65, 81, 0.85);
      background: rgba(15, 23, 42, 0.9);
      color: var(--muted);
      display: inline-flex;
      align-items: center;
      gap: 4px;
      transition: all 0.18s ease;
    }

    .project-links a:hover {
      border-color: var(--accent);
      color: var(--text);
      box-shadow: 0 0 0 1px rgba(56, 189, 248, 0.3);
    }

    .cert-list {
      list-style: none;
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(230px, 1fr));
      gap: 10px;
      font-size: 0.82rem;
    }

    .cert-list li {
      padding: 9px 11px;
      border-radius: 12px;
      background: rgba(15, 23, 42, 0.9);
      border: 1px solid rgba(31, 41, 55, 0.95);
    }

    .cert-name {
      font-weight: 500;
      display: block;
      margin-bottom: 2px;
    }

    .cert-org {
      color: var(--muted);
      font-size: 0.76rem;
    }

    .contact-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
      gap: 10px;
      font-size: 0.85rem;
    }

    .contact-item {
      padding: 10px 11px;
      border-radius: 14px;
      background: rgba(15, 23, 42, 0.9);
      border: 1px solid rgba(31, 41, 55, 0.95);
    }

    .contact-item span {
      display: block;
      color: var(--muted);
      font-size: 0.78rem;
      margin-bottom: 2px;
    }

    .contact-item a {
      font-size: 0.86rem;
    }

    footer {
      text-align: center;
      font-size: 0.78rem;
      color: var(--muted);
      margin-top: 18px;
      padding-top: 12px;
      border-top: 1px solid rgba(30, 64, 175, 0.6);
    }

    @media (max-width: 768px) {
      .hero {
        grid-template-columns: minmax(0, 1fr);
      }

      .hero-right {
        order: -1;
      }

      .page {
        padding-inline: 16px;
      }

      header {
        padding-top: 6px;
      }
    }

    html {
      scroll-behavior: smooth;
    }
  </style>
</head>
<body>
  <div class="page">
    <header>
      <nav class="nav">
        <div class="nav-left">
          <div class="nav-name">Davut Yayla</div>
          <div class="nav-sub">Yazılım Geliştirici · Veri & Yapay Zeka Meraklısı</div>
        </div>
        <div class="nav-links">
          <a href="#about">Hakkımda</a>
          <a href="#skills">Yetenekler</a>
          <a href="#projects">Projeler</a>
          <a href="#certs">Sertifikalar</a>
          <a href="#contact">İletişim</a>
        </div>
      </nav>
    </header>

    <main>
      <!-- HERO -->
      <section class="hero">
        <div class="hero-left">
          <div class="hero-badge">
            <span class="hero-badge-dot"></span>
            Aktif olarak yeni projeler üretiyorum
          </div>
          <h1 class="hero-title">
            Merhaba, ben <span>Davut.</span><br />
            Masaüstü ve mobil projeler geliştiriyorum.
          </h1>
          <p class="hero-sub">
            Arapça dil öğrenme uygulaması, görüntü analizi ve veri analizi programları geliştirdim.
            Özellikle savunma, eğitim ve karar destek süreçlerinde kullanılabilecek
            pratik yazılım çözümleri üretmeye odaklanıyorum.
          </p>
          <div class="hero-tags">
            <div class="tag">Python</div>
            <div class="tag">Masaüstü Uygulamalar</div>
            <div class="tag">Veri Analizi</div>
            <div class="tag">Yapay Zeka & Otomasyon</div>
            <div class="tag">Flutter (öğrenme aşamasında)</div>
          </div>
          <div class="hero-cta">
            <a href="#projects" class="btn-primary">Projelerimi Gör</a>
            <a href="#contact" class="btn-ghost">İletişime Geç</a>
          </div>
        </div>

        <aside class="hero-right">
          <div class="hero-right-title">Öne Çıkan Başlıklar</div>
          <div class="hero-right-item">
            <strong>Arapça Dil Öğrenme Programı</strong>
            <span>Personel için pratik Arapça diyalog ve kelime öğrenme aracı. Masaüstü olarak kullanılabilir yapıdadır.</span>
          </div>
          <div class="hero-right-item">
            <strong>Görüntü Analizi Programı</strong>
            <span>İHA/drone veya farklı görüntü kaynaklarından gelen verilerin analizine yönelik temel arayüz ve işleme akışı.</span>
          </div>
          <div class="hero-right-item">
            <strong>Veri Analizi Programı</strong>
            <span>Excel, PDF gibi farklı formatlardaki dosyalardan verileri okuyup raporlama ve filtreleme yapan masaüstü çözüm.</span>
          </div>
        </aside>
      </section>

      <!-- HAKKIMDA -->
      <section id="about">
        <div class="section-header">
          <h2 class="section-title">Hakkımda</h2>
          <p class="section-sub">Kısaca kimim, neler yapıyorum?</p>
        </div>
        <p class="about-text">
          Kamu görevimin yanında yazılım geliştirme, veri analizi ve yapay zeka alanında kendimi
          geliştirmeye devam ediyorum. Farklı senaryolarda kullanılabilecek masaüstü uygulamalar,
          eğitim amaçlı araçlar ve otomasyon çözümleri üretiyorum.  
          <br /><br />
          Hedefim; sahada çalışan personelin işini kolaylaştıran,
          zaman kazandıran ve karar alma süreçlerini destekleyen pratik yazılımlar geliştirmek.
          Yeni teknolojileri takip ediyor, özellikle yapay zeka tabanlı çözümlere odaklanıyorum.
        </p>
      </section>

      <!-- YETENEKLER -->
      <section id="skills">
        <div class="section-header">
          <h2 class="section-title">Yetenekler</h2>
          <p class="section-sub">Kullandığım teknolojiler ve odak alanlarım</p>
        </div>
        <div class="skills-grid">
          <div class="skill-card">
            <h3>Programlama & Araçlar</h3>
            <p>Günlük hayatta aktif kullandığım diller ve araçlar:</p>
            <div class="skill-tags">
              <span class="skill-tag">Python</span>
              <span class="skill-tag">Desktop Uygulama</span>
              <span class="skill-tag">Git & GitHub</span>
              <span class="skill-tag">Inno Setup / NSIS</span>
            </div>
          </div>
          <div class="skill-card">
            <h3>Veri & Analiz</h3>
            <p>Veri okuma, raporlama ve temel analiz:</p>
            <div class="skill-tags">
              <span class="skill-tag">Excel veri işleme</span>
              <span class="skill-tag">PDF/Doc okuma</span>
              <span class="skill-tag">Raporlama</span>
            </div>
          </div>
          <div class="skill-card">
            <h3>Yapay Zeka & Otomasyon</h3>
            <p>Pratik çözümler için yapay zeka entegrasyonu:</p>
            <div class="skill-tags">
              <span class="skill-tag">Prompt tasarımı</span>
              <span class="skill-tag">Görüntü analizi fikirleri</span>
              <span class="skill-tag">Eğitim içerikleri</span>
            </div>
          </div>
          <div class="skill-card">
            <h3>Mobil & UI (Başlangıç)</h3>
            <p>Mobil tarafta öğrenme sürecinde olduğum alanlar:</p>
            <div class="skill-tags">
              <span class="skill-tag">Flutter</span>
              <span class="skill-tag">Android Studio</span>
              <span class="skill-tag">Basit UI tasarımı</span>
            </div>
          </div>
        </div>
      </section>

      <!-- PROJELER -->
      <section id="projects">
        <div class="section-header">
          <h2 class="section-title">Projeler</h2>
          <p class="section-sub">Gerçek ihtiyaçlardan yola çıkarak geliştirdiğim çalışmalar</p>
        </div>

        <div class="projects-grid">
          <!-- Proje 1 -->
          <article class="project-card">
            <div class="project-pill">Masaüstü Uygulama</div>
            <h3 class="project-title">Arapça Dil Öğrenme Programı</h3>
            <div class="project-meta">Python · Eğitim · Diyalog Temelli</div>
            <p class="project-desc">
              Özellikle sahada görev yapan personelin günlük iletişimde kullanabileceği
              Arapça cümleleri ve diyalogları içeren pratik bir masaüstü uygulama.
              Hazır diyaloglar, kelime kartları ve telaffuz desteği ile öğrenmeyi hızlandırmayı hedefler.
            </p>
            <div class="project-links">
              <!-- Buradaki # işaretlerini kendi linklerinle değiştirebilirsin -->
              <a href="#" target="_blank" rel="noopener">Tanıtım / Ekran Görüntüleri</a>
              <a href="#" target="_blank" rel="noopener">Kurulum Dosyası (Varsa)</a>
            </div>
          </article>

          <!-- Proje 2 -->
          <article class="project-card">
            <div class="project-pill">Analiz Aracı</div>
            <h3 class="project-title">Görüntü Analizi Programı</h3>
            <div class="project-meta">Python · Görüntü İşleme · İHA/Drone</div>
            <p class="project-desc">
              İHA/drone görüntüleri veya farklı kameralarla alınan görüntüleri analiz etmeye yönelik
              bir temel arayüz sunar. Görüntü yükleme, işleme ve kullanıcı dostu bir ekran üzerinden
              çıktı alma mantığıyla tasarlanmıştır.
            </p>
            <div class="project-links">
              <a href="#" target="_blank" rel="noopener">Proje Özeti (PDF)</a>
              <a href="#" target="_blank" rel="noopener">Ekran Görüntüleri</a>
            </div>
          </article>

          <!-- Proje 3 -->
          <article class="project-card">
            <div class="project-pill">Veri Aracı</div>
            <h3 class="project-title">Veri Analizi Programı</h3>
            <div class="project-meta">Python · Excel/PDF · Raporlama</div>
            <p class="project-desc">
              Excel, PDF veya benzeri formatlardaki dosyalardan verileri okuyup filtreleyebilen,
              basit raporlar ve özetler çıkarabilen masaüstü uygulama. Özellikle rutin raporlamaları
              hızlandırmak ve hata payını azaltmak amacıyla tasarlanmıştır.
            </p>
            <div class="project-links">
              <a href="#" target="_blank" rel="noopener">Kullanım Senaryosu</a>
              <a href="#" target="_blank" rel="noopener">Kurulum / Setup</a>
            </div>
          </article>

          <!-- Proje 4 - Öneri -->
          <article class="project-card">
            <div class="project-pill">Fikir / Devam</div>
            <h3 class="project-title">TSK İçin Yapay Zeka Tabanlı Öneriler</h3>
            <div class="project-meta">Yapay Zeka · Eğitim · Karar Destek</div>
            <p class="project-desc">
              Eğitim materyalleri, 3D yazıcı kullanımı, yapay zeka tabanlı analiz araçları ve
              sahadaki verimliliği artırmaya yönelik farklı konsept çalışmalar. Komutanlık seviyesinde
              sunum ve dokümanlara dönüştürülmüş fikirler ve prototipler içerir.
            </p>
            <div class="project-links">
              <a href="#" target="_blank" rel="noopener">Sunum / PowerPoint</a>
              <a href="#" target="_blank" rel="noopener">Özet Doküman</a>
            </div>
          </article>
        </div>
      </section>

      <!-- SERTİFİKALAR -->
      <section id="certs">
        <div class="section-header">
          <h2 class="section-title">Sertifikalar</h2>
          <p class="section-sub">Finansal okuryazarlık ve teknik alanlardaki eğitimlerim</p>
        </div>
        <ul class="cert-list">
          <li>
            <span class="cert-name">Finansal Okuryazarlık ve Bireysel Finans Yönetimi</span>
            <span class="cert-org">Kurum / Platform Adı (Yıl)</span>
          </li>
          <li>
            <span class="cert-name">Yapay Zeka ile Üretkenlik ve Otomasyon</span>
            <span class="cert-org">Kurum / Platform Adı (Yıl)</span>
          </li>
          <li>
            <span class="cert-name">Python ile Uygulama Geliştirme (Başlangıç – Orta)</span>
            <span class="cert-org">Kurum / Platform Adı (Yıl)</span>
          </li>
          <li>
            <span class="cert-name">Veri Analizi Temelleri</span>
            <span class="cert-org">Kurum / Platform Adı (Yıl)</span>
          </li>
        </ul>
      </section>

      <!-- İLETİŞİM -->
      <section id="contact">
        <div class="section-header">
          <h2 class="section-title">İletişim</h2>
          <p class="section-sub">Bana ulaşmak için</p>
        </div>
        <div class="contact-grid">
          <div class="contact-item">
            <span>E-posta</span>
            <a href="mailto:ornek@mail.com">ornek@mail.com</a>
          </div>
          <div class="contact-item">
            <span>GitHub</span>
            <a href="https://github.com/kullaniciadiniz" target="_blank" rel="noopener">
              github.com/kullaniciadiniz
            </a>
          </div>
          <div class="contact-item">
            <span>LinkedIn</span>
            <a href="https://www.linkedin.com/in/kullaniciadiniz" target="_blank" rel="noopener">
              linkedin.com/in/kullaniciadiniz
            </a>
          </div>
        </div>
      </section>
    </main>

    <footer>
      © <span id="year"></span> Davut Yayla · Tüm hakları saklıdır.
    </footer>
  </div>

  <script>
    // Yılı otomatik güncelle
    document.getElementById("year").textContent = new Date().getFullYear();
  </script>
</body>
</html>
