---
title: CV
icon: fas fa-file-alt
order: 3
---

<style>
/* --- CV Page Styles --- */
.cv-page { max-width: 800px; }

/* Download button */
.cv-download {
  display: inline-block;
  margin-top: 0.75rem;
  padding: 0.4rem 1rem;
  border: 1px solid var(--btn-border-color, #e9ecef);
  border-radius: 0.375rem;
  color: var(--link-color, #0056b2);
  font-size: 0.9rem;
  font-weight: 600;
  text-decoration: none;
  transition: background-color 0.2s ease, color 0.2s ease;
}
.cv-download:hover {
  background-color: var(--link-color, #0056b2);
  color: #fff;
  text-decoration: none;
}
.cv-download i { margin-right: 0.4rem; }

/* Metrics bar */
.metrics-bar {
  display: flex;
  flex-wrap: wrap;
  gap: 1rem;
  margin: 1.5rem 0;
}
.metric {
  flex: 1 1 120px;
  text-align: center;
  padding: 1rem 0.5rem;
  border: 1px solid var(--main-border-color, #f3f3f3);
  border-radius: 0.5rem;
  background-color: var(--card-bg, #fff);
}
.metric-number {
  display: block;
  font-size: 1.8rem;
  font-weight: 700;
  color: var(--link-color, #0056b2);
  line-height: 1.2;
}
.metric-label {
  display: block;
  font-size: 0.8rem;
  color: var(--text-muted-color, #757575);
  margin-top: 0.25rem;
}

/* Section headings with icons */
.cv-section-title i {
  margin-right: 0.5rem;
  color: var(--link-color, #0056b2);
}

/* Skill badges */
.skill-category { margin-bottom: 1rem; }
.skill-category strong {
  display: block;
  margin-bottom: 0.4rem;
  color: var(--heading-color, #2a2a2a);
}
.skill-badge {
  display: inline-block;
  padding: 0.2rem 0.6rem;
  margin: 0.15rem 0.2rem;
  border-radius: 1rem;
  font-size: 0.82rem;
  font-weight: 500;
}
.cat-leadership  { background: rgba(59,130,246,0.12); color: #3b82f6; }
.cat-pm          { background: rgba(34,197,94,0.12);  color: #22c55e; }
.cat-genai       { background: rgba(168,85,247,0.12); color: #a855f7; }
.cat-frameworks  { background: rgba(249,115,22,0.12); color: #f97316; }
.cat-ir          { background: rgba(20,184,166,0.12); color: #14b8a6; }
.cat-cloud       { background: rgba(99,102,241,0.12); color: #6366f1; }
.cat-viz         { background: rgba(236,72,153,0.12); color: #ec4899; }
.cat-programming { background: rgba(107,114,128,0.15); color: #6b7280; }

/* Dark mode badge adjustments */
[data-mode="dark"] .cat-leadership  { background: rgba(59,130,246,0.2);  color: #93bbfd; }
[data-mode="dark"] .cat-pm          { background: rgba(34,197,94,0.2);   color: #86efac; }
[data-mode="dark"] .cat-genai       { background: rgba(168,85,247,0.2);  color: #d8b4fe; }
[data-mode="dark"] .cat-frameworks  { background: rgba(249,115,22,0.2);  color: #fdba74; }
[data-mode="dark"] .cat-ir          { background: rgba(20,184,166,0.2);  color: #5eead4; }
[data-mode="dark"] .cat-cloud       { background: rgba(99,102,241,0.2);  color: #a5b4fc; }
[data-mode="dark"] .cat-viz         { background: rgba(236,72,153,0.2);  color: #f9a8d4; }
[data-mode="dark"] .cat-programming { background: rgba(107,114,128,0.25); color: #9ca3af; }

/* Timeline */
.timeline {
  position: relative;
  padding-left: 1.5rem;
  border-left: 2px solid var(--link-color, #0056b2);
}
.timeline-item {
  position: relative;
  padding-bottom: 1.75rem;
}
.timeline-item:last-child { padding-bottom: 0; }
.timeline-item::before {
  content: '';
  position: absolute;
  left: -1.75rem;
  top: 0.35rem;
  width: 12px;
  height: 12px;
  border-radius: 50%;
  background-color: var(--link-color, #0056b2);
  border: 2px solid var(--card-bg, #fff);
}
.timeline-item h3 {
  margin: 0 0 0.2rem 0;
  font-size: 1.05rem;
  color: var(--heading-color, #2a2a2a);
}
.timeline-meta {
  display: block;
  font-size: 0.88rem;
  color: var(--text-muted-color, #757575);
  margin-bottom: 0.5rem;
}
.timeline-item ul {
  margin: 0;
  padding-left: 1.2rem;
}
.timeline-item li {
  font-size: 0.92rem;
  margin-bottom: 0.25rem;
}
</style>

<div class="cv-page" markdown="0">

<h1>Sarbashis Das, PhD</h1>
<p><strong>Principal Data Scientist &amp; Technical Lead — Ericsson, Sweden</strong></p>
<p>With over 15 years spanning academic research and enterprise AI, I drive the strategy, architecture, and delivery of AI-powered products at Ericsson. From building an enterprise-grade MCP Gateway and Agentic RAG systems to designing AI agent frameworks adopted across the organization, I operate at the intersection of technical depth and business impact. I set technical direction for cross-functional teams, align AI initiatives with product strategy, and champion the adoption of emerging technologies — including Claude Skills, AI Agents, and Model Context Protocol — to transform how teams build and ship intelligent systems.</p>

<!-- <a class="cv-download" href="/assets/docs/cv.pdf" target="_blank"><i class="fas fa-download"></i>Download PDF</a> -->

<div class="metrics-bar">
  <div class="metric"><span class="metric-number">15+</span><span class="metric-label">Years in AI/ML</span></div>
  <div class="metric"><span class="metric-number">15</span><span class="metric-label">Team Members Led</span></div>
  <div class="metric"><span class="metric-number">16</span><span class="metric-label">Quarterly Releases</span></div>
  <div class="metric"><span class="metric-number">1</span><span class="metric-label">AWS re:Invent Speaker</span></div>
</div>

<hr>

<h2 class="cv-section-title"><i class="fas fa-tools"></i> Professional Skills</h2>

<div class="skill-category">
  <strong>AI &amp; Technical Leadership</strong>
  <span class="skill-badge cat-leadership">Technical Vision &amp; Strategy</span>
  <span class="skill-badge cat-leadership">Cross-functional Team Leadership</span>
  <span class="skill-badge cat-leadership">Architecture Decision-Making</span>
  <span class="skill-badge cat-leadership">Stakeholder Alignment</span>
  <span class="skill-badge cat-leadership">Mentorship &amp; Talent Development</span>
  <span class="skill-badge cat-leadership">Build vs Buy Evaluation</span>
</div>

<div class="skill-category">
  <strong>Project Management</strong>
  <span class="skill-badge cat-pm">Agile Methodologies</span>
  <span class="skill-badge cat-pm">JIRA &amp; Confluence</span>
  <span class="skill-badge cat-pm">Risk Management</span>
  <span class="skill-badge cat-pm">Resource Allocation</span>
  <span class="skill-badge cat-pm">Stakeholder Communication</span>
</div>

<div class="skill-category">
  <strong>Generative AI &amp; Agents</strong>
  <span class="skill-badge cat-genai">Agentic RAG</span>
  <span class="skill-badge cat-genai">AI Agents</span>
  <span class="skill-badge cat-genai">MCP Gateway</span>
  <span class="skill-badge cat-genai">Claude Skills</span>
  <span class="skill-badge cat-genai">Prompt Engineering</span>
  <span class="skill-badge cat-genai">Model Evaluation</span>
  <span class="skill-badge cat-genai">Agent Orchestration</span>
</div>

<div class="skill-category">
  <strong>GenAI Frameworks &amp; Platforms</strong>
  <span class="skill-badge cat-frameworks">LangChain</span>
  <span class="skill-badge cat-frameworks">LangGraph</span>
  <span class="skill-badge cat-frameworks">CrewAI</span>
  <span class="skill-badge cat-frameworks">AWS Bedrock AgentCore</span>
  <span class="skill-badge cat-frameworks">Model Context Protocol</span>
  <span class="skill-badge cat-frameworks">RAGAS</span>
  <span class="skill-badge cat-frameworks">Haystack</span>
</div>

<div class="skill-category">
  <strong>Information Retrieval</strong>
  <span class="skill-badge cat-ir">Semantic Search</span>
  <span class="skill-badge cat-ir">Vector Search</span>
  <span class="skill-badge cat-ir">Data Preprocessing</span>
  <span class="skill-badge cat-ir">Knowledge Graphs</span>
  <span class="skill-badge cat-ir">Query Understanding</span>
</div>

<div class="skill-category">
  <strong>Cloud Platforms</strong>
  <span class="skill-badge cat-cloud">Azure ML</span>
  <span class="skill-badge cat-cloud">AWS Bedrock</span>
  <span class="skill-badge cat-cloud">Vertex AI</span>
  <span class="skill-badge cat-cloud">Google Cloud AI</span>
  <span class="skill-badge cat-cloud">Amazon SageMaker</span>
</div>

<div class="skill-category">
  <strong>Visualization</strong>
  <span class="skill-badge cat-viz">Kibana</span>
  <span class="skill-badge cat-viz">Grafana</span>
  <span class="skill-badge cat-viz">Tableau</span>
  <span class="skill-badge cat-viz">Power BI</span>
</div>

<div class="skill-category">
  <strong>Programming</strong>
  <span class="skill-badge cat-programming">Python</span>
  <span class="skill-badge cat-programming">R</span>
  <span class="skill-badge cat-programming">SQL</span>
  <span class="skill-badge cat-programming">Bash</span>
  <span class="skill-badge cat-programming">C</span>
</div>

<hr>

<h2 class="cv-section-title"><i class="fas fa-briefcase"></i> Experience</h2>

<div class="timeline">

  <div class="timeline-item">
    <h3>Principal Data Scientist &amp; Technical Lead — AI Agent Platform &amp; Agentic RAG</h3>
    <span class="timeline-meta"><strong>Ericsson, AI Hub</strong> · 2024 – Present</span>
    <ul>
      <li>Defining and executing the technical vision for Ericsson's AI agent platform, from Agentic RAG architecture to enterprise-grade MCP Gateway with OAuth and multi-server orchestration</li>
      <li>Architected and delivered an MCP Gateway integrating Microsoft Entra ID authentication, enabling secure, scalable tool access across AI agents organization-wide</li>
      <li>Pioneered adoption of Claude Skills and AI agent workflows, establishing reusable patterns for developer productivity across teams</li>
      <li>Presented at <strong>AWS re:Invent 2025</strong>, showcasing how Ericsson leverages AgentCore to build specialized AI agents that eliminate knowledge silos</li>
      <li>Driving the strategic roadmap for AI-powered products, aligning technical capabilities with business outcomes across multiple stakeholder groups</li>
    </ul>
  </div>

  <div class="timeline-item">
    <h3>AI Architect &amp; Technical Lead — Ericsson Product Information Assistant</h3>
    <span class="timeline-meta"><strong>Ericsson, AI Hub</strong> · 2020 – 2024</span>
    <ul>
      <li>Owned the end-to-end architecture and technical direction for a flagship AI product, leading a cross-functional team of 15 across Data Science, Engineering, and Domain expertise</li>
      <li>Shaped the product roadmap in partnership with Product Owners and Strategic Product Managers, translating business needs into technical initiatives</li>
      <li>Delivered 16 successful quarterly releases through disciplined Agile execution, establishing a cadence that became a model for other AI teams</li>
      <li>Drove build-vs-buy decisions and technology evaluations, ensuring the architecture scaled with evolving business requirements</li>
      <li>Established engineering standards, code review practices, and technical mentorship programs that accelerated team velocity</li>
    </ul>
  </div>

  <div class="timeline-item">
    <h3>Senior Data Scientist — Global AI Accelerator (GAIA)</h3>
    <span class="timeline-meta"><strong>Ericsson</strong> · 2021 – 2023</span>
    <ul>
      <li>Identified and championed Retrieval Augmented Generation (RAG) as a strategic capability, driving the organization's first production RAG implementation</li>
      <li>Evaluated and benchmarked vector stores, embedding models, and retrieval strategies to establish the reference architecture for RAG at Ericsson</li>
      <li>Designed prompt engineering frameworks and architectural patterns that became the foundation for subsequent Agentic RAG systems</li>
    </ul>
  </div>

  <div class="timeline-item">
    <h3>Leaders Core Curriculum Program (LCC)</h3>
    <span class="timeline-meta"><strong>Ericsson</strong> · Sept 2022 – March 2023</span>
    <ul>
      <li>Completed Ericsson's 15-week leadership development program focused on executive influence, organizational dynamics, and strategic thinking</li>
      <li>Developed leadership toolkit for driving alignment across distributed teams and influencing without authority</li>
    </ul>
  </div>

  <div class="timeline-item">
    <h3>Data Scientist — Global AI Accelerator (GAIA)</h3>
    <span class="timeline-meta"><strong>Ericsson</strong> · 2019 – 2021</span>
    <ul>
      <li>Built end-to-end NLP pipelines for document processing and Knowledge Graph construction, establishing foundational data infrastructure</li>
      <li>Developed custom NER models for Ericsson product domain, improving entity recognition accuracy for downstream search and retrieval</li>
      <li>Designed SPARQL-based query interfaces enabling structured knowledge access across product documentation</li>
    </ul>
  </div>

  <div class="timeline-item">
    <h3>Researcher / Senior Researcher</h3>
    <span class="timeline-meta"><strong>SciLifeLab, Uppsala University</strong> · 2011 – 2019</span>
    <ul>
      <li>Led computational biology research applying ML to gene regulation in cardiac disease, publishing in peer-reviewed journals</li>
      <li>Developed unsupervised clustering and dimensionality reduction pipelines identifying 743 dysregulated genes across heart failure subtypes</li>
      <li>Built the analytical foundation and scientific rigor that underpins a data-driven approach to complex systems</li>
    </ul>
  </div>

</div>

<hr>

<h2 class="cv-section-title"><i class="fas fa-graduation-cap"></i> Education</h2>

<ul>
  <li><strong>Ph.D.</strong> in Computational &amp; System Science</li>
  <li><strong>M.Tech</strong> in Computational &amp; System Science</li>
</ul>

<hr>

<h2 class="cv-section-title"><i class="fas fa-certificate"></i> Certifications</h2>

<ul>
  <li>Generative AI and Large Language Model</li>
  <li>Specialization in Machine Learning Engineering for Production (MLOps)</li>
  <li>Specialization in Deep Learning</li>
  <li>Architecting with Google Kubernetes Engine: Workloads</li>
  <li>Architecting with Google Kubernetes Engine: Foundations</li>
  <li>Machine Learning A-Z — Hands-On Python &amp; R in Data Science</li>
  <li>Machine Learning, Stanford University</li>
  <li>Introduction to Data Science in Python, University of Michigan</li>
</ul>

<hr>

<h2 class="cv-section-title"><i class="fas fa-trophy"></i> Awards</h2>

<ul>
  <li><strong>2024</strong> — Ericsson Key Contributor Award. Recognizes potential to drive Ericsson's long-term strategic priorities.</li>
  <li><strong>2021</strong> — Ericsson Impact Award. Given for contributions with great impact to Ericsson business value.</li>
  <li><strong>2017</strong> — Research Grant (co-applicant). <em>Dynamics of gene regulatory networks in response to different stresses in Mycobacteria.</em> Funded by FORMAS.</li>
  <li><strong>2016</strong> — Research Grant (co-applicant). <em>Non-coding and regulatory RNAs in Mycobacteria.</em> Funded by Swedish Research Council (VR).</li>
  <li><strong>2012</strong> — Wennergren Postdoc Fellowship. Funded by Wennergren Foundations. Grant offered but gracefully declined.</li>
  <li><strong>2010</strong> — Senior Research Fellowship. Funded by CSIR, Government of India.</li>
  <li><strong>2006</strong> — Scholarship for Master of Technology. Funded by DBT, Government of India.</li>
</ul>

<hr>

<h2 class="cv-section-title"><i class="fas fa-microphone-alt"></i> Talks &amp; Presentations</h2>

<ul>
  <li><strong>2025</strong> — <strong>AWS re:Invent</strong>, Las Vegas. Showcased how Ericsson leverages AgentCore to build specialized AI agents and domain-focused models.</li>
  <li><strong>2024</strong> — Ericsson Developer Conference. Presented Ericsson Product Information Assistant with Generative AI.</li>
  <li><strong>2024</strong> — Uppsala University. Invited talk on Generative AI &amp; LLM to Master Program students.</li>
  <li><strong>2023</strong> — Multiple Ericsson organizations. Presented &amp; demoed Retrieval Augmented Generation (RAG) Architecture in PIA.</li>
  <li><strong>2022</strong> — Ericsson Developer Conference, Stockholm. Presented &amp; demoed Ericsson Product Information Assistant.</li>
</ul>

</div>
