#!/usr/bin/env bash
# Скачиваем uv
curl -LsSf https://astral.sh/uv/install.sh | sh

# Создаём виртуальное окружение
uv venv

# Активируем виртуальное окружение
source .venv/bin/activate

# Устанавливаем зависимости
make install && make collectstatic && make migrate