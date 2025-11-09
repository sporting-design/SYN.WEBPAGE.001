# 🚀 Running Your Synapex Website UI

## Shopify CLI is Starting

The development server is starting in the background. Here's what to do:

### In Your Terminal

**Run this command to see the output:**
```bash
npx @shopify/cli theme dev
```

This will show you:
1. Authentication prompts
2. Verification codes
3. Preview URL
4. Store selection options

### What to Expect

**Step 1: Authentication**
```
To run this command, log in to Shopify.
User verification code: XXXX-XXXX
👉 Press any key to open the login page on your browser
```

**Step 2: Quick Actions**
1. Press any key (opens browser)
2. Log in to Shopify account
3. Enter verification code
4. Authorize CLI access

**Step 3: Select Store**
- It will show available stores
- Select your Synapex store

**Step 4: Get Preview URL**
```
Preview URL: https://synapex.store?preview_theme_id=123456789
```

### Open Your Website

Once you get the preview URL:
1. Copy the URL
2. Open in your browser
3. You'll see your Synapex website!

### While Developing

- Edit files in Cursor
- Changes auto-sync to Shopify
- Refresh browser to see updates
- Press Ctrl+C in terminal to stop

---

**Run the command above in your terminal to see the authentication flow!**

