#!/bin/bash

# Define repositories
GEMINI_REPO="https://github.com/google-gemini/gemini-cli.git"
CLAUDE_REPO="https://github.com/anthropics/claude-code.git"

# Define target directories
GEMINI_DIR="gemini-cli"
CLAUDE_DIR="claude-code"

echo "Checking for existing tools..."

# Install Gemini CLI
if [ -d "$GEMINI_DIR" ]; then
    echo "✅ $GEMINI_DIR already exists."
else
    echo "⬇️ Cloning Gemini CLI..."
    git clone "$GEMINI_REPO" "$GEMINI_DIR"
    echo "✅ Gemini CLI cloned."
fi

# Install Claude Code
if [ -d "$CLAUDE_DIR" ]; then
    echo "✅ $CLAUDE_DIR already exists."
else
    echo "⬇️ Cloning Claude Code..."
    git clone "$CLAUDE_REPO" "$CLAUDE_DIR"
    echo "✅ Claude Code cloned."
fi

echo ""
echo "🎉 Installation (Cloning) Complete!"
echo "To use these in your dev container, you may need to install their dependencies."
echo "For example:"
echo "  cd $GEMINI_DIR && pip install ."
echo "  cd ../$CLAUDE_DIR && npm install"
