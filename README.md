![GitHub Release](https://img.shields.io/github/v/release/Primes-23/PRIMES-Clean-Memory?color=crimson)
![GitHub License](https://img.shields.io/github/license/Primes-23/PRIMES-Clean-Memory?color=crimson)

# PRIMES Clean Memory

A lightweight, automated system RAM optimization utility written in AutoHotkey that purges system standby lists and working sets seamlessly.

## ⚡ Features

* **Silent Background Execution**: Purges system standby memory without popping up console windows or interrupting full-screen games.
* **Zero Resident Overhead**: Executes on demand or via scheduled tasks—doesn't consume RAM sitting idle in the background.
* **UAC Elevation Handling**: Uses integrated privilege elevation to perform memory management tasks cleanly.
* **Automated Setup**: Custom installer packages extraction, path setup, and context menu/task creation.

---

## 🛠️ How It Works

```text
User / Task Scheduler
      ↓
PRIMES Clean Memory
      ↓
Windows API Memory Purge (EmptyWorkingSet / Standby)
      ↓
RAM Freed Instantly (Silent Execution)
