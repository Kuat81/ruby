module Manufacturer
  attr_accessor :manufacturer
end


# 1. Задание
# Дополнить текущий проект по управлению станциями и поездами следующими
# возможностями
#
# Создать модуль, который позволит указывать название компании-производителя и
# получать его. Подключить модуль к классам Вагон и Поезд.
#
# Создать модуль InstanceCounter, содержащий следующие методы класса и
# инстанс-методы, которые подключаются автоматически при вызове include в классе:
#
# Методы класса:
# instances, который возвращает кол-во экземпляров данного класса
#
# Инстанс-методы:
# register_instance, который увеличивает счетчик кол-ва экземпляров класса и
# который можно вызвать из конструктора. При этом данный метод не должен быть
# публичным.
