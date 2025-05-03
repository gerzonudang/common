# Redis Setup on macOS

This guide documents how to install, start, stop, restart, and interact with Redis on macOS using Homebrew.

---

## ✅ Installation (Using Homebrew)

1. **Install Homebrew (if not installed):**

   ```bash
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

2. **Install Redis:**

   ```bash
   brew install redis
   ```

3. **Start Redis as a background service:**

   ```bash
   brew services start redis
   ```

4. **Verify Redis is running:**

   ```bash
   redis-cli ping
   ```

   **Expected output:**

   ```bash
   PONG
   ```

---

## 🔁 Restarting Redis

To restart the Redis service:

```bash
brew services restart redis
```
