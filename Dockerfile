# Используем базовый образ Ubuntu
FROM ubuntu:latest

# Обновляем пакетный индекс и устанавливаем Ansible
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    apt-add-repository --yes --update ppa:ansible/ansible && \
    apt-get install -y ansible

# Устанавливаем рабочий каталог
WORKDIR /ansible

# Копируем локальные файлы в контейнер
COPY . /ansible
