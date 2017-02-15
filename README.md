# Написать парсер для следующих сайтов:
# - 21vek.by
# - elmarket.by
# - imarket.by
# - techno.by
# 
# Разделы, по которым собирать инфу:
# 
# - Холодильники
# - Электрические чайники
# - Кофеварки
# - Пылесосы
# - Телевизоры
# - Видеокамеры
# - Фотоаппараты
# 
# Нужно собрать информацию с этих сайтов по средством парсинга страниц и отобразить на одной сранице для каждого раздела.
# Обязательная информация: производитель, модель, цена, источник(сайт). При _возможности_ отобразить в наличии или нет.
# Если один и тот же товар встречается на нескольких сайтах одновременно, выводить лучшую цену и все остальные доступные.
# Парсинг источников должен происходить по таймеру - раз в 24 часа.
# К дизайну требований нету, кроме того, чтобы оно было человечно ))
# 
# _Необязательно:_ возможность сортировки и поиска по товару.
# 
# Использовать rails 5, mysql…
# Не использовать любые готовые парсеры.
#
# 
# Время выполнения для кажого типа(только парсинг, без записи в БД)
#
# "56.483153032s vek: refrigerators DONE!"
# "4.346016213s elmarket: refrigerators DONE!"
# "63.590455012s imarket: refrigerators DONE!"
# "404.156686716s techno: refrigerators DONE!"
# "36.325112835s vek: teapots DONE!"
# "2.330431733s elmarket: teapots DONE!"
# "53.193275996s imarket: teapots DONE!"
# "133.952196282s techno: teapots DONE!"
# "17.450404115s vek: coffees DONE!"
# "0.63145375s elmarket: coffees DONE!"
# "16.091509912s imarket: coffees DONE!"
# "23.274025326s techno: coffees DONE!"
# "17.711075724s vek: vacuums DONE!"
# "1.416864812s elmarket: vacuums DONE!"
# "33.071651947s imarket: vacuums DONE!"
# "165.884871134s techno: vacuums DONE!"
# "36.436772034s vek: tvs DONE!"
# "1.32069397s elmarket: tvs DONE!"
# "46.144345608s imarket: tvs DONE!"
# "320.013932589s techno: tvs DONE!"
# "4.461823319s vek: videos DONE!"
# "0.289607152s elmarket: videos DONE!"
# "2.929201517s imarket: videos DONE!"
# "21.44978315s techno: videos DONE!"
# "12.253743551s vek: cameras DONE!"
# "0.212862492s elmarket: cameras DONE!"
# "12.454767619s imarket: cameras DONE!"
# "84.693168679s techno: cameras DONE!"
