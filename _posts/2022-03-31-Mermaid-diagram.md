---
title: "Generate Diagram as Code using Mermaid"
comments: true
categories:
  - diagram
tags:
  - markdown
---

I this tutorial, I am going to show how diagram can be drawn using code. The program I am going to use is called `Mermaid`

## Marmaid Basic 
Let's learn about some of the basic syntax. For practicing, once can use [Mermaid Live Editor](https://mermaid-js.github.io/mermaid-live-editor)

### A Node (default)

```mermaid
flowchart LR
  id
```
<script src="https://unpkg.com/mermaid@8.0.0/dist/mermaid.min.js"></script>
<div class="mermaid">
graph TD;
    A-->B;
    A-->C;
    B-->D;
    C-->D;
</div>