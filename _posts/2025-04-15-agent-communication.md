---
title: "A Comparative Analysis of Agent Communication Protocols: MCP, Agent2Agent, ACP"
date: 2025-04-15 00:00:00 +0100
comments: true
categories: [AI]
tags: [mcp, acp]
---

Introduction

The increasing sophistication and prevalence of intelligent agents across various domains necessitate standardized communication protocols to enable seamless interaction, collaboration, and integration within complex systems[^1]. These agents, often constructed using diverse frameworks and by different teams or vendors, require a common language to effectively collaborate and solve increasingly intricate problems[^2]. The absence of universally adopted standards for agent communication presents significant challenges, including heightened complexity in system design, difficulties in integrating agents from disparate platforms, and the potential for vendor lock-in, thereby impeding the development of truly open and interoperable AI ecosystems [^3]. The development and adoption of standardized protocols aim to address these issues by fostering interoperability, reducing the need for bespoke integrations, streamlining the development process for AI applications, and ultimately enabling the creation of more powerful and versatile agentic systems [^1]. The proliferation of AI agents across diverse platforms and frameworks underscores the critical need for robust and universally accepted communication protocols to unlock their full potential for collaboration and complex problem-solving. The analogy of human communication barriers due to different languages effectively illustrates the problem in the AI domain[^4]. Standardized protocols act as interpreters, allowing agents to understand and work with each other regardless of their underlying implementation. This is essential for moving beyond isolated agents to interconnected, problem-solving AI systems.

Here I am focusing on four prominent agent communication protocols: _Model Context Protocol (MCP_), _Agent2Agent Protocol_, _Agent Communication Protocol (ACP)_. MCP primarily focuses on providing context to AI models [^5], while Agent2Agent aims to standardize communication between agents [^5], and ACP seeks to enable broader agent collaboration [^6]. By analyzing their definitions, key features, architectures, communication mechanisms, primary goals, underlying paradigms, strengths, and weaknesses, this post aims to provide a comprehensive understanding of the current landscape of agent communication protocols.

# Model Context Protocol (MCP)

## Definition and Core Concepts

- **Model Context Protocol (MCP):** Open standard driven by Anthropic.
- **Purpose:** Standardizes interaction between AI applications (especially LLMs) and external tools, data sources, and systems.
- **Functionality:** Acts as a universal interface, similar to a "USB-C port" for AI.
- **Objective:** Facilitates seamless, secure, and scalable data exchange between LLMs/AI agents and external resources.
- **Integration Simplification:** Addresses the challenge of connecting diverse data sources and tools without custom connections.
- **Problem Resolution:** Transforms "M×N problem" (M AI applications connecting to N systems) into "M+N problem."
- **Enhancement:** Enriches AI models with external context to improve decision-making and response quality.
- **Standardization:** Provides a method for applications to supply context to LLMs for more accurate and relevant outputs.


## Strengths

MCP offers several significant strengths.
- MCP standardizes AI integration, simplifying development and promoting interoperability.
- Growing adoption in the AI community, with increasing integration by companies and platforms.
- Tailored for modern AI agents, refining development patterns with a clear specification.
- Supports dynamic tool discovery and two-way communication between AI models and external systems.

## Weaknesses

- MCP is a relatively new protocol with a developing ecosystem of servers and clients.
- Limited integrations are currently available within the MCP ecosystem.
- MCP focuses on context and tool usage for individual AI models, not complex multi-agent collaboration.
- Remote data management via MCP requires careful implementation to avoid tight coupling and ensure agent reuse.
- Security depends on implementers to create strong consent and authorization mechanisms; MCP does not enforce these at the protocol level.
- Some features, such as resources, may not be supported across all MCP host applications.

# Agent2Agent Protocol (A2A)

## Definition and Core Concepts

- **Model Context Protocol (MCP):** Complements A2A by providing tools and context to AI agents.
- **Purpose:** Breaks down silos separating AI agents, enabling direct communication and secure information exchange.
- **Functionality:** Acts as a "lingua franca" for AI agents to advertise capabilities, negotiate experiences, exchange information, and coordinate tasks.
- **Objective:** Facilitates seamless communication and interoperability between independent AI agents across different platforms and applications.
- **Integration Simplification:** Eliminates the need for custom integrations by allowing direct agent communication.
- **Enhancement:** Supports over 50 technology partners to improve agent collaboration and interoperability.
- **Standardization:** Defines a standardized protocol for agentic AI communication and coordination.


