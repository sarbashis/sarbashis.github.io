---
title: About
icon: fas fa-info-circle
order: 1
---

<style>
/* --- About Page Styles --- */
.about-page { max-width: 800px; }

/* Hero section */
.about-hero {
  display: flex;
  gap: 2rem;
  align-items: center;
  margin-bottom: 1.5rem;
}
.about-avatar {
  flex-shrink: 0;
}
.about-avatar img {
  width: 150px;
  height: 150px;
  border-radius: 50%;
  object-fit: cover;
  border: 3px solid var(--main-border-color, #f3f3f3);
}
.about-intro h1 {
  margin: 0 0 0.25rem 0;
  font-size: 1.6rem;
  color: var(--heading-color, #2a2a2a);
}
.about-intro .tagline {
  font-size: 1rem;
  color: var(--text-muted-color, #757575);
  margin-bottom: 0.75rem;
}
.social-links a {
  display: inline-flex;
  align-items: center;
  gap: 0.35rem;
  padding: 0.3rem 0.7rem;
  margin: 0.2rem 0.3rem 0.2rem 0;
  border: 1px solid var(--btn-border-color, #e9ecef);
  border-radius: 2rem;
  font-size: 0.82rem;
  color: var(--text-color, inherit);
  text-decoration: none;
  transition: background-color 0.2s ease, color 0.2s ease;
}
.social-links a:hover {
  background-color: var(--link-color, #0056b2);
  color: #fff;
  text-decoration: none;
  border-color: var(--link-color, #0056b2);
}
.social-links a i { font-size: 0.9rem; }

/* What I Do cards */
.what-i-do {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 1rem;
  margin: 1.5rem 0;
}
.wid-card {
  padding: 1.25rem;
  border: 1px solid var(--main-border-color, #f3f3f3);
  border-radius: 0.5rem;
  background-color: var(--card-bg, #fff);
}
.wid-card i {
  font-size: 1.4rem;
  color: var(--link-color, #0056b2);
  margin-bottom: 0.5rem;
  display: block;
}
.wid-card h3 {
  font-size: 1rem;
  margin: 0 0 0.4rem 0;
  color: var(--heading-color, #2a2a2a);
}
.wid-card p {
  font-size: 0.88rem;
  color: var(--text-muted-color, #757575);
  margin: 0;
  line-height: 1.5;
}

/* Focus badges */
.focus-badges {
  display: flex;
  flex-wrap: wrap;
  gap: 0.4rem;
  margin: 1rem 0;
}
.focus-badge {
  display: inline-block;
  padding: 0.25rem 0.7rem;
  border-radius: 1rem;
  font-size: 0.84rem;
  font-weight: 500;
  background: rgba(99,102,241,0.12);
  color: #6366f1;
}
[data-mode="dark"] .focus-badge {
  background: rgba(99,102,241,0.2);
  color: #a5b4fc;
}

/* Connect section */
.connect-links {
  display: flex;
  flex-wrap: wrap;
  gap: 0.6rem;
  margin: 1rem 0;
}
.connect-link {
  display: inline-flex;
  align-items: center;
  gap: 0.5rem;
  padding: 0.5rem 1.1rem;
  border: 1px solid var(--btn-border-color, #e9ecef);
  border-radius: 0.375rem;
  color: var(--text-color, inherit);
  text-decoration: none;
  font-size: 0.9rem;
  font-weight: 600;
  transition: background-color 0.2s ease, color 0.2s ease;
}
.connect-link:hover {
  background-color: var(--link-color, #0056b2);
  color: #fff;
  text-decoration: none;
  border-color: var(--link-color, #0056b2);
}
.connect-link i { font-size: 1.1rem; }

/* Section titles */
.about-section-title {
  margin-top: 0;
}
.about-section-title i {
  margin-right: 0.5rem;
  color: var(--link-color, #0056b2);
}

/* Mobile */
@media (max-width: 576px) {
  .about-hero {
    flex-direction: column;
    text-align: center;
  }
  .social-links { justify-content: center; display: flex; flex-wrap: wrap; }
  .what-i-do { grid-template-columns: 1fr; }
}
</style>

<div class="about-page" markdown="0">

<div class="about-hero">
  <div class="about-avatar">
    <img src="/assets/img/avatar.jpg" alt="Sarbashis Das">
  </div>
  <div class="about-intro">
    <h1>Sarbashis Das, PhD</h1>
    <div class="tagline">Principal Data Scientist &amp; Technical Lead at Ericsson, Sweden</div>
    <div class="social-links">
      <a href="https://github.com/sarbashis" target="_blank"><i class="fab fa-github"></i> GitHub</a>
      <a href="https://www.linkedin.com/in/sarbashis/" target="_blank"><i class="fab fa-linkedin"></i> LinkedIn</a>
      <a href="https://scholar.google.com/citations?user=MDDoPX0AAAAJ&hl=en" target="_blank"><i class="fas fa-graduation-cap"></i> Scholar</a>
      <a href="mailto:dsarbashis@gmail.com"><i class="fas fa-envelope"></i> Email</a>
    </div>
  </div>
</div>

<hr>

<h2 class="about-section-title"><i class="fas fa-user"></i> Hello!</h2>

<p>My journey into the world of data began in computational biology, where I earned my PhD studying gene regulatory networks and applying machine learning to understand complex biological systems. That foundation in scientific rigor and pattern discovery shaped how I approach every challenge today.</p>

<p>Over the past decade, I've transitioned from academia to industry, now leading AI teams at Ericsson. What excites me most is bridging the gap between cutting-edge research and real-world products — taking ideas from papers and prototypes to production systems that create tangible business value. I'm particularly passionate about Generative AI and how it's reshaping the way we build intelligent applications.</p>

<p>When I'm not building AI systems, I enjoy mentoring the next generation of data scientists, sharing knowledge through conference talks, and writing about emerging AI technologies on this blog.</p>

<hr>

<h2 class="about-section-title"><i class="fas fa-rocket"></i> What I Do</h2>

<div class="what-i-do">
  <div class="wid-card">
    <i class="fas fa-users"></i>
    <h3>AI Leadership</h3>
    <p>Leading cross-functional teams of data scientists, engineers, and domain experts to deliver AI products from concept to production.</p>
  </div>
  <div class="wid-card">
    <i class="fas fa-robot"></i>
    <h3>Generative AI</h3>
    <p>Building RAG systems, agentic chatbots, and LLM-powered tools — from architecture design to deployment at scale.</p>
  </div>
  <div class="wid-card">
    <i class="fas fa-project-diagram"></i>
    <h3>Solution Architecture</h3>
    <p>Designing scalable AI architectures with microservices, cloud platforms, and modern MLOps practices.</p>
  </div>
  <div class="wid-card">
    <i class="fas fa-flask"></i>
    <h3>Research to Product</h3>
    <p>Bridging academia and industry — turning research insights into production-ready AI solutions.</p>
  </div>
</div>

<hr>

<h2 class="about-section-title"><i class="fas fa-crosshairs"></i> Current Focus</h2>

<div class="focus-badges">
  <span class="focus-badge">Agentic AI</span>
  <span class="focus-badge">RAG Systems</span>
  <span class="focus-badge">LLM Orchestration</span>
  <span class="focus-badge">AI Leadership</span>
  <span class="focus-badge">Prompt Engineering</span>
  <span class="focus-badge">Knowledge Graphs</span>
  <span class="focus-badge">AI Product Development</span>
</div>

<p>For a detailed look at my professional experience, skills, and achievements, visit my <a href="/cv/">CV page</a>.</p>


</div>
