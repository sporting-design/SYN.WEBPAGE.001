#!/bin/bash

# Synapex Development Server Startup Script
# This script starts the Shopify theme development server

echo "🚀 Starting Synapex Development Server..."
echo ""
echo "This will:"
echo "  - Connect to your Shopify store (synapex.store)"
echo "  - Create a development theme"
echo "  - Start a local preview server"
echo "  - Watch for file changes and auto-sync"
echo ""
echo "Press Ctrl+C to stop the server"
echo ""

# Use npx to run Shopify CLI without global installation
npx --yes @shopify/cli theme dev --store synapex.store

