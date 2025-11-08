# Push to GitHub - Final Step

## Issue
Your SSH key is marked as read-only. We need to use HTTPS with a Personal Access Token for write access.

## Quick Solution

### Step 1: Create Personal Access Token
1. Go to: https://github.com/settings/tokens
2. Click "Generate new token" → "Generate new token (classic)"
3. Settings:
   - **Note:** "Synapex Development"
   - **Expiration:** 90 days (or your preference)
   - **Scopes:** ✅ Check `repo` (Full control of private repositories)
4. Click "Generate token"
5. **COPY THE TOKEN** (you won't see it again!)

### Step 2: Push
Run this command in your terminal:
```bash
git push --set-upstream origin main
```

When prompted:
- **Username:** `sporting-design`
- **Password:** Paste your Personal Access Token (NOT your GitHub password)

The token will be saved in your macOS keychain for future use.

---

**Alternative:** If you want to fix the SSH key permissions, you can:
1. Go to: https://github.com/settings/keys
2. Delete the read-only key
3. Add a new key with write permissions
4. Switch back to SSH: `git remote set-url origin git@github.com:sporting-design/SYN.WEBPAGE.001.git`

