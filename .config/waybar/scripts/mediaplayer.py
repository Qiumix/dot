#!/usr/bin/env python3
import json
import subprocess
import os


def get_player_data():
    try:
        cmd = [
            "playerctl",
            "metadata",
            "--format",
            '{"text": "{{title}} - {{artist}}", "alt": "{{status}}", "class": "{{status}}"}',
        ]
        result = subprocess.run(cmd, capture_output=True, text=True)
        if result.returncode == 0:
            return json.loads(result.stdout)
    except:
        pass
    return None


proc = subprocess.Popen(
    [
        "playerctl",
        "--follow",
        "metadata",
        "--format",
        '{"text": "{{title}} - {{artist}}", "alt": "{{status}}", "class": "{{status}}"}',
    ],
    stdout=subprocess.PIPE,
    text=True,
)
print('{"text": "nothing...", "alt": "Paused", "class": "Paused"}', flush=True)

for line in iter(proc.stdout.readline, ""):
    if line:
        print(line.strip(), flush=True)
