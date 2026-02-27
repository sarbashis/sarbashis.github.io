---
title: Projects
icon: fas fa-project-diagram
order: 2
---

<style>
.projects-page { max-width: 800px; }

.project-card {
  border: 1px solid var(--main-border-color, #f3f3f3);
  border-radius: 0.75rem;
  overflow: hidden;
  background-color: var(--card-bg, #fff);
  margin-bottom: 1.5rem;
  transition: box-shadow 0.2s ease;
}
.project-card:hover {
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08);
}
[data-mode="dark"] .project-card:hover {
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
}

.project-card img {
  width: 100%;
  height: 200px;
  object-fit: cover;
  object-position: top;
  border-bottom: 1px solid var(--main-border-color, #f3f3f3);
}

.project-body {
  padding: 1.25rem;
}
.project-body h3 {
  font-size: 1.1rem;
  margin: 0 0 0.4rem 0;
  color: var(--heading-color, #2a2a2a);
}
.project-body h3 i {
  margin-right: 0.4rem;
  color: var(--link-color, #0056b2);
}
.project-body p {
  font-size: 0.9rem;
  color: var(--text-muted-color, #757575);
  line-height: 1.6;
  margin: 0 0 0.75rem 0;
}

.project-tags {
  display: flex;
  flex-wrap: wrap;
  gap: 0.35rem;
}
.project-tag {
  display: inline-block;
  padding: 0.2rem 0.6rem;
  border-radius: 1rem;
  font-size: 0.78rem;
  font-weight: 500;
  background: rgba(99, 102, 241, 0.12);
  color: #6366f1;
}
[data-mode="dark"] .project-tag {
  background: rgba(99, 102, 241, 0.2);
  color: #a5b4fc;
}

.project-tag-purple { background: rgba(168,85,247,0.12); color: #a855f7; }
[data-mode="dark"] .project-tag-purple { background: rgba(168,85,247,0.2); color: #d8b4fe; }

.project-tag-blue { background: rgba(59,130,246,0.12); color: #3b82f6; }
[data-mode="dark"] .project-tag-blue { background: rgba(59,130,246,0.2); color: #93bbfd; }

.project-tag-orange { background: rgba(249,115,22,0.12); color: #f97316; }
[data-mode="dark"] .project-tag-orange { background: rgba(249,115,22,0.2); color: #fdba74; }

.project-tag-teal { background: rgba(20,184,166,0.12); color: #14b8a6; }
[data-mode="dark"] .project-tag-teal { background: rgba(20,184,166,0.2); color: #5eead4; }

.project-tag-pink { background: rgba(236,72,153,0.12); color: #ec4899; }
[data-mode="dark"] .project-tag-pink { background: rgba(236,72,153,0.2); color: #f9a8d4; }

.projects-section-title i {
  margin-right: 0.5rem;
  color: var(--link-color, #0056b2);
}
</style>

<div class="projects-page" markdown="0">

<p>A selection of AI architecture work and technical explorations I've built — from enterprise RAG systems to developer tool comparisons.</p>

<hr>

<h2 class="projects-section-title"><i class="fas fa-rocket"></i> Featured Projects</h2>

<div class="project-card">
  <img src="/assets/img/posts/agentic-rag.png" alt="Agentic RAG Architecture">
  <div class="project-body">
    <h3><i class="fas fa-layer-group"></i> Agentic Retrieval Augmented Generation</h3>
    <p>A 6-layer architecture deep dive into how autonomous agents orchestrate retrieval, reasoning, and tool use to deliver grounded, accurate answers. From data sources and indexing through hybrid retrieval, tool use, agent reasoning, and response synthesis with fact verification.</p>
    <div class="project-tags">
      <span class="project-tag project-tag-purple">RAG</span>
      <span class="project-tag project-tag-purple">Agentic AI</span>
      <span class="project-tag project-tag-purple">Chain-of-Thought</span>
      <span class="project-tag project-tag-purple">Vector Search</span>
      <span class="project-tag project-tag-purple">MCP</span>
    </div>
  </div>
</div>

<div class="project-card">
  <img src="/assets/img/posts/mcp-journey.png" alt="My MCP Journey">
  <div class="project-body">
    <h3><i class="fas fa-route"></i> My MCP Journey</h3>
    <p>From solving one problem for our RAG agents to building an enterprise-grade MCP Gateway — a 5-phase journey with no roadmap, just solving the next bottleneck. Covers local MCP servers, remote transport via SSE, OAuth with Microsoft Entra ID, multi-server gateway, and Claude Skills integration.</p>
    <div class="project-tags">
      <span class="project-tag project-tag-blue">MCP Protocol</span>
      <span class="project-tag project-tag-blue">OAuth 2.0</span>
      <span class="project-tag project-tag-blue">MCP Gateway</span>
      <span class="project-tag project-tag-blue">Claude Skills</span>
    </div>
  </div>
</div>

<div class="project-card">
  <img src="/assets/img/posts/learning-claude-skills.png" alt="Learning Claude Skills">
  <div class="project-body">
    <h3><i class="fas fa-code-branch"></i> Learning Claude Skills</h3>
    <p>A step-by-step journey into extending Claude Code with custom capabilities — from discovering slash commands to building production-ready Skills. Covers SKILL.md authoring, prompt engineering, MCP server integration, hooks, and multi-tool workflows.</p>
    <div class="project-tags">
      <span class="project-tag project-tag-orange">Claude Code</span>
      <span class="project-tag project-tag-orange">Skills</span>
      <span class="project-tag project-tag-orange">MCP Integration</span>
      <span class="project-tag project-tag-orange">Automation</span>
    </div>
  </div>
</div>

<div class="project-card">
  <img src="/assets/img/posts/claude-code-vs-kiro.png" alt="Claude Code vs Kiro CLI">
  <div class="project-body">
    <h3><i class="fas fa-balance-scale"></i> Claude Code vs Kiro CLI</h3>
    <p>A comprehensive comparison of two AI-powered coding assistants with different philosophies. Claude Code offers agentic freedom with MCP servers and Skills. Kiro provides spec-driven, structured development with guardrails. Includes side-by-side workflow analysis.</p>
    <div class="project-tags">
      <span class="project-tag project-tag-pink">Claude Code</span>
      <span class="project-tag project-tag-pink">Kiro</span>
      <span class="project-tag project-tag-pink">AI Coding Tools</span>
      <span class="project-tag project-tag-pink">Developer Workflow</span>
    </div>
  </div>
</div>

<hr>

<h2 class="projects-section-title"><i class="fas fa-flask"></i> Research &amp; Concepts</h2>

<div class="project-card">
  <div class="project-body">
    <h3><i class="fas fa-project-diagram"></i> Context Graph for AI Agents</h3>
    <p>Exploring how context graphs give AI agents structured memory, relationships, and reasoning. Covers knowledge representation, graph construction, context retrieval, agent reasoning, persistence, and evaluation — a mind map of the key concepts behind intelligent context management.</p>
    <div class="project-tags">
      <span class="project-tag project-tag-teal">Knowledge Graphs</span>
      <span class="project-tag project-tag-teal">Agent Memory</span>
      <span class="project-tag project-tag-teal">Graph Reasoning</span>
      <span class="project-tag project-tag-teal">Observability</span>
    </div>
  </div>
</div>

<div class="project-card">
  <div class="project-body">
    <h3><i class="fas fa-database"></i> Virtual Assistant with Knowledge Graph</h3>
    <p>A next-generation virtual assistant powered by a knowledge graph to deliver highly accurate and context-rich product information. Uses natural language processing and structured data relationships to provide precise answers about product features, specifications, and availability.</p>
    <div class="project-tags">
      <span class="project-tag">Knowledge Graph</span>
      <span class="project-tag">NLP</span>
      <span class="project-tag">SPARQL</span>
      <span class="project-tag">NER</span>
    </div>
  </div>
</div>

</div>
