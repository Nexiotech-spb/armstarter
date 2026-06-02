#!/bin/bash
# Двойной клик по этому файлу запускает локальный сервер и открывает тренажёр в браузере.
# localhost — защищённый контекст, поэтому камера Mac работает без хостинга.
cd "$(dirname "$0")" || exit 1
PORT=8123
# Открыть браузер чуть позже, когда сервер поднимется
( sleep 1; open "http://localhost:$PORT/index.html" ) &
echo "ArmStarter запущен на http://localhost:$PORT/  (Ctrl+C — остановить)"
python3 -m http.server "$PORT"
