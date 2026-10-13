<p align="center">
  <img src="https://img.shields.io/badge/THEROOT-Node%20Infrastructure-ea4335?style=for-the-badge&labelColor=07060f" alt="THEROOT" />
  <img src="https://img.shields.io/badge/V0-Active-5fd38d?style=for-the-badge&labelColor=07060f" alt="V0" />
</p>

<p align="center"><b>V0 Node Server Infrastructure</b></p>

<p align="center">
  <img src="https://img.shields.io/badge/Python-3.12-3776ab?style=flat-square&logo=python&logoColor=white&labelColor=07060f" />
  <img src="https://img.shields.io/badge/Docker-Compose-2496ED?style=flat-square&logo=docker&logoColor=white&labelColor=07060f" />
  <img src="https://img.shields.io/badge/aiohttp-Server-2496ED?style=flat-square&labelColor=07060f" />
  <img src="https://img.shields.io/badge/License-MIT-c0caf5?style=flat-square&labelColor=07060f" />
</p>

---

## What is THEROOT?

Central coordinator and server infrastructure for the V0 stack.
Monitors all services, relays health checks, and serves as the backbone connecting ALICE agents, THESEED blockchain, and game backends.

## Features

- **Service monitoring** — continuous health checks across all containers
- **Status aggregation** — single endpoint for full stack health
- **Event logging** — rolling event log with formatted output
- **Auto-recovery** — detects service state changes (UP/DOWN)
- **Docker-native** — runs in container with bridge networking

## Quick start

```bash
docker compose up -d theroot
```

## API

| Endpoint | Method | Description |
|---|---|---|
| `/health` | GET | Health check with service summary |
| `/status` | GET | Full status with uptime, checks, events |
| `/services` | GET | Per-service health status |
| `/events` | GET | Event log (`?n=50` for last N) |

## Environment

| Variable | Default | Description |
|---|---|---|
| `PANDORA_PORT` | `7783` | HTTP server port |
| `HQ_HOST` | `host.docker.internal` | Main server host |
| `HQ_PORT` | `7777` | Main server port |

## Related

<p align="center">
  <a href="https://github.com/VZero911/A.L.I.C.E"><img src="https://img.shields.io/badge/A.L.I.C.E-AI%20Framework-00ffcc?style=for-the-badge&logo=github&labelColor=07060f" alt="ALICE" /></a>
  <a href="https://github.com/VZero911/THESEED"><img src="https://img.shields.io/badge/THESEED-Web3%20Game-f2c14e?style=for-the-badge&logo=github&labelColor=07060f" alt="THESEED" /></a>
  <a href="https://github.com/VZero911/AGENTS"><img src="https://img.shields.io/badge/AGENTS-Public%20Nodes-5fd38d?style=for-the-badge&logo=github&labelColor=07060f" alt="AGENTS" /></a>
</p>

---

<p align="center"><i>Design By V0</i></p>
