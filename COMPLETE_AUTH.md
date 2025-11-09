# Complete Shopify CLI Authentication

## Current Status
❌ **Not authenticated** - The verification codes are expiring before completion

## Step-by-Step Authentication

### Step 1: Start Authentication
Run this command in your terminal:
```bash
npx @shopify/cli theme dev --store synapex.store
```

### Step 2: Complete Authentication Quickly
When you see:
```
User verification code: XXXX-XXXX
👉 Press any key to open the login page on your browser
```

**IMMEDIATELY:**
1. **Press any key** to open the browser (or click the link)
2. **Log in** to your Shopify account
3. **Enter the verification code** when prompted
4. **Authorize** the CLI access

### Step 3: Use the Correct Store Domain

If you get "not authorized" error, try using your myshopify.com domain:

**Find your myshopify.com domain:**
1. Go to: https://admin.shopify.com
2. Log in to your store
3. Look at the URL - it will show like: `synapex.myshopify.com`
4. Or go to **Settings → Domains** to see your primary domain

**Then use:**
```bash
npx @shopify/cli theme dev --store synapex.myshopify.com
```

### Step 4: Alternative - Let CLI Show Available Stores

Instead of specifying the store, let it show you options:
```bash
npx @shopify/cli theme dev
```

This will:
1. Authenticate you
2. Show all stores you have access to
3. Let you select the correct one

## Quick Test

To verify authentication worked:
```bash
npx @shopify/cli theme list
```

If this works, you're authenticated! Then run:
```bash
npx @shopify/cli theme dev
```

## Important Notes

- **Act quickly** - verification codes expire in about 2 minutes
- **Use myshopify.com domain** if custom domain doesn't work
- **Must be store owner or staff** with theme development permissions
- **Log into Shopify admin first** to ensure access

## If Still Not Working

1. Make sure you're the store owner or have staff access
2. Log into https://admin.shopify.com first
3. Check that you have theme development permissions
4. Try the myshopify.com domain instead of custom domain

