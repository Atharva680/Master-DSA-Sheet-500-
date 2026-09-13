<div align="center"><!-- Animated header --><picture> <source media="(prefers-color-scheme: dark)" srcset="https://readme-typing-svg.demolab.com?font=Inter&weight=800&size=34&pause=800&color=7C5CFF&center=true&vCenter=true&multiline=true&width=900&height=110&lines=THE+COMPLETE+10%2F10+PREP+TRACKER;One+page.+507+problems.+Zero+juggling."> <img alt="10/10 Prep Tracker" src="https://readme-typing-svg.demolab.com?font=Inter&weight=800&size=34&pause=800&color=7C5CFF&center=true&vCenter=true&multiline=true&width=900&height=110&lines=THE+COMPLETE+10%2F10+PREP+TRACKER;One+page.+507+problems.+Zero+juggling."> </picture>
Priority Matrix · Master Checklist · 507-Problem DSA Tracker
<br/>
Built for Atharva Vijay Shinde · B.Tech CSE · SBJITMR Nagpur · 2026 batch

<p align="center"> <img src="https://img.shields.io/badge/Problems-507-7C5CFF?style=for-the-badge&logo=leetcode&logoColor=white" /> <img src="https://img.shields.io/badge/Patterns-40%2B-22D3EE?style=for-the-badge" /> <img src="https://img.shields.io/badge/Sections-13-FF4FD8?style=for-the-badge" /> <img src="https://img.shields.io/badge/Tracks-4-4ADE80?style=for-the-badge" /> <img src="https://img.shields.io/badge/Revisions-3_pass-FBBF24?style=for-the-badge" /> </p><p align="center"> <a href="#-demo">Demo</a> · <a href="#-features">Features</a> · <a href="#-quick-start">Quick Start</a> · <a href="#-how-to-use">How To Use</a> · <a href="#-the-3-revision-rule">The 3-Revision Rule</a> · <a href="#-track-strategy">Track Strategy</a> · <a href="#-tech-stack">Tech Stack</a> · <a href="#-roadmap">Roadmap</a> </p><br/>
[!IMPORTANT]
This single tracker replaces three separate documents. Priority matrix, master checklist, and the full 507-question DSA tracker — all live, interactive, and auto-saved in your browser.

</div>
✨ Why this exists
Most prep trackers are either dead PDFs or over-engineered apps that slow you down. 10/10 Prep Tracker is different:

🎯 Tells you what to study today based on the track you're targeting (Service MNC / Big Tech / Startup / Consulting).
🧠 Implements the 3-revision rule (Done → Rev-1 at 1 week → Rev-2 at 4 weeks) that moves problems into long-term memory.
💾 Auto-saves every tick to your browser — no accounts, no sync drama.
🔥 Streak counter that only increments when you make actual progress (not just opens).
🎨 A modern glassmorphism UI that actually makes you want to grind.
🚀 Demo
Just open 
index.html
 in any modern browser. That's it. No build step, no npm install, no server required.

text

