<div align="center">

  ![GitHub Release](https://img.shields.io/github/v/release/Primes-23/PRIMES-Clean-Memory?color=crimson&style=for-the-badge)
  ![GitHub License](https://img.shields.io/github/license/Primes-23/PRIMES-Clean-Memory?color=crimson&style=for-the-badge)
  ![Platform](https://img.shields.io/badge/Platform-Windows-0078D4?style=for-the-badge&logo=windows&logoColor=white)
  ![Language](https://img.shields.io/badge/Language-AutoHotkey-green?style=for-the-badge)

  # ⚡ PRIMES Clean Memory

  **A zero-bloat, background RAM optimization utility that purges system standby lists and working sets instantly.**

  [Key Features](#key-features) • [How It Works](#how-it-works) • [Security & Scan Evidence](#security--scan-evidence) • [Installation](#installation) • [License](#license)

  <br />

  <!-- HERO IMAGE SHOWCASE (Sized to fit vertical context menus naturally) -->
  <a href="https://github.com/Primes-23/PRIMES-Clean-Memory">
    <img src="docs/hero-image.png" alt="PRIMES Clean Memory Context Menu" width="320" style="border-radius: 8px;">
  </a>

  <br />
  <sub><i>Instant RAM purging integrated cleanly into your Windows context menu.</i></sub>

</div>

---

## 🌟 Overview

**PRIMES Clean Memory** is an open-source Windows optimization utility engineered to resolve micro-stutters, memory leaks, and high standby RAM usage during heavy gaming and multitasking. Unlike continuous background memory cleaners that waste system resources sitting idle, PRIMES Clean Memory executes **strictly on demand** or via scheduled triggers—freeing gigabytes of cached RAM in milliseconds.

---

## ✨ Key Features

* 🚀 **Instant RAM Purge**: Empties system working sets and standby memory allocations instantly via native Windows kernel APIs.
* 👻 **Zero Background Overhead**: Consumes **0 MB RAM** while idle because it executes on demand rather than remaining resident in memory.
* 🤫 **Silent Execution**: Operates completely in the background without intrusive CMD popups or screen flickering during gameplay.
* 🛡️ **UAC Elevation Handling**: Built-in privilege routing allows memory management operations to execute smoothly without repetitive UAC prompts.
* 📦 **Automated Setup**: Custom installer script manages file directory extraction, context menu integration, and task scheduling automatically.

---

## 🛠️ How It Works

```text
User Context Menu / Task Scheduler
               │
               ▼
      PRIMES Clean Memory
               │
               ▼
Windows Kernel API Execution (EmptyWorkingSet / Memory Purge)
               │
               ▼
Standby List & Cache Released ──► System RAM Restored Instantly