## Strengths

- A2A enables interoperability between AI agents from different frameworks, platforms, or vendors.
- Promotes an open and flexible AI ecosystem.
- Modality agnostic: supports text, audio, and video streaming.
- Suitable for a wide range of applications.
- Provides robust support for long-running tasks with real-time feedback, status updates, and progress notifications.
- Built on established protocols like HTTP, SSE, and JSON-RPC.
- Accelerates adoption and reduces integration overhead.

## Weaknesses

- A2A is a newly launched protocol in early development stages.
- Specifications and features may change based on community feedback and adoption.
- Focuses on agent-to-agent communication.
- Complements MCP for tool and data integration but doesn't provide context to individual models like MCP.
- Adoption depends on AI community's willingness, including framework developers and vendors, to implement the protocol.

# Agent Communication Protocol (ACP)

## Definition and Core Concepts

- **Model Context Protocol (MCP):** ACP extends Anthropic's MCP by incorporating agents as primary participants in communication.
- **Purpose:** Standardize AI agent communication to enable automation, collaboration, UI integration, and enhanced developer tooling.
- **Functionality:** Facilitates agent-to-agent collaboration and communication within agent-based systems.
- **Objective:** Evolve ACP into a standalone standard optimized for robust agent interactions.
- **Integration Simplification:** Streamlines finding, integrating, and orchestrating AI agents across different frameworks and programming languages.
- **Enhancement:** Enhances developer tooling for building and managing agent-based systems.
- **Standardization:** Aims to become the "HTTP of the Agentic Internet era," defining fundamental protocols for agent connectivity and collaboration.


## Strengths

- ACP builds on MCP, aiding adoption and integration with MCP-utilizing systems.
- Leverages MCP's context-sharing mechanisms.
- Focuses on seamless communication and collaboration between autonomous AI agents.
- Addresses critical needs in advanced multi-agent system development.
- Developed by IBM Research under the open-source BeeAI project.
- Governed by the Linux Foundation, promoting transparency and community involvement.
- Aims to simplify AI agent integration and enhance developer tooling.
- Facilitates building and managing complex agent-based applications.

## Weaknesses

- ACP is in the alpha stage, meaning its protocol and implementation are experimental and may change significantly.
- The ecosystem of ACP-compatible agents, tools, and platforms is still developing, limiting immediate usability in production.
- Planned divergence from MCP aims to optimize agent communication but may cause future compatibility issues with MCP-based systems.
- Success and adoption of ACP depend on the AI community's acceptance and contribution to its development and ecosystem.


Comparative Analysis of Agent Communication Protocols


 <!-- Table 1: Comparison of MCP, Agent2Agent, ACP, and Enactability in MAS

| Feature                     | Model Context Protocol (MCP)                                       | Agent2Agent Protocol (A2A)                                         | Agent Communication Protocol (ACP)                                  |
|-----------------------------|---------------------------------------------------------------------|---------------------------------------------------------------------|-----------------------------------------------------------------------|
| **Definition**              | Standard for AI apps to connect with external systems              | Open protocol for communication between autonomous AI agents       | Standardizing agent communication, built on MCP                      |
| **Primary Focus**           | Providing context to individual AI models                          | Communication and collaboration between autonomous agents          | Agent collaboration and interoperability in multi-agent systems     |
| **Key Features**            | Resources, Tools, Prompts, Sampling                                | Agent Card, Tasks, Messages, Artifacts, Streaming, Push Notifications | Extends MCP, Agent Collaboration, UI Integration, Developer Tooling |
| **Underlying Paradigm**     | Client-Server                                                     | Agent-to-Agent, Request-Response, Publish-Subscribe                | Client-Server, Message Passing                                       |
| **Primary Goals/Use Cases** | Connecting AI with external systems, enhancing LLM responses       | Enabling collaboration between diverse AI agents for complex tasks | Standardizing agent communication for automation and collaboration  |
| **Strengths**               | Standardization, Security Considerations, Growing Adoption         | Interoperability, Modality Agnostic, Supports Long-Running Tasks   | Built on MCP, Focus on Agent Collaboration, Open Development        |
| **Weaknesses**              | Relatively New, Primarily Focused on Context Provision             | Relatively New, Focus on Agent Collaboration                       | Still in Alpha Stage, Evolving Specification                         |
| **Development Status**      | Evolving Standard                                                  | Recently Launched, Open Source                                     | Alpha Stage, Open Source (BeeAI Project)                            |
 -->

