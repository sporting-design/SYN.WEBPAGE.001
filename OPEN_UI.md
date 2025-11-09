# 🚀 Open Your Synapex UI - Step by Step

## The 500 Error Means:
The server is running but can't connect to your Shopify store properly. This is an **authentication issue**.

## ✅ Solution - Run This in Your Terminal:

### Step 1: Open Your Terminal
Open Terminal.app (or the terminal in Cursor)

### Step 2: Run This Command:
```bash
cd /Users/user/Desktop/SYN.Webpage.code && npx @shopify/cli theme dev
```

### Step 3: Watch for Authentication
You'll see one of these:

**Option A: Verification Code**
```
User verification code: XXXX-XXXX
👉 Press any key to open the login page
```
- Press ANY key
- Browser opens → Log into Shopify
- Enter the code
- Authorize the CLI

**Option B: Store Selection**
```
Select a store:
```
- Choose your synapex store
- Press Enter

**Option C: Already Authenticated**
```
Syncing theme #123456789 on synapex.myshopify.com
✔ Synced!
Preview your theme: https://synapex.store?preview_theme_id=123456789
```
- Copy that URL and open it!

### Step 4: Get Your Preview URL
After authentication, you'll see:
```
Preview your theme: https://synapex.store?preview_theme_id=XXXXX

Or view it locally at:
http://127.0.0.1:9292
```

### Step 5: Open It!
- Open `http://127.0.0.1:9292` in your browser
- OR open the `https://synapex.store?preview_theme_id=XXXXX` URL

## 🎯 Quick Command

Copy and paste this into your terminal:
```bash
cd /Users/user/Desktop/SYN.Webpage.code && npx @shopify/cli theme dev
```

Then follow the authentication prompts!

---

**The key**: You need to run this in YOUR terminal (not through Cursor) so you can interact with the authentication prompts.

