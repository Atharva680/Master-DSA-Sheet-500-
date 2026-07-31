<!-- 
  🧠 MASTER DSA SHEET 500 — Interactive Glassmorphism Edition
  Features: SVG Timeline • Interactive Checkboxes • Neon Glass UI • Collapsible Tips
-->

<style>
  @import url('https://fonts.googleapis.com/css2?family=Space+Grotesk:wght@300;500;700&family=Inter:wght@300;400;600&display=swap');

  :root {
    --bg-deep: #0b0c15;
    --glass: rgba(255, 255, 255, 0.04);
    --glass-border: rgba(255, 255, 255, 0.08);
    --neon-green: #00ffa3;
    --neon-blue: #00d4ff;
    --neon-pink: #f43f79;
    --text-main: #f0f4f8;
    --text-muted: #94a3b8;
  }

  body {
    background: var(--bg-deep);
    color: var(--text-main);
    font-family: 'Inter', 'Segoe UI', system-ui, sans-serif;
    line-height: 1.6;
    margin: 0;
    padding: 0;
  }

  h1, h2, h3 { font-family: 'Space Grotesk', sans-serif; letter-spacing: -0.03em; }
  
  /* Gradient text utility */
  .gradient-text {
    background: linear-gradient(135deg, var(--neon-green), var(--neon-blue), var(--neon-pink));
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    background-clip: text;
    filter: drop-shadow(0 0 10px rgba(0,255,163,0.3));
  }

  /* Glass cards */
  .glass {
    background: var(--glass);
    backdrop-filter: blur(16px) saturate(140%);
    -webkit-backdrop-filter: blur(16px) saturate(140%);
    border: 1px solid var(--glass-border);
    border-radius: 20px;
    padding: 2rem;
    box-shadow: 0 8px 32px 0 rgba(0,0,0,0.4), inset 0 0 0 1px rgba(255,255,255,0.02);
    transition: transform 0.2s ease, box-shadow 0.2s ease;
  }
  .glass:hover { box-shadow: 0 12px 40px rgba(0,255,163,0.08); }

  /* Neon borders */
  .neon-green { border: 1px solid rgba(0,255,163,0.35); box-shadow: 0 0 20px rgba(0,255,163,0.1); }
  .neon-blue  { border: 1px solid rgba(0,212,255,0.35); box-shadow: 0 0 20px rgba(0,212,255,0.1); }
  .neon-pink  { border: 1px solid rgba(244,63,121,0.35); box-shadow: 0 0 20px rgba(244,63,121,0.1); }

  /* Interactive Topic Pills */
  .pill {
    display: inline-block;
    padding: 0.35rem 0.9rem;
    margin: 0.25rem;
    border-radius: 999px;
    font-size: 0.85rem;
    font-weight: 600;
    border: 1px solid rgba(255,255,255,0.1);
    background: rgba(255,255,255,0.03);
    color: var(--text-main);
    transition: all 0.2s ease;
    cursor: pointer;
    text-decoration: none;
  }
  .pill:hover {
    background: rgba(0,255,163,0.15);
    border-color: rgba(0,255,163,0.6);
    color: var(--neon-green);
    transform: translateY(-2px);
    box-shadow: 0 0 15px rgba(0,255,163,0.15);
  }

  /* Table Styling */
  table.dsa-table {
    width: 100%;
    border-collapse: separate;
    border-spacing: 0;
    font-size: 0.9rem;
  }
  table.dsa-table thead th {
    background: rgba(0,0,0,0.4);
    color: var(--neon-green);
    text-transform: uppercase;
    letter-spacing: 0.08em;
    font-size: 0.75rem;
    padding: 1rem 0.75rem;
    text-align: left;
    border-bottom: 2px solid rgba(0,255,163,0.2);
    position: sticky;
    top: 0;
    backdrop-filter: blur(8px);
  }
  table.dsa-table tbody td {
    padding: 0.85rem 0.75rem;
    border-bottom: 1px solid rgba(255,255,255,0.05);
    vertical-align: middle;
  }
  table.dsa-table tbody tr:hover { background: rgba(255,255,255,0.03); }

  /* Difficulty badges */
  .badge-easy   { background: rgba(0,255,163,0.15); color: var(--neon-green); border: 1px solid rgba(0,255,163,0.3); }
  .badge-med    { background: rgba(244,211,94,0.15); color: #f0c94d; border: 1px solid rgba(244,211,94,0.3); }
  .badge-hard   { background: rgba(244,63,121,0.15); color: var(--neon-pink); border: 1px solid rgba(244,63,121,0.3); }

  /* Progress bars */
  .bar-bg { background: rgba(255,255,255,0.1); border-radius: 999px; height: 14px; overflow: hidden; position: relative; }
  .bar-fill { height: 100%; border-radius: 999px; background: linear-gradient(90deg, var(--neon-green), var(--neon-blue)); box-shadow: 0 0 10px rgba(0,255,163,0.4); transition: width 0.8s ease; }

  /* Timeline SVG line */
  .timeline-line { stroke: url(#gradLine); stroke-width: 3; fill: none; stroke-dasharray: 8 6; animation: dashScroll 2s linear infinite; }
  @keyframes dashScroll { to { stroke-dashoffset: -28; } }

  /* Checkbox styling for interactivity */
  input[type="checkbox"] {
    width: 1.2rem; height: 1.2rem;
    accent-color: var(--neon-green);
    cursor: pointer;
    transform: scale(1.1);
  }

  /* Collapsible details glow */
  details { border: 1px solid rgba(255,255,255,0.08); border-radius: 12px; overflow: hidden; margin-top: 0.5rem; background: rgba(255,255,255,0.02); }
  summary { padding: 1rem; cursor: pointer; list-style: none; font-weight: 600; color: var(--neon-blue); }
  summary:hover { background: rgba(0,212,255,0.05); }
  summary::-webkit-details-marker { display: none; }
  summary::before { content: "▸ "; color: var(--neon-green); font-weight: 700; }

  /* Responsive */
  @media (max-width: 900px) {
    .glass { padding: 1.2rem; }
    table.dsa-table { font-size: 0.8rem; }
  }
</style>

<div align="center">

# 🚀 Master DSA Sheet 500

<h2 style="font-weight:300; color:#94a3b8; letter-spacing:0.15em;">🧠 Master Your DSA Journey</h2>

<p>
  <img src="https://img.shields.io/badge/Problems-500-blue?style=for-the-badge&logo=data" alt="500">
  <img src="https://img.shields.io/badge/Status-In%20Progress-success?style=for-the-badge&logo=rocket" alt="Status">
  <img src="https://img.shields.io/badge/Goal-Consistency-orange?style=for-the-badge" alt="Goal">
  <img src="https://img.shields.io/badge/Edits-Interactive%20UI-purple?style=for-the-badge" alt="UI">
</p>

> <span style="font-size:1.2rem; font-style:italic; color:#cbd5e1;">"Don't count the number of problems you solve. <span class="gradient-text">Count the concepts you master.</span>"</span> 🚀

</div>

---

## 🎯 Mission

<div class="glass" style="display:grid; grid-template-columns: repeat(auto-fit, minmax(220px, 1fr)); gap:1.5rem;">

### ⚔️ Battle Plan
This isn't another static sheet. It's a **3-Revision Mastery Engine** designed to burn patterns into long-term memory.

### 🧠 Smart Practice
Every problem follows a loop: **Learn → Solve → Revise → Master**. No blind grinding.

### 🔁 Multiple Revisions
3 passes. 3 layers of understanding. **2 revisions = true mastery.**

</div>

---

## ⚔️ The 3-Step Mastery System

<div style="display:flex; gap:1rem; flex-wrap:wrap; justify-content:center; align-items:center; padding:1rem 0;">

<div class="glass" style="min-width:140px; text-align:center; border-top: 3px solid var(--neon-green);">
  <h3 style="margin-top:0;">📖 Learn</h3>
  <p style="font-size:0.85rem; color:var(--text-muted);">Understand the logic without copying.</p>
</div>

<span style="font-size:2rem; color:var(--neon-blue); font-weight:bold;">→</span>

<div class="glass" style="min-width:140px; text-align:center; border-top: 3px solid var(--neon-blue);">
  <h3 style="margin-top:0;">💻 Solve</h3>
  <p style="font-size:0.85rem; color:var(--text-muted);">Write clean, efficient code.</p>
</div>

<span style="font-size:2rem; color:var(--neon-pink); font-weight:bold;">→</span>

<div class="glass" style="min-width:140px; text-align:center; border-top: 3px solid var(--neon-pink);">
  <h3 style="margin-top:0;">🔁 Revise</h3>
  <p style="font-size:0.85rem; color:var(--text-muted);">Lock into long-term memory.</p>
</div>

</div>

<div style="text-align:center; margin-top:1rem; font-size:0.95rem; color:var(--text-muted);">
  <strong>Solve Once → Understand</strong> &nbsp;|&nbsp; <strong>Solve Twice → Remember</strong> &nbsp;|&nbsp; <strong>Solve Thrice → Master</strong>
</div>

---

## 📈 Progress Dashboard

<div class="glass" style="display:grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap:1.5rem;">

<div>
  <h3 style="margin-top:0;">📊 Overall Progress</h3>
  <div class="bar-bg"><div class="bar-fill" style="width: 0%;"></div></div>
  <p style="text-align:center; font-weight:bold; font-size:1.1rem;">0%</p>
</div>

<div>
  <h4>Problems Solved</h4>
  <p style="font-size:1.2rem; font-family: monospace;"><strong>0</strong> / 500</p>
</div>

<div>
  <h4>Revision 1</h4>
  <p style="font-size:1.2rem; font-family: monospace;"><strong>0</strong> / 500</p>
</div>

<div>
  <h4>Revision 2</h4>
  <p style="font-size:1.2rem; font-family: monospace;"><strong>0</strong> / 500</p>
</div>

<div>
  <h4>🔥 Current Streak</h4>
  <p style="font-size:1.2rem; font-family: monospace;"><strong>0</strong> Days</p>
</div>

</div>

---

## 🏆 DSA Progress Sheet

> 💡 **Interactive:** Click the checkboxes directly in this table to track your first pass, revisions, and notes.

<table class="dsa-table">
<thead>
<tr>
  <th>No.</th>
  <th>Problem</th>
  <th>Topic</th>
  <th>Difficulty</th>
  <th>Solve</th>
  <th>Rev-1</th>
  <th>Rev-2</th>
  <th>Notes / Pattern</th>
</tr>
</thead>
<tbody>
  <!-- Template rows — duplicate this block for 1-500 -->
  <tr>
    <td>1</td>
    <td><strong>Two Sum</strong></td>
    <td><a href="#topics-covered" class="pill">📦 Arrays</a></td>
    <td><span class="badge-easy">Easy</span></td>
    <td><input type="checkbox" aria-label="Solve 1"></td>
    <td><input type="checkbox" aria-label="Rev 1"></td>
    <td><input type="checkbox" aria-label="Rev 2"></td>
    <td>HashMap / Complement</td>
  </tr>
  <tr>
    <td>2</td>
    <td><strong>Best Time to Buy</strong></td>
    <td><a href="#topics-covered" class="pill">📦 Arrays</a></td>
    <td><span class="badge-easy">Easy</span></td>
    <td><input type="checkbox" aria-label="Solve 2"></td>
    <td><input type="checkbox" aria-label="Rev 1"></td>
    <td><input type="checkbox" aria-label="Rev 2"></td>
    <td>Sliding Window / Min</td>
  </tr>
  <tr>
    <td>3</td>
    <td><strong>Contains Duplicate</strong></td>
    <td><a href="#topics-covered" class="pill">📦 Arrays</a></td>
    <td><span class="badge-easy">Easy</span></td>
    <td><input type="checkbox" aria-label="Solve 3"></td>
    <td><input type="checkbox" aria-label="Rev 1"></td>
    <td><input type="checkbox" aria-label="Rev 2"></td>
    <td>Set / Sort</td>
  </tr>
  <tr>
    <td>4</td>
    <td><strong>Product Except Self</strong></td>
    <td><a href="#topics-covered" class="pill">📦 Arrays</a></td>
    <td><span class="badge-med">Medium</span></td>
    <td><input type="checkbox" aria-label="Solve 4"></td>
    <td><input type="checkbox" aria-label="Rev 1"></td>
    <td><input type="checkbox" aria-label="Rev 2"></td>
    <td>Prefix / Suffix Products</td>
  </tr>
  <tr>
    <td>5</td>
    <td><strong>Maximum Subarray</strong></td>
    <td><a href="#topics-covered" class="pill">📈 DP</a></td>
    <td><span class="badge-med">Medium</span></td>
    <td><input type="checkbox" aria-label="Solve 5"></td>
    <td><input type="checkbox" aria-label="Rev 1"></td>
    <td><input type="checkbox" aria-label="Rev 2"></td>
    <td>Kadane's Algorithm</td>
  </tr>
  <!-- ... -->
  <tr>
    <td>500</td>
    <td><strong>DSA Legend Problem</strong></td>
    <td><a href="#topics-covered" class="pill">🌐 Graph / 🧠 DP</a></td>
    <td><span class="badge-hard">Hard</span></td>
    <td><input type="checkbox" aria-label="Solve 500"></td>
    <td><input type="checkbox" aria-label="Rev 1 500"></td>
    <td><input type="checkbox" aria-label="Rev 2 500"></td>
    <td>Mastery Lock</td>
  </tr>
</tbody>
</table>

---

## 🧩 Topics Covered

<div style="display:flex; flex-wrap:wrap; gap:0.5rem; justify-content:center; padding:1rem;">

<a href="#" class="pill">📦 Arrays</a>
<a href="#" class="pill">🔤 Strings</a>
<a href="#" class="pill">🔗 Linked List</a>
<a href="#" class="pill">📚 Stack</a>
<a href="#" class="pill">🚶 Queue</a>
<a href="#" class="pill">🌲 Trees</a>
<a href="#" class="pill">🌳 BST</a>
<a href="#" class="pill">🧠 Binary Search</a>
<a href="#" class="pill">⚡ Recursion</a>
<a href="#" class="pill">🎯 Backtracking</a>
<a href="#" class="pill">💎 Heap</a>
<a href="#" class="pill">🌐 Graph</a>
<a href="#" class="pill">🟣 Trie</a>
<a href="#" class="pill">📈 Dynamic Programming</a>
<a href="#" class="pill">💰 Greedy</a>
<a href="#" class="pill">🪟 Sliding Window</a>
<a href="#" class="pill">👆 Two Pointer</a>
<a href="#" class="pill">➕ Prefix Sum</a>
<a href="#" class="pill">🌉 Segment Tree</a>
<a href="#" class="pill">🤝 DSU</a>
<a href="#" class="pill">🔢 Bit Manipulation</a>
<a href="#" class="pill">🧮 Math</a>

</div>

<!-- Interactive collapsible patterns for "New" feel -->
<details>
<summary><span style="font-size:1.1rem;">🔬 Pro Pattern Explorer (Click to Expand)</span></summary>
<div style="padding:0.5rem 1rem;">
  <p><strong>Arrays:</strong> HashMap for frequency / Complement problems.</p>
  <p><strong>DP:</strong> Use memoization for overlapping subproblems. Tabulation for optimization.</p>
  <p><strong>Graph:</strong> BFS for shortest path; DFS for connectivity; Union-Find for cycles.</p>
</div>
</details>

---

## 🏅 Milestones

<div style="position:relative; padding-left:2rem;">

<!-- SVG Timeline Line -->
<svg width="4" height="100%" style="position:absolute; left:0.5rem; top:0; bottom:0;" preserveAspectRatio="none">
  <defs>
    <linearGradient id="gradLine" x1="0" y1="0" x2="0" y2="1">
      <stop offset="0%" stop-color="#00ffa3"/>
      <stop offset="50%" stop-color="#00d4ff"/>
      <stop offset="100%" stop-color="#f43f79"/>
    </linearGradient>
  </defs>
  <line x1="2" y1="10" x2="2" y2="540" stroke="url(#gradLine)" stroke-width="3" stroke-dasharray="8 6" />
</svg>

<div class="glass" style="margin-bottom:1rem; border-left: 4px solid var(--neon-green);">
  <h3>🎯 25 Problems <span style="color:var(--neon-green);">| Beginner</span></h3>
  <p>Start strong. Build consistency.</p>
</div>
<div class="glass" style="margin-bottom:1rem; border-left: 4px solid var(--neon-blue);">
  <h3>🎯 50 Problems <span style="color:var(--neon-blue);">| Explorer</span></h3>
  <p>Patterns start to emerge.</p>
</div>
<div class="glass" style="margin-bottom:1rem; border-left: 4px solid var(--neon-pink);">
  <h3>🎯 100 Problems <span style="color:var(--neon-pink);">| Challenger</span></h3>
  <p>First revision begins.</p>
</div>
<div class="glass" style="margin-bottom:1rem; border-left: 4px solid #f0c94d;">
  <h3>🎯 200 Problems <span style="color:#f0c94d;">| Warrior</span></h3>
  <p>Multiple topics intersect.</p>
</div>
<div class="glass" style="margin-bottom:1rem; border-left: 4px solid #a855f7;">
  <h3>🎯 500 Problems <span style="color:#a855f7;">| DSA Legend 👑</span></h3>
  <p>Mastery is locked.</p>
</div>

</div>

---

## 🔥 Daily Challenge

<div class="glass">

<h3>Today's Interactive Goal Tracker</h3>
<p>Check these off directly in your browser:</p>

<form onsubmit="event.preventDefault(); this.innerHTML='<span style=\'color:var(--neon-green); font-weight:bold;\'>💪 Mission Complete! Update your dashboard.</span>';">
  <label style="display:block; margin:0.4rem 0;"><input type="checkbox"> ☐ Solve 3 Problems</label>
  <label style="display:block; margin:0.4rem 0;"><input type="checkbox"> ☐ Revise 5 Old Problems</label>
  <label style="display:block; margin:0.4rem 0;"><input type="checkbox"> ☐ Read Editorial Only If Needed</label>
  <label style="display:block; margin:0.4rem 0;"><input type="checkbox"> ☐ Update Progress</label>
  <label style="display:block; margin:0.4rem 0;"><input type="checkbox"> ☐ <strong>Never Give Up</strong> 💪</label>
  <button type="submit" style="margin-top:0.5rem; padding:0.5rem 1.5rem; background: linear-gradient(135deg, var(--neon-green), var(--neon-blue)); border:none; border-radius:8px; color:#0b0c15; font-weight:bold; cursor:pointer;">Lock In Today</button>
</form>

</div>

---

## 📅 Weekly Plan

<div style="display:grid; grid-template-columns: repeat(auto-fit, minmax(140px, 1fr)); gap:1rem;">

<div class="glass" style="text-align:center; border-top:3px solid var(--neon-green);">
  <h4>Monday</h4>
  <p>New Problems</p>
</div>
<div class="glass" style="text-align:center; border-top:3px solid var(--neon-green);">
  <h4>Tuesday</h4>
  <p>New Problems</p>
</div>
<div class="glass" style="text-align:center; border-top:3px solid var(--neon-green);">
  <h4>Wednesday</h4>
  <p>New Problems</p>
</div>
<div class="glass" style="text-align:center; border-top:3px solid var(--neon-green);">
  <h4>Thursday</h4>
  <p>New Problems</p>
</div>
<div class="glass" style="text-align:center; border-top:3px solid var(--neon-blue);">
  <h4>Friday</h4>
  <p>New Problems</p>
</div>
<div class="glass" style="text-align:center; border-top:3px solid var(--neon-pink);">
  <h4>Saturday</h4>
  <p>Revision-1</p>
</div>
<div class="glass" style="text-align:center; border-top:3px solid var(--neon-pink);">
  <h4>Sunday</h4>
  <p>Rev-2 + Mock</p>
</div>

</div>

---

## 💡 Rules

<div style="display:grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap:1rem;">

<div class="glass">
  <h4>❌ No Immediate Copies</h4>
  <p>Spend at least 30 minutes thinking. The struggle is the lesson.</p>
</div>
<div class="glass">
  <h4>✅ Clean Code</h4>
  <p>Write readable, efficient solutions. Your future self will thank you.</p>
</div>
<div class="glass">
  <h4>🔁 Revise Always</h4>
  <p>Every solved problem needs at least 2 revisions to master.</p>
</div>
<div class="glass">
  <h4>🧠 Learn Patterns</h4>
  <p>Don't memorize answers. Memorize the logic, the pattern, the invariant.</p>
</div>

</div>

---

## 🏅 Achievement Board

<div class="glass">

<h3>Interactive Lock List</h3>
<p>Check them off as you hit milestones:</p>

<ul style="list-style:none; padding:0;">
  <li><label><input type="checkbox"> ⬜ First Problem</label></li>
  <li><label><input type="checkbox"> ⬜ 7-Day Streak</label></li>
  <li><label><input type="checkbox"> ⬜ 25 Problems</label></li>
  <li><label><input type="checkbox"> ⬜ 50 Problems</label></li>
  <li><label><input type="checkbox"> ⬜ First Revision Completed</label></li>
  <li><label><input type="checkbox"> ⬜ 100 Problems</label></li>
  <li><label><input type="checkbox"> ⬜ 200 Problems</label></li>
  <li><label><input type="checkbox"> ⬜ DP Master</label></li>
  <li><label><input type="checkbox"> ⬜ Graph Expert</label></li>
  <li><label><input type="checkbox"> ⬜ 500 Problems</label></li>
</ul>
<p style="font-size:1.2rem; margin-top:1rem;"><strong>👑 DSA Legend</strong> — When all 10 are checked.</p>

</div>

---

## 📊 Motivation Meter

<div class="glass">

<h3>Small progress every day becomes massive success.</h3>

<div style="margin:0.5rem 0;">
  <div style="display:flex; justify-content:space-between; font-size:0.8rem; color:var(--text-muted);"><span>Day 1</span><span>Day 30</span><span>Day 90</span><span>Day 180</span><span>Day 365</span></div>
  <div class="bar-bg" style="height:24px;">
    <div style="width: 5%; height:100%; background: linear-gradient(90deg, #00ffa3, #00d4ff); border-radius:999px; box-shadow:0 0 15px rgba(0,255,163,0.5);"></div>
  </div>
</div>

<p><strong>Remember:</strong> You don't need to solve 500 problems today. You need to <span class="gradient-text">solve 3 today</span> and never break the chain.</p>

</div>

---

<div align="center" style="padding: 3rem 1rem;">

<h1 class="gradient-text" style="font-size:3rem; margin-bottom:0;">🚀 One Problem at a Time.</h1>
<h2 style="font-weight:300; color:#94a3b8;">Every solved problem makes you a better programmer.</h2>

<p>
  <img src="https://img.shields.io/badge/Star-This_repo-yellow?style=for-the-badge&logo=github" alt="Star">
</p>

<p style="font-size:1.1rem; color:#cbd5e1;">
  <strong>Happy Coding ❤️</strong> — Track your progress, revise with purpose, master forever.
</p>

</div>

<!-- End of README -->
