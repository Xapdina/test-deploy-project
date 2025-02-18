#!/usr/bin/env bash
# Скачиваем uv
curl -LsSf https://astral.sh/uv/install.sh | sh

# Добавляем uv в PATH
export PATH="$HOME/.local/bin:$PATH"

# Проверяем, что uv установлен
which uv || echo "uv не найден в PATH"

# Создаём виртуальное окружение
uv venv

# Активируем виртуальное окружение
source .venv/bin/activate

# Устанавливаем зависимости
make install && make collectstatic && make migrate