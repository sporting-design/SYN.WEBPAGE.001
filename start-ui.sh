#!/bin/bash

echo "🚀 Starting Synapex UI Development Server..."
echo ""
echo "This will:"
echo "  1. Connect to your Shopify store"
echo "  2. Provide a preview URL"
echo "  3. Show you the UI at http://127.0.0.1:9292"
echo ""

cd /Users/user/Desktop/SYN.Webpage.code

# Kill any existing server
pkill -f "shopify.*theme dev" 2>/dev/null

# Start fresh
echo "Starting server..."
npx @shopify/cli theme dev

echo ""
echo "Server stopped."