Detailed Discussion of Similarities and Differences Across Protocols

MCP, Agent2Agent, and ACP are all emerging protocols aimed at addressing different facets of agent communication and interaction. MCP's primary focus is on enabling AI models to access external context and tools [^12], whereas Agent2Agent is specifically designed for direct communication and collaboration between autonomous agents [^12]. ACP, while initially drawing from MCP, also targets the crucial aspect of agent collaboration and aims to provide a more comprehensive framework for multi-agent systems [^6]. Google has strategically positioned A2A as complementary to MCP, with MCP facilitating the connection of agents to tools and data sources, and A2A enabling communication between these agents [^9]. This suggests that for building intricate multi-agent systems, a combination of these protocols might be the most effective approach. ACP, although starting as an extension of MCP, shares the collaborative goals of A2A and seeks to provide a broader platform for managing agent interactions. However, it is currently in an earlier stage of development compared to MCP and A2A [^7].

Factors to Consider When Choosing a Protocol

When selecting an agent communication protocol, several factors should be taken into account. The primary goal is crucial: is the aim to provide context to individual AI models, or to enable communication and collaboration between multiple autonomous agents? The need for interoperability across different frameworks and vendors should also be considered. The complexity of the system being developed and the maturity and stability of the protocol are important factors, as is the specific use case requirements, such as the need for modality agnosticism or support for long-running tasks. For multi-agent systems, it is important to determine if the focus is on loosely coupled agents communicating via message passing or a more tightly integrated system where context sharing is paramount.

Conclusion

Summary of Key Findings

In summary, MCP is a standard for connecting AI applications with external systems to provide context to LLMs. Agent2Agent is an open protocol for enabling communication and collaboration between autonomous AI agents. ACP is an initiative to standardize agent communication, building upon MCP and focusing on agent collaboration. "ENACT protocol" is a term used in various contexts, including the theoretical concept of protocol enactability in MAS, a clinical research network, and a programming model for protocol-compliant agents.
The Future Landscape of Agent Communication Protocols
The field of agent communication protocols is rapidly evolving, with ongoing development and increasing community interest in MCP, Agent2Agent, and ACP.7 The future might see further convergence of features or the emergence of new protocols addressing specific needs. The success of these protocols will heavily depend on their adoption by the AI community and their ability to address real-world use cases effectively.1

Recommendations for Further Research and Development

Further research could explore the integration and interoperability of MCP, Agent2Agent, and ACP in complex multi-agent systems. Investigating their performance characteristics in different scenarios and at scale would also be valuable. Continued community engagement and standardization efforts are crucial for the widespread adoption and evolution of these protocols. Exploring advanced features like negotiation protocols and trust management within these frameworks could also be a fruitful area of research.


References:

[^1]: What is MCP (Model Context Protocol)? - Zapier, accessed April 15, 2025, https://zapier.com/blog/mcp/

[^2]: A beginners Guide on Model Context Protocol (MCP) - OpenCV, accessed April 15, 2025, https://opencv.org/blog/model-context-protocol/

[^3]: What is The Agent2Agent Protocol (A2A) and Why You Must Learn It Now - Hugging Face, accessed April 15, 2025, https://huggingface.co/blog/lynn-mikami/agent2agent

[^4]: Understanding the Model Context Protocol | Frontegg, accessed April 15, 2025, https://frontegg.com/blog/model-context-protocol

[^5]: Model Context Protocol (MCP) an overview - Philschmid, accessed April 15, 2025, https://www.philschmid.de/mcp-introduction

[^6]: MCP, RAG, and ACP: A Comparative Analysis in Artificial Intelligence - Security Boulevard, accessed April 15, 2025, https://securityboulevard.com/2025/04/
mcp-rag-and-acp-a-comparative-analysis-in-artificial-intelligence/

[^7]: Evolving Standards for agentic Systems: MCP and ACP | Niklas Heidloff, accessed April 15, 2025, https://heidloff.net/article/mcp-acp/

[^8]: Model Context Protocol (MCP): 8 MCP Servers Every Developer Should Try!, accessed April 15, 2025, https://dev.to/pavanbelagatti/model-context-protocol-mcp-8-mcp-servers-every-developer-should-try-5hm2

