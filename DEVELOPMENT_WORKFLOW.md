# Synapex Development Workflow

This document outlines the workflow for developing the Synapex Shopify theme locally and syncing with GitHub and Shopify.

## Prerequisites

- Node.js installed (v22.15.0+)
- Git configured
- Shopify CLI access
- Access to Synapex.store Shopify admin

## Setup Instructions

### 1. Initial Git Setup

```bash
# Make initial commit
git add .
git commit -m "Initial commit: Synapex theme"

# Push to GitHub
git push -u origin main
```

### 2. Connect to Shopify Store

```bash
# Authenticate with Shopify (will open browser)
npx @shopify/cli theme dev --store synapex.store

# Or if you have Shopify CLI installed globally:
shopify theme dev --store synapex.store
```

This will:
- Create a development theme on your Shopify store
- Start a local development server
- Provide a preview URL
- Watch for file changes and sync automatically

### 3. Development Workflow

#### Pull Latest from Shopify
```bash
# Pull the latest theme from your live store
npx @shopify/cli theme pull --store synapex.store
```

#### Make Changes Locally
1. Edit files in Cursor
2. Changes auto-sync to Shopify development theme (if `theme dev` is running)
3. Preview changes at the provided URL

#### Push Changes to GitHub
```bash
# Stage changes
git add .

# Commit
git commit -m "Description of changes"

# Push to GitHub
git push origin main
```

#### Deploy to Live Store
```bash
# Push theme to live store (be careful!)
npx @shopify/cli theme push --store synapex.store --live

# Or push to a development theme first
npx @shopify/cli theme push --store synapex.store
```

## Recommended Workflow

1. **Start Development Session:**
   ```bash
   npx @shopify/cli theme dev --store synapex.store
   ```

2. **Make Changes in Cursor:**
   - Edit theme files
   - Changes auto-sync to development theme

3. **Test Changes:**
   - Preview at the development URL
   - Test functionality

4. **Commit to Git:**
   ```bash
   git add .
   git commit -m "Feature: Description"
   git push origin main
   ```

5. **Deploy When Ready:**
   ```bash
   npx @shopify/cli theme push --store synapex.store --live
   ```

## File Structure

- `assets/` - CSS, JavaScript, and image files
- `blocks/` - Reusable theme blocks
- `config/` - Theme configuration files
- `layout/` - Theme layout templates
- `locales/` - Translation files
- `sections/` - Theme sections
- `snippets/` - Reusable code snippets
- `templates/` - Page templates

## Important Notes

- Always test changes in a development theme before pushing to live
- Keep GitHub in sync with your local changes
- Use descriptive commit messages
- The `.shopifyignore` file excludes unnecessary files from Shopify uploads
- The `.gitignore` file excludes sensitive and unnecessary files from Git

## Troubleshooting

### Shopify CLI Not Found
```bash
# Use npx (no installation needed)
npx @shopify/cli theme dev --store synapex.store
```

### Authentication Issues
```bash
# Re-authenticate
npx @shopify/cli auth logout
npx @shopify/cli auth login
```

### Sync Issues
```bash
# Pull fresh copy from Shopify
npx @shopify/cli theme pull --store synapex.store
```

