:: Получаем текущую директорию
cd /d %~dp0
cd ..
set root=%CD%
:: Название виртуального окружения
set env_name=venv
:: Создание виртуального окружения
python -m venv %env_name%
:: Обновление pip
"%root%\%env_name%\Scripts\python.exe" -m pip install --upgrade pip
:: Установка зависимостей
"%root%\%env_name%\Scripts\pip.exe" install -r "requirements.txt"