[^9] Announcing the Agent2Agent Protocol (A2A) - Google for Developers Blog, accessed April 15, 2025, https://developers.googleblog.com/en/a2a-a-new-era-of-agent-interoperability/

[^10]: Google just Launched Agent2Agent, an Open Protocol for AI agents to Work Directly with Each Other - Maginative, accessed April 15, 2025, https://www.maginative.com/article/google-just-launched-agent2agent-an-open-protocol-for-ai-agents-to-work-directly-with-each-other/

[^11]: Google Launches Agent2Agent Protocol to Unify AI Agents Communication - Stan Ventures, accessed April 15, 2025, https://www.stanventures.com/news/google-launches-agent2agent-protocol-to-unify-ai-agents-communication-2421/

[^12]: A2A and MCP: Start of the AI Agent Protocol Wars? - Koyeb, accessed April 15, 2025, https://www.koyeb.com/blog/a2a-and-mcp-start-of-the-ai-agent-protocol-wars

[^13]: MCP and ACP: Decoding the language of models and agents - Outshift - Cisco, accessed April 15, 2025, https://outshift.cisco.com/blog/mcp-acp-decoding-language-of-models-and-agents

[^14]: How Google's Agent2Agent can boost AI productivity through inter-agent communication, accessed April 15, 2025, https://bdtechtalks.com/2025/04/14/google-agent2agent-a2a/

[^15]: guptadeepak.com, accessed April 15, 2025, https://guptadeepak.com/mcp-rag-and-acp-a-comparative-analysis-in-artificial-intelligence/#:~:text=Agent%20Connect%20Protocol%20(ACP),-The%20Agent%20Connect&text=ACP%20seeks%20to%20standardize%20the,and%20managing%20agent%2Dbased%20systems.
intranet.csc.liv.ac.uk, accessed April 15, 2025, https://intranet.csc.liv.ac.uk/~lad/emas2019/accepted/EMAS2019_paper_29.pdf

[^16]: The ENACT Network | Clinical and Translational Science Institute, accessed April 15, 2025, https://ctsi.ucla.edu/the-enact-network
www.philschmid.de, accessed April 15, 2025, https://www.philschmid.de/mcp-introduction#:~:text=The%20Model%20Context%20Protocol%20(MCP,like%20USB%20for%20AI%20integrations.

[^17]: Introducing the Model Context Protocol - Anthropic, accessed April 15, 2025, https://www.anthropic.com/news/model-context-protocol

[^18]: Model Context Protocol (MCP): Integrating Azure OpenAI for Enhanced Tool Integration and Prompting - Microsoft Tech Community, accessed April 15, 2025, https://techcommunity.microsoft.com/blog/azure-ai-services-blog/model-context-protocol-mcp-integrating-azure-openai-for-enhanced-tool-integratio/4393788

[^19]: What is Model Context Protocol (MCP)? How it simplifies AI integrations compared to APIs | AI Agents That Work - Norah Sakal, accessed April 15, 2025, https://norahsakal.com/blog/mcp-vs-api-model-context-protocol-explained/

[^20]: Model Context Protocol: Introduction, accessed April 15, 2025, https://modelcontextprotocol.io/introduction

[^21]: Model Context Protocol (MCP) - Anthropic API, accessed April 15, 2025, https://docs.anthropic.com/en/docs/agents-and-tools/mcp

[^22]: What is Model Context Protocol (MCP): Explained - Composio, accessed April 15, 2025, https://composio.dev/blog/what-is-model-context-protocol-mcp-explained/

[^23]: Model Context Protocol - Cursor, accessed April 15, 2025, https://docs.cursor.com/context/model-context-protocol

[^24]: Introducing Model Context Protocol (MCP) in Copilot Studio: Simplified Integration with AI Apps and Agents - Microsoft, accessed April 15, 2025, https://www.microsoft.com/en-us/microsoft-copilot/blog/copilot-studio/introducing-model-context-protocol-mcp-in-copilot-studio-simplified-integration-with-ai-apps-and-agents/

[^25]: Model Context Protocol (MCP) and Its Impact on AI-Driven Startups - Aalpha, accessed April 15, 2025, https://www.aalpha.net/blog/model-context-protocol-mcp-and-its-impact-on-ai-driven-startups/

