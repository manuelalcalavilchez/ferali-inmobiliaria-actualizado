#!/bin/bash

PROJECT_PATH="/etc/easypanel/projects/datos/web/code"
BACKUP_DIR="/etc/easypanel/projects/datos/web/backups"
TIMESTAMP=$(date +"%Y%m%d-%H%M%S")
BACKUP_FILE="$BACKUP_DIR/code-backup-$TIMESTAMP.tar.gz"

mkdir -p "$BACKUP_DIR"

if [ -d "$PROJECT_PATH" ]; then
  tar -czf "$BACKUP_FILE" -C "$PROJECT_PATH" .
  echo "✅ Backup creado: $BACKUP_FILE"
else
  echo "❌ No se encontró la carpeta $PROJECT_PATH"
fi
