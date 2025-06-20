#!/bin/bash

echo "Starting trino-entrypoint.sh"

echo "Listing files in /tmp/trino-config:"
ls -la /tmp/trino-config

echo "Listing files in /etc/trino before copy:"
ls -la /etc/trino

# Копируем все файлы и папки с перезаписью
cp -rf /tmp/trino-config/* /etc/trino/

echo "Listing files in /etc/trino after copy:"
ls -la /etc/trino

echo "Starting trino-entrypoint-catalog.sh"

echo "Listing files in /tmp/trino-catalog:"
ls -la /tmp/trino-catalog

echo "Listing files in /etc/trino before copy:"
ls -la /etc/trino/catalog

# Копируем все файлы и папки с перезаписью
cp -rf /tmp/trino-catalog/* /etc/trino/catalog

echo "Listing files in /etc/trino after copy:"
ls -la /etc/trino/catalog

# Запускаем Trino
echo "Launching Trino..."
exec /usr/lib/trino/bin/run-trino
