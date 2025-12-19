#!/bin/bash

# Mintlify Documentation Deployment Script
# Usage: ./deploy.sh [local|production]

set -e

MODE=${1:-local}

echo "🚀 Mintlify Documentation Deployment"
echo "======================================"
echo ""

cd "$(dirname "$0")"

if [ "$MODE" = "local" ]; then
    echo "📍 Starting local development server..."
    echo ""
    echo "The documentation will be available at: http://localhost:3000"
    echo "Press Ctrl+C to stop the server"
    echo ""
    
    # Check if mintlify is installed
    if ! command -v mintlify &> /dev/null; then
        echo "⚠️  Mintlify CLI not found. Installing..."
        npm install -g mintlify
    fi
    
    # Start dev server
    mintlify dev
    
elif [ "$MODE" = "production" ]; then
    echo "🌐 Deploying to Mintlify platform..."
    echo ""
    
    # Check if mintlify is installed
    if ! command -v mintlify &> /dev/null; then
        echo "❌ Mintlify CLI not found. Please install it first:"
        echo "   npm install -g mintlify"
        exit 1
    fi
    
    # Validate documentation
    echo "✅ Validating documentation structure..."
    if [ ! -f "mint.json" ]; then
        echo "❌ mint.json not found!"
        exit 1
    fi
    
    echo "✅ mint.json found"
    
    # Deploy
    echo "📤 Deploying to Mintlify..."
    mintlify deploy
    
    echo ""
    echo "✅ Deployment complete!"
    echo "🌐 Visit your Mintlify dashboard to view the deployed docs"
    
else
    echo "❌ Invalid mode: $MODE"
    echo "Usage: ./deploy.sh [local|production]"
    exit 1
fi
