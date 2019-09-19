# Разделить поезда на два типа: PassengerTrain и CargoTrain, задать им
# соответствующие типы и номер при создании объектов.
#
# Определить, какие методы во всех классах могут быть помещены в private и вынести
# их в такую секцию. В комментарии к методу обосновать, почему он был вынесен в private
#
# Вагоны теперь делятся на грузовые и пассажирские (отдельные классы).
# При создании пассажирские принимают кол-во мест в вагоне, грузовые - объем вагона.
# К пассажирскому поезду можно прицепить только пассажирские, к грузовому - грузовые.
#
# При добавлении вагона к поезду, объект вагона должен передаваться как аргумент
# метода и сохраняться во внутреннем массиве поезда, в отличие от предыдущего
# задания, где мы считали только кол-во вагонов. Параметр конструктора
# "кол-во вагонов" при этом можно удалить.
