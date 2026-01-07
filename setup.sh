#!/bin/bash

# Solazy Theme - Quick Setup Script
# This script helps you set up the theme repository and push to GitHub

echo "🎨 Solazy Theme Setup"
echo "===================="
echo ""

# Check if we're in the right directory
if [ ! -f "theme.json" ]; then
    echo "❌ Error: theme.json not found. Please run this script from the theme directory."
    exit 1
fi

# Initialize git if not already initialized
if [ ! -d ".git" ]; then
    echo "📦 Initializing Git repository..."
    git init
    echo ""
fi

# Create .gitignore
echo "📝 Creating .gitignore..."
cat > .gitignore << 'EOF'
.DS_Store
*.log
node_modules/
.env
EOF

# Add all files
echo "➕ Adding files to Git..."
git add .
echo ""

# Commit
echo "💾 Creating initial commit..."
git commit -m "Initial commit: Solazy-inspired minimalist Typlog theme"
echo ""

# Instructions for GitHub
echo "✅ Git repository initialized!"
echo ""
echo "📋 Next steps:"
echo ""
echo "1. Create a new PUBLIC repository on GitHub"
echo "   Visit: https://github.com/new"
echo ""
echo "2. Run these commands (replace YOUR_USERNAME and YOUR_REPO):"
echo ""
echo "   git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git"
echo "   git branch -M main"
echo "   git push -u origin main"
echo "   git tag 1.0.0"
echo "   git push origin 1.0.0"
echo ""
echo "3. In Typlog dashboard:"
echo "   - Go to Settings → Themes & Design"
echo "   - Click 'Change' button"
echo "   - Enter: YOUR_USERNAME/YOUR_REPO"
echo ""
echo "🎉 Your theme will be ready to use!"
