#!/bin/bash

# Script to push to GitHub with proper authentication

echo "🚀 Pushing Synapex theme to GitHub..."
echo ""
echo "You'll be prompted for credentials:"
echo "  Username: sporting-design (or your GitHub username)"
echo "  Password: Use a Personal Access Token (NOT your GitHub password)"
echo ""
echo "Don't have a token? Get one here:"
echo "  https://github.com/settings/tokens"
echo "  → Generate new token (classic)"
echo "  → Select 'repo' scope"
echo "  → Copy the token and use it as your password"
echo ""
echo "Press Enter to continue..."
read

git push --set-upstream origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Successfully pushed to GitHub!"
    echo "   View your repo: https://github.com/sporting-design/SYN.WEBPAGE.001"
else
    echo ""
    echo "❌ Push failed. Make sure you:"
    echo "   1. Have a Personal Access Token ready"
    echo "   2. Use the token as your password (not your GitHub password)"
    echo "   3. Have access to the repository"
fi

