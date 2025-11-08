# GitHub Authentication Setup

## Current Status
- SSH key generated: ✅
- SSH key added to agent: ✅
- GitHub connection: ⚠️ Needs verification

## Option 1: Verify SSH Key on GitHub

1. Go to: https://github.com/settings/keys
2. Verify you see a key with the fingerprint: `SHA256:kxnT5wCSg4X08E232glJsIZ/KWM2FvblMLB2EdcXoQc`
3. Make sure the key title is something like "Synapex Development"

**Common Issues:**
- Key might have extra spaces when pasted
- Key might be added to wrong account
- Key might need a few minutes to propagate

## Option 2: Use Personal Access Token (Easier)

If SSH continues to have issues, use a Personal Access Token:

### Step 1: Create Token
1. Go to: https://github.com/settings/tokens
2. Click "Generate new token" → "Generate new token (classic)"
3. Name it: "Synapex Development"
4. Select scopes: ✅ `repo` (full control of private repositories)
5. Click "Generate token"
6. **COPY THE TOKEN** (you won't see it again!)

### Step 2: Use Token
When you run `git push`, it will prompt for:
- **Username:** `sporting-design` (or your GitHub username)
- **Password:** Paste your Personal Access Token (NOT your GitHub password)

### Step 3: Push
```bash
git push --set-upstream origin main
```

## Option 3: Use GitHub CLI (If Installed)
```bash
gh auth login
gh repo set-default sporting-design/SYN.WEBPAGE.001
git push --set-upstream origin main
```

## Quick Test Commands

**Test SSH:**
```bash
ssh -T git@github.com
```
Should see: "Hi sporting-design! You've successfully authenticated..."

**Test HTTPS:**
```bash
git ls-remote https://github.com/sporting-design/SYN.WEBPAGE.001.git
```
Will prompt for credentials if not cached.

