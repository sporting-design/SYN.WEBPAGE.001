# Troubleshooting Shopify CLI Authorization

## Current Issue
You're getting: "You are not authorized to use the CLI to develop in the provided store"

## Solutions

### Option 1: Use the myshopify.com Domain

Instead of `synapex.store`, use your permanent Shopify domain:
- Format: `your-store-name.myshopify.com`
- Example: If your store is `synapex`, it might be `synapex.myshopify.com`

**To find your myshopify.com domain:**
1. Log into your Shopify admin: https://admin.shopify.com
2. Look at the URL - it will show your myshopify.com domain
3. Or go to Settings → Domains to see all your domains

**Then run:**
```bash
npx @shopify/cli theme dev --store your-store-name.myshopify.com
```

### Option 2: Ensure You're Logged Into Shopify Admin First

1. Go to: https://admin.shopify.com
2. Make sure you're logged in as the store owner or have staff access
3. Navigate to your store admin at least once
4. Then try the CLI again

### Option 3: Check Store Access

1. Make sure you're the store owner, OR
2. You have a staff account with theme development permissions
3. If you're using a dev store, ensure you have staff account access

### Option 4: List Available Stores

See which stores you have access to:
```bash
npx @shopify/cli auth login
# Then it will show you available stores to choose from
```

## Quick Fix

Try this command to see your available stores:
```bash
npx @shopify/cli theme list
```

This will:
1. Authenticate you
2. Show all stores you have access to
3. Let you select the correct one

Then use:
```bash
npx @shopify/cli theme dev
# It will prompt you to select a store from the list
```


