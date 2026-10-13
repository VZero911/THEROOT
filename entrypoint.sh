#!/bin/bash
echo "[PANDORA-MASTER] Starting — V0 central coordinator — $(date)"
echo "[PANDORA-MASTER] HQ: ${HQ_HOST}:${HQ_PORT}"
exec python3 -u pandora_master.py
