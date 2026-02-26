# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Jekyll personal blog/portfolio site using the **Chirpy** theme (`jekyll-theme-chirpy` gem). Owner is an academic/data scientist; content covers GenAI, ML, LLMs, and AI Leadership. Hosted on GitHub Pages.

## Build & Development Commands

```bash
# Local dev server (serves at http://localhost:4000, includes drafts)
bash run.sh

# Or directly:
bundle install
bundle exec jekyll serve --draft --incremental --trace

# Build only (no server)
bundle exec jekyll build --future --trace
```

## CI/CD & Deployment

- CI runs on pushes/PRs to `develop` branch (`.github/workflows/jekyll.yml`)
- CI uses `ruby/setup-ruby` with bundler-cache, builds with `bundle exec jekyll build`
- Deploys to `gh-pages` branch via `peaceiris/actions-gh-pages`
- Working branch: `develop`. Deploy target: `gh-pages`

## Architecture

- **Theme**: `jekyll-theme-chirpy` gem (~7.4) — provides layouts, includes, SCSS, JS
- **Content**: `_posts/` (published), `_drafts/` (in-progress). Markdown with YAML frontmatter
- **Tab Pages**: `_tabs/` — About, CV, Projects, Contact, Archives, Categories, Tags (Chirpy navigation)
- **Images**: `assets/img/` — avatar at `assets/img/avatar.jpg`, post images in `assets/img/posts/`
- **Comments**: Giscus (GitHub Discussions-based)
- **Analytics**: Google Analytics
- **Dark/Light mode**: Auto toggle (Chirpy built-in)

## Post Conventions

Frontmatter pattern for posts/drafts:
```yaml
---
title: "Article Title"
date: 2025-03-28 00:00:00 +0100
comments: true
categories: [AI]
tags: [mcp, rag]
---
```

Default frontmatter applied via `_config.yml`: `layout: post`, `comments: true`, `toc: true`.

## Key Plugins

- **jekyll-paginate**: Pagination on home page
- **jekyll-seo-tag**: SEO metadata
- **jekyll-archives**: Category and tag archive pages
- **jekyll-sitemap**: Auto-generated sitemap
- **jekyll-include-cache**: Include caching

## External Services

- Google Analytics: configured in `_config.yml`
- Giscus comments: requires repo setup (see `_config.yml` TODO comments)
- Formspree: contact form
