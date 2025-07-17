#!/bin/bash
# tools/install_hook.sh - set post-commit hook to update placeholder automatically
HOOK=".git/hooks/post-commit"
mkdir -p "$(dirname "$HOOK")"
cat <<'EOL' > "$HOOK"
#!/bin/bash
bash tools/update_placeholder.sh
EOL
chmod +x "$HOOK"
echo "post-commit hook installed to $HOOK"
