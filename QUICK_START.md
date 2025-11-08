# Quick Start Guide - Synapex Development

## ✅ What's Been Set Up

1. **Git Repository**: Connected to `https://github.com/sporting-design/SYN.WEBPAGE.001.git`
2. **Initial Commit**: All theme files committed locally
3. **Configuration Files**: 
   - `.gitignore` - Excludes unnecessary files from Git
   - `.shopifyignore` - Excludes files from Shopify uploads
4. **Development Script**: `start-dev.sh` - Quick way to start development server

## 🚀 Next Steps

### 1. Push to GitHub (First Time)

You'll need to authenticate with GitHub. Choose one method:

**Option A: Using GitHub Personal Access Token**
```bash
git push -u origin main
# When prompted:
# Username: your-github-username
# Password: your-personal-access-token (not your password)
```

**Option B: Set up SSH (Recommended)**
```bash
# Generate SSH key if you don't have one
ssh-keygen -t ed25519 -C "your_email@example.com"

# Add to GitHub: Settings > SSH and GPG keys > New SSH key
# Then change remote to SSH:
git remote set-url origin git@github.com:sporting-design/SYN.WEBPAGE.001.git
git push -u origin main
```

### 2. Start Development Server

**Easy Way:**
```bash
./start-dev.sh
```

**Manual Way:**
```bash
npx @shopify/cli theme dev --store synapex.store
```

This will:
- Open your browser for Shopify authentication
- Create a development theme on your store
- Start a local preview server
- Provide a preview URL (like `https://xxx.myshopify.com?preview_theme_id=xxx`)
- Auto-sync your file changes to Shopify

### 3. Work on Your Theme

1. **Edit files in Cursor** - Make changes to any theme files
2. **Changes auto-sync** - If `theme dev` is running, changes sync automatically
3. **Preview in browser** - View changes at the preview URL
4. **Commit changes:**
   ```bash
   git add .
   git commit -m "Description of changes"
   git push origin main
   ```

### 4. Deploy to Live Store

**⚠️ Always test in development theme first!**

```bash
# Push to development theme (safe)
npx @shopify/cli theme push --store synapex.store

# Push to LIVE theme (be careful!)
npx @shopify/cli theme push --store synapex.store --live
```

## 📁 Project Structure

- `assets/` - CSS, JavaScript, images
- `blocks/` - Reusable theme blocks
- `config/` - Theme settings
- `layout/` - Page layouts
- `sections/` - Theme sections
- `snippets/` - Reusable code
- `templates/` - Page templates

## 🔄 Typical Workflow

1. **Start session:**
   ```bash
   ./start-dev.sh
   ```

2. **Make changes** in Cursor

3. **Preview** at the development URL

4. **Commit & push:**
   ```bash
   git add .
   git commit -m "Feature: Added new section"
   git push origin main
   ```

5. **Deploy when ready:**
   ```bash
   npx @shopify/cli theme push --store synapex.store --live
   ```

## 📚 More Information

See `DEVELOPMENT_WORKFLOW.md` for detailed workflow documentation.

## 🆘 Troubleshooting

**Git push authentication issues:**
- Set up SSH keys or use Personal Access Token
- See GitHub documentation for authentication

**Shopify CLI not working:**
- Make sure you're authenticated: `npx @shopify/cli auth login`
- Check you have access to synapex.store

**Changes not syncing:**
- Make sure `theme dev` is running
- Check the terminal for errors

