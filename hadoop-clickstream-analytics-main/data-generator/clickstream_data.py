import random
import csv
from datetime import datetime, timedelta

users = [f"user_{i}" for i in range(1, 5001)]
pages = ["homepage", "product", "search", "cart", "checkout", "profile"]
devices = ["android", "ios", "windows", "mac"]
sessions = [f"session_{i}" for i in range(1, 100001)]

def random_time():
    start = datetime(2025, 1, 1)
    end = datetime(2025, 1, 31)
    delta = end - start
    sec = random.randint(0, int(delta.total_seconds()))
    return start + timedelta(seconds=sec)

rows = 5000000  # change to 5M+ if your PC can handle it

with open("clickstream.csv", "w", newline="") as f:
    writer = csv.writer(f)
    writer.writerow(["user_id", "page", "event_time", "device", "session_id"])

    for _ in range(rows):
        writer.writerow([
            random.choice(users),
            random.choice(pages),
            random_time().strftime("%Y-%m-%d %H:%M:%S"),
            random.choice(devices),
            random.choice(sessions)
        ])