prep-tracker/
├── index.html            # The entire app shell
├── assets/
│   ├── style.css         # Glassmorphism + gradient theme
│   └── app.js            # All interactivity, zero dependencies
├── data/
│   ├── problems.json     # 507 problems, 13 sections, 40+ patterns
│   ├── matrix.json       # 4-track priority matrix (HIGH/MED/LOW)
│   └── checklist.json    # 8-section master prep checklist
└── README.md             # You are here
<div align="center"> <table> <tr> <td align="center"><b>📊 Dashboard</b><br/><sub>Live stats, today's set, streak, track advisor</sub></td> <td align="center"><b>🎯 Priority Matrix</b><br/><sub>Click any column to focus a track</sub></td> </tr> <tr> <td align="center"><b>✅ Checklist</b><br/><sub>Tick off aptitude → HR → mocks</sub></td> <td align="center"><b>💻 DSA Tracker</b><br/><sub>Search, filter, mark Done/Rev-1/Rev-2</sub></td> </tr> </table> </div>
🔥 Features
Feature	Why it matters
⚡	Zero-setup PWA-ready SPA	Open the file and go. Works offline after first load.
🎨	Modern glassmorphism UI	Animated gradient background, custom cursor, micro-interactions, rise-in animations.
🌗	Dark / Light theme	One-click toggle, persists across sessions.
🔍	Instant fuzzy search	Hit / to jump to the search box. Type a Q number, pattern, or keyword.
🏷️	Filter by difficulty & state	Easy / Medium / Hard × All / To-do / Done / Rev-1 due / Rev-2 due.
🧭	13 section tabs with live progress	See exactly how many you've solved per section.
📅	"Today's suggested set"	Mixes fresh problems with revision-due items so you never forget old patterns.
🧭	Track advisor	Pick a track and get a personalized focus list for the week + a "deprioritize" list.
💪	Daily streak	Only increments on real progress (solving a problem or checking off a checklist item).
📈	21-day activity timeline	Visual history of your grind at the bottom of the dashboard.
💡	Rotating motivation quotes	Contextual tips from the priority matrix, not generic fluff.
⌨️	Keyboard shortcuts	<kbd>/</kbd> search, <kbd>1</kbd>-<kbd>4</kbd> switch views.
🔄	Smart cascade on checkboxes	Can't mark Rev-1 until Done; can't mark Rev-2 until Rev-1. Un-checking Done clears revisions.
💾	localStorage persistence	Your data stays on your device. Export/import coming next.
🔔	Toast feedback	Every action gives a satisfying confirmation.
⚡ Quick Start
Bash

# 1. Clone or download this folder
# 2. Serve it (optional — opening index.html directly works too)
cd prep-tracker
python3 -m http.server 8000

# 3. Open http://localhost:8000
That's literally it. No npm install. No .env files. No backend.

📖 How to use it
1. Pick your track on the Dashboard
Tap one of the four cards:

🏢 Service MNC (TCS / Infosys / Wipro / Accenture / Cognizant / Capgemini)
🚀 Big Tech / Product (Google / Amazon / Microsoft / Meta + GlobalLogic/Mphasis-tier)
⚡ Startup (Seed → Series B, worldwide)
🎯 Consulting / Finance (PwC / HSBC / Citi / JPMorgan)
The advisor tells you exactly what to focus on this week and what to deprioritize.

2. Knock out "Today's suggested set"
The dashboard picks 6 items for you — a mix of fresh unsolved problems and items due for revision. Click any card to jump straight to it in the DSA tracker.

3. Mark problems Done → Rev-1 → Rev-2
Three columns per problem:

✅ Done — first solve (counts toward streak)
🔁 Rev-1 — revise ~1 week after solving
🏆 Rev-2 — revise ~3–4 weeks after Rev-1 (or right before interviews)
The "Rev-1 due" and "Rev-2 due" filters automatically surface problems that are due based on when you solved them.

4. Tick off the checklist
Switch to the Checklist tab (press <kbd>3</kbd>) and work through:

🧮 Aptitude & Reasoning
💻 Technical Fundamentals (OOP / DBMS / OS / CN / SQL)
🏗️ System Design / LLD
⚙️ Stack-Specific Depth (RAG, Spark, Azure, Terraform, LangChain)
🛠️ Practical / Take-Home Readiness
📊 Case Study / Consulting
🎯 Behavioral / HR (STAR stories, Amazon LPs, elevator pitch)
🏁 Mock Interviews & Final Prep
5. Check the matrix when unsure
The Priority Matrix tab shows every topic rated HIGH / MED / LOW per track. Click a column header to focus one track.

Reading the matrix: for Service MNCs, DSA-Hard and System Design are LOW — don't burn hours there; put that time into Aptitude, Reasoning, and HR instead. For Startups, DSA-Hard barely matters but your actual stack depth (Python/LangChain/Spark/Azure) and take-home speed are HIGH.

🧠 The 3-Revision Rule
Solving a problem once does not put it in long-term memory. The tracker bakes in the system that actually works:

text

Day 0   → Solve it (Done)      ← counts for the day
Day 7   → Rev-1 (1 week later) ← still fresh, re-solve fast
Day 35  → Rev-2 (~1 month)     ← this is when it sticks forever
The app automatically shows you which problems are due for Rev-1 / Rev-2 based on timestamps saved when you tick the box.