[^26]: Build a Model Context Protocol (MCP) server in C# - .NET Blog, accessed April 15, 2025, https://devblogs.microsoft.com/dotnet/build-a-model-context-protocol-mcp-server-in-csharp/

[^27]: A2A vs MCP: Two complementary protocols for the emerging agent ecosystem - Logto blog, accessed April 15, 2025, https://blog.logto.io/a2a-mcp

[^28]: MCP vs A2A: Which Protocol Is Better For AI Agents? [2025] | Blott Studio, accessed April 15, 2025, https://www.blott.studio/blog/post/mcp-vs-a2a-which-protocol-is-better-for-ai-agents

[^29]: Specification - Model Context Protocol, accessed April 15, 2025, https://modelcontextprotocol.io/specification/2025-03-26

[^30]: Model Context Protocol (MCP) :: Spring AI Reference, accessed April 15, 2025, https://docs.spring.io/spring-ai/reference/api/mcp/mcp-overview.html
Architecture - BeeAI, accessed April 15, 2025, https://docs.beeai.dev/acp/pre-alpha/architecture
[^31]: MCP and A2A Protocols Explained The Future of Agentic AI is Here - Teneo.Ai, accessed April 15, 2025, https://www.teneo.ai/blog/mcp-and-a2a-protocols-explained-the-future-of-agentic-ai-is-here

[^32]: [2504.08623] Enterprise-Grade Security for the Model Context Protocol (MCP): Frameworks and Mitigation Strategies - arXiv, accessed April 15, 2025, https://arxiv.org/abs/2504.08623

[^33]: [2503.23278] Model Context Protocol (MCP): Landscape, Security Threats, and Future Research Directions - arXiv, accessed April 15, 2025, https://arxiv.org/abs/2503.23278

[^34]: Enact Cybersecurity White Paper - InfinityQS, accessed April 15, 2025, https://www.infinityqs.com/InfinityQS/media/assets/files/Enact%20References/Enact_SecurityWhitePaper.pdf

[^35]: Comparing with Google's Agent2Agent (A2A) Protocol · modelcontextprotocol · Discussion #286 - GitHub, accessed April 15, 2025, https://github.com/orgs/modelcontextprotocol/discussions/286

[^36]: Announcing the Agent2Agent Protocol (A2A) - Google for Developers Blog, accessed April 15, 2025, https://developers.googleblog.com/id/a2a-a-new-era-of-agent-interoperability/

[^37]: Build and manage multi-system agents with Vertex AI | Google Cloud Blog, accessed April 15, 2025, https://cloud.google.com/blog/products/ai-machine-learning/build-and-manage-multi-system-agents-with-vertex-ai
google/A2A: An open protocol enabling communication ... - GitHub, accessed April 15, 2025, https://github.com/google/A2A

[^38]: How the Agent2Agent Protocol (A2A) Actually Works: A Technical Breakdown | Blott Studio, accessed April 15, 2025, https://www.blott.studio/blog/post/how-the-agent2agent-protocol-a2a-actually-works-a-technical-breakdown

[^39]: Using Google's Agent Development Kit and Agent2Agent - Wandb, accessed April 15, 2025, https://wandb.ai/gladiator/Google-Agent2Agent/reports/Tutorial-Using-Google-s-Agent2Agent-A2A-protocol--VmlldzoxMjIyODEwOA

[^40]: Home - Google, accessed April 15, 2025, https://google.github.io/A2A/
Agent2Agent Architecture: A New Era of Agent Collaboration | TechAhead, accessed April 15, 2025, https://www.techaheadcorp.com/blog/agent2agent-architecture-a-new-era-of-agent-collaboration/

[^41]: Google's Agent2Agent (A2A) protocol: A new standard for AI agent collaboration - Wandb, accessed April 15, 2025, https://wandb.ai/onlineinference/mcp/reports/Google-s-Agent2Agent-A2A-protocol-A-new-standard-for-AI-agent-collaboration--VmlldzoxMjIxMTk1OQ

[^42]: In-depth Research Report on Google Agent2Agent (A2A) Protocol - DEV Community, accessed April 15, 2025, https://dev.to/justin3go/in-depth-research-report-on-google-agent2agent-a2a-protocol-2m2a

[^43]: Agent2Agent Protocol (A2A) #google - YouTube, accessed April 15, 2025, https://www.youtube.com/watch?v=cTmKL_rw0ss

