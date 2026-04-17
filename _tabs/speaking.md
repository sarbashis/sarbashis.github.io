---
title: Speaking & Events
icon: fas fa-microphone-alt
order: 4
---

<style>
.speaking-page { max-width: 800px; }

.event-card {
  border: 1px solid var(--main-border-color, #f3f3f3);
  border-radius: 0.75rem;
  overflow: hidden;
  background-color: var(--card-bg, #fff);
  margin-bottom: 1.5rem;
  transition: box-shadow 0.2s ease;
}
.event-card:hover {
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.08);
}
[data-mode="dark"] .event-card:hover {
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.3);
}

.event-video {
  position: relative;
  width: 100%;
  padding-bottom: 56.25%;
  height: 0;
  overflow: hidden;
  border-bottom: 1px solid var(--main-border-color, #f3f3f3);
}
.event-video iframe {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  border: none;
}

.event-body {
  padding: 1.25rem;
}
.event-body h3 {
  font-size: 1.1rem;
  margin: 0 0 0.2rem 0;
  color: var(--heading-color, #2a2a2a);
}
.event-body h3 i {
  margin-right: 0.4rem;
  color: var(--link-color, #0056b2);
}
.event-meta {
  font-size: 0.82rem;
  color: var(--text-muted-color, #757575);
  margin-bottom: 0.6rem;
  display: flex;
  flex-wrap: wrap;
  gap: 0.8rem;
}
.event-meta span i {
  margin-right: 0.3rem;
}
.event-body p {
  font-size: 0.9rem;
  color: var(--text-muted-color, #757575);
  line-height: 1.6;
  margin: 0 0 0.75rem 0;
}

.event-people {
  font-size: 0.85rem;
  color: var(--text-muted-color, #757575);
  margin-bottom: 0.75rem;
}
.event-people strong {
  color: var(--heading-color, #2a2a2a);
}

.event-tags {
  display: flex;
  flex-wrap: wrap;
  gap: 0.35rem;
}
.event-tag {
  display: inline-block;
  padding: 0.2rem 0.6rem;
  border-radius: 1rem;
  font-size: 0.78rem;
  font-weight: 500;
}

.event-tag-orange { background: rgba(249,115,22,0.12); color: #f97316; }
[data-mode="dark"] .event-tag-orange { background: rgba(249,115,22,0.2); color: #fdba74; }

.event-tag-blue { background: rgba(59,130,246,0.12); color: #3b82f6; }
[data-mode="dark"] .event-tag-blue { background: rgba(59,130,246,0.2); color: #93bbfd; }

.event-tag-purple { background: rgba(168,85,247,0.12); color: #a855f7; }
[data-mode="dark"] .event-tag-purple { background: rgba(168,85,247,0.2); color: #d8b4fe; }

.event-tag-teal { background: rgba(20,184,166,0.12); color: #14b8a6; }
[data-mode="dark"] .event-tag-teal { background: rgba(20,184,166,0.2); color: #5eead4; }

.speaking-section-title {
  margin-top: 2.5rem;
  margin-bottom: 1.5rem;
  padding-bottom: 0.5rem;
  border-bottom: 2px solid var(--main-border-color, #f3f3f3);
}
.speaking-section-title i {
  margin-right: 0.5rem;
  color: var(--link-color, #0056b2);
}

.section-divider {
  margin: 2.5rem 0 0.5rem;
  border: none;
  border-top: 2px solid var(--main-border-color, #f3f3f3);
}

.coming-soon {
  text-align: center;
  padding: 2rem 1rem;
  color: var(--text-muted-color, #757575);
  font-size: 0.95rem;
  font-style: italic;
}

.event-gallery {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 0.5rem;
  border-bottom: 1px solid var(--main-border-color, #f3f3f3);
}
.event-gallery img {
  width: 100%;
  height: 220px;
  object-fit: cover;
  object-position: top;
}
</style>

<div class="speaking-page" markdown="0">

<p>Conference talks, hackathon participations, and community engagements across AI, cloud, and enterprise technology.</p>

<h2 class="speaking-section-title"><i class="fas fa-chalkboard-teacher"></i> Conference Talks</h2>

<div class="event-card">
  <div class="event-video">
    <iframe src="https://www.youtube.com/embed/oDjESsByBmM" title="AWS re:Invent 2025 - Ericsson AgentCore Talk" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
  </div>
  <div class="event-body">
    <h3><i class="fas fa-cloud"></i> Leveraging AgentCore to Build Specialized AI Agents at Ericsson</h3>
    <div class="event-meta">
      <span><i class="fas fa-calendar-alt"></i> December 2025</span>
      <span><i class="fas fa-map-marker-alt"></i> Las Vegas, NV</span>
      <span><i class="fas fa-ticket-alt"></i> AWS re:Invent 2025</span>
    </div>
    <p>Showcased how Ericsson is leveraging AWS AgentCore to build specialized AI agents and domain-focused models that eliminate knowledge silos across the organization.</p>
    <div class="event-people">
      <strong>Co-speakers:</strong> Mark Roy, Vivek Singh
    </div>
    <div class="event-tags">
      <span class="event-tag event-tag-orange">AWS</span>
      <span class="event-tag event-tag-orange">re:Invent 2025</span>
      <span class="event-tag event-tag-blue">AgentCore</span>
      <span class="event-tag event-tag-blue">AI Agents</span>
      <span class="event-tag event-tag-purple">Ericsson</span>
      <span class="event-tag event-tag-teal">Innovation</span>
    </div>
  </div>
</div>

<div class="event-card">
  <div class="event-gallery">
    <img src="/assets/img/mwc-1.png" alt="MWC 2025 - System Comprehension Lab Demo">
    <img src="/assets/img/mwc-2.png" alt="MWC 2025 - Ericsson Booth">
  </div>
  <div class="event-body">
    <h3><i class="fas fa-broadcast-tower"></i> AI Agents for RAN Developer Productivity</h3>
    <div class="event-meta">
      <span><i class="fas fa-calendar-alt"></i> March 2025</span>
      <span><i class="fas fa-map-marker-alt"></i> Barcelona, Spain</span>
      <span><i class="fas fa-ticket-alt"></i> MWC 2025</span>
    </div>
    <p>Showcased the work from the System Comprehension Lab at Ericsson — exploring the challenges RAN developers face due to comprehension limits and how AI agents can help overcome these obstacles, enhancing productivity.</p>
    <div class="event-people">
      <strong>In collaboration with:</strong> AWS
    </div>
    <div class="event-tags">
      <span class="event-tag event-tag-orange">MWC 2025</span>
      <span class="event-tag event-tag-blue">AI Agents</span>
      <span class="event-tag event-tag-purple">Ericsson</span>
      <span class="event-tag event-tag-purple">System Comprehension</span>
      <span class="event-tag event-tag-teal">RAN</span>
      <span class="event-tag event-tag-teal">Developer Productivity</span>
    </div>
  </div>
</div>

<hr class="section-divider">

<h2 class="speaking-section-title"><i class="fas fa-trophy"></i> Hackathons</h2>

<div class="coming-soon">
  More details coming soon.
</div>

<hr class="section-divider">

<h2 class="speaking-section-title"><i class="fas fa-bullhorn"></i> Upcoming</h2>

<div class="coming-soon">
  Stay tuned for upcoming speaking engagements.
</div>

</div>