🗺️ Track Strategy Cheat Sheet
<div align="center"> <table> <tr><th>Track</th><th>🔥 HIGH priority</th><th>⏭ Skip / deprioritize</th></tr> <tr> <td>🏢 <b>Service MNC</b></td> <td>Aptitude · Reasoning · Verbal · STAR stories</td> <td>Hard DSA · System Design</td> </tr> <tr> <td>🚀 <b>Big Tech / Product</b></td> <td>Hard DSA · LLD · Resume deep-dive · Leadership Principles · Communication</td> <td>Aptitude · Reasoning · Verbal</td> </tr> <tr> <td>⚡ <b>Startup</b></td> <td>Stack depth · Take-home · DBMS/SQL · Cloud/DevOps · Resume · Communication</td> <td>Hard DSA · OS/CN theory</td> </tr> <tr> <td>💼 <b>Consulting / Finance</b></td> <td>Case studies · Behavioral · Communication · Company research</td> <td>DSA · OOP · OS · CN</td> </tr> </table> </div>
🛠️ Tech Stack
HTML5 — semantic, accessible markup
Vanilla CSS3 — custom properties, glassmorphism (backdrop-filter), CSS grid, animations
Vanilla JavaScript (ES2020+) — zero runtime dependencies, zero build step
JSON data files — easy to edit, easy to extend
localStorage — persistence without a backend
Google Fonts — Inter (UI) + JetBrains Mono (data/numbers)
No React. No Tailwind. No jQuery. Just fast, clean code that loads in milliseconds.

📂 Data format (easy to customize)

problems.json
JSON

{
  "num": 1,
  "pattern": "Two Pointers",
  "title": "Two Sum (sorted array)",
  "diff": "Easy",
  "section_num": 1,
  "section": "Arrays"
}

matrix.json
JSON

{
  "topic": "DBMS / SQL",
  "values": ["MED", "MED", "HIGH", "MED"]
}
Values align with columns: Service MNC, Big Tech, Startup, Consult/Fin.


checklist.json
JSON

{ "id":"tech", "title":"Technical Fundamentals", "icon":"💻", "items":[...] }
Want to add more problems? Append to problems.json — everything else updates automatically.

⌨️ Keyboard shortcuts
Key	Action
<kbd>/</kbd>	Focus the search box
<kbd>1</kbd>	Dashboard
<kbd>2</kbd>	Priority Matrix
<kbd>3</kbd>	Checklist
<kbd>4</kbd>	DSA Tracker
🌱 Roadmap
 Export / Import progress as JSON (backup & device-sync)
 Dark-mode print stylesheet to print a physical tracker
 LeetCode / GeeksforGeeks deep links per problem
 Notes field per problem (tricks, edge cases you forgot)
 Pomodoro timer integration inside the dashboard
 Weekly report email (optional, via mailto: summary)
 Spaced-repetition algorithm (SM-2) replacing fixed 7/35-day windows
 Contest tracker (LeetCode Weekly / Codeforces rounds)
💡 Pro tips
Don't break the streak. Even one problem or one checklist item counts.
Close the flagged gaps from your master sheet: Azure DevOps and Terraform are called out as weak spots — handle them before the first startup interview.
Use Rev-2 as your interview bar. If you can solve a problem cold on Rev-2, it's interview-ready.
Customize "Why this company" per target — the HR checklist reminds you not to use a generic answer.
Rehearse every resume bullet in 20 seconds. The mock-interview checklist enforces this.
📜 License
Personal use built for Atharva Vijay Shinde's 2026 placement prep. Fork it, adapt it, ship your own offer. 🚀

<div align="center"> <br/>
Made with 🔥 in Nagpur.
<br/>
<sub>Solve · Revise · Master · Get the offer.</sub>

</div>

<!---LeetCode Topics Start-->
# LeetCode Topics
## Database
|  |
| ------- |
| [0584-find-customer-referee](https://github.com/Atharva680/Master-DSA-Sheet-500-/tree/master/0584-find-customer-referee) |
| [1757-recyclable-and-low-fat-products](https://github.com/Atharva680/Master-DSA-Sheet-500-/tree/master/1757-recyclable-and-low-fat-products) |
<!---LeetCode Topics End-->