#!/bin/bash
# tools/node_version.sh - zeigt die installierte Node.js Version an

if command -v node >/dev/null 2>&1; then
  echo "Installierte Node-Version:"
  node --version
else
  echo "Node.js ist nicht installiert."
fi
