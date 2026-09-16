<div align="center">

  ![GitHub Release](https://img.shields.io/github/v/release/Primes-23/PRIMES-Clean-Memory?color=crimson&style=for-the-badge)
  ![GitHub License](https://img.shields.io/github/license/Primes-23/PRIMES-Clean-Memory?color=crimson&style=for-the-badge)
  ![Platform](https://img.shields.io/badge/Platform-Windows-0078D4?style=for-the-badge&logo=windows&logoColor=white)
  ![Language](https://img.shields.io/badge/Language-AutoHotkey-green?style=for-the-badge)

  # ⚡ PRIMES Clean Memory

  **A zero-bloat, background RAM optimization utility that purges system standby lists and working sets instantly.**

  [Key Features](#-key-features) • [Installation](#-installation) • [How It Works](#-how-it-works) • [Security & Scan Evidence](#-security--virustotal-evidence) • [License](#-license)

  <br />

  <!-- HERO IMAGE SHOWCASE -->
  <a href="https://github.com/Primes-23/PRIMES-Clean-Memory">
    <img src="docs/hero-image.png" alt="PRIMES Clean Memory Hero Preview" width="800" style="border-radius: 8px;">
  </a>

  *Instant RAM purging with zero resident memory overhead.*

</div>

---

## 🌟 Overview

**PRIMES Clean Memory** is an open-source Windows optimization tool engineered to solve micro-stutters and high standby memory usage during heavy gaming and multitasking. Unlike heavy commercial memory cleaners that run continuously in the background, PRIMES Clean Memory executes **only on demand** or via scheduled events—freeing gigabytes of system RAM in milliseconds.

---

## ✨ Key Features

* 🚀 **Instant RAM Purge**: Empties system working sets and standby memory allocations instantly via native Windows APIs.
* 👻 **Zero Background Overhead**: Consumes **0 MB RAM** while idle because it executes on demand rather than staying resident in memory.
* 🤫 **Silent Operation**: Operates strictly in the background without intrusive CMD windows or screen flickering during gameplay.
* 🛡️ **UAC Elevation Handling**: Features built-in elevation routing so memory operations run without triggering repetitive UAC popups.
* 📦 **Automated Installer**: Custom setup script handles directory extraction, task scheduling, and desktop context menu integration automatically.

---

## 🛠️ How It Works

```text
User Trigger / Scheduled Task
             │
             ▼
    PRIMES Clean Memory
             │
             ▼
Windows Kernel API Execution (EmptyWorkingSet / Memory Purge)
             │
             ▼
Standby List & Cache Released ──► System RAM Restored Instantly