[^44]: Making sense of Google's A2A Protocol (and how A2A relates to MCP) - YouTube, accessed April 15, 2025, https://www.youtube.com/watch?v=WGeHYPLbXMk

[^45]: Google's NEW Agent2Agent Protocol - YouTube, accessed April 15, 2025, https://www.youtube.com/watch?v=rAeqTaYj_aI

[^46]: Agent Communication Protocols: An Overview - SmythOS, accessed April 15, 2025, https://smythos.com/ai-agents/ai-agent-development/agent-communication-protocols/
IBM's ACP is an 'Extension' of Anthropic's MCP | AIM Media House, accessed April 15, 2025, https://analyticsindiamag.com/ai-news-updates/ibms-acp-is-an-extension-of-anthropics-mcp/

[^47]: Agent Protocol: Interoperability for LLM agents - LangChain Blog, accessed April 15, 2025, https://blog.langchain.dev/agent-protocol-interoperability-for-llm-agents/

[^48]: ACP (Agent Communication Protocol) · i-am-bee · Discussion #284 ..., accessed April 15, 2025, https://github.com/orgs/i-am-bee/discussions/284

[^49]: ACP (Agent Communication Protocol) · i-am-bee beeai · Discussion #284 - GitHub, accessed April 15, 2025, https://github.com/i-am-bee/beeai/discussions/284

[^50]: Introducing multiagent BeeAI - IBM Research, accessed April 15, 2025, https://research.ibm.com/blog/multiagent-bee-ai

[^51]: Agent Communication Protocol (ACP): Standardizing Agent, accessed April 15, 2025, https://www.youtube.com/watch?v=8IJZehffOSY

[^52]: Agent Communication Protocols Overview - Matoffo, accessed April 15, 2025, https://matoffo.com/agent-communication-protocols-overview/

[^53]: Architecture - BeeAI, accessed April 15, 2025, https://docs.beeai.dev/concepts/architecture

[^54]: Show HN: Evolving Agents Framework - Hacker News, accessed April 15, 2025, https://news.ycombinator.com/item?id=43310963
acp-sdk 0.0.4 on PyPI - Libraries.io - security & maintenance data for, accessed April 15, 2025, https://libraries.io/pypi/acp-sdk

[^55]: Mar 21, 2025: AI updates from the past week — Anthropic web search, Gemini Canvas, new OpenAI audio models, and more - SD Times, accessed April 15, 2025, https://sdtimes.com/ai/mar-21-2025-ai-updates-from-the-past-week-anthropic-web-search-gemini-canvas-new-openai-audio-models-and-more/

[^56]: What is AI Agent Communication? - IBM, accessed April 15, 2025, https://www.ibm.com/think/topics/ai-agent-communication

[^57]: Evolving Standards for agentic Systems: MCP and ACP - daily.dev, accessed April 15, 2025, https://app.daily.dev/posts/evolving-standards-for-agentic-systems-mcp-and-acp-7cp8zu2b0

[^58]: Integration of BeeAI Framework - Feature Requests - n8n Community, accessed April 15, 2025, https://community.n8n.io/t/integration-of-beeai-framework/96061

[^59]: From Collaboration to Execution: Understanding A2A and MCP in AI - YouTube, accessed April 15, 2025, https://www.youtube.com/watch?v=hZNEztvTrzc

[^60]: AI Agent Communication: Breakthrough or Security Nightmare? - Deepak Gupta, accessed April 15, 2025, https://guptadeepak.com/when-ai-agents-start-whispering-the-double-edged-sword-of-autonomous-agent-communication/

[^61]: An Edge Based Multi-Agent Auto Communication Method for Traffic Light Control - PMC, accessed April 15, 2025, https://pmc.ncbi.nlm.nih.gov/articles/PMC7436084/

[^62]: Interoperation in Protocol Enactment - Lancaster University, accessed April 15, 2025, https://www.lancaster.ac.uk/~chopraak/pdfs/interoperability-2007.pdf

[^63]: Enacting and Deacting Roles in Agent Programming - DSpace, accessed April 15, 2025, https://dspace.library.uu.nl/bitstream/handle/1874/19704/dignum_04_enacting.pdf?sequence=1

[^64]: Tango: Declarative Semantics for Multiagent Communication Protocols, accessed April 15, 2025, https://par.nsf.gov/servlets/purl/10293714
