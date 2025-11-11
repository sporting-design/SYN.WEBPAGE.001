#!/bin/bash

# Script to start Shopify dev server and show output

echo "🚀 Starting Shopify Development Server..."
echo "This will show all output including authentication and preview URL"
echo ""
echo "Press Ctrl+C to stop the server"
echo ""

cd /Users/user/Desktop/SYN.Webpage.code

# Start the dev server in foreground so you can see everything
npx @shopify/cli theme dev --store synapex.store


