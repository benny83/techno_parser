# general constants
RU_REGEX = /[а-яА-ЯёЁ\(\)\-]/.freeze
SOURCE_KEYS = %w(site search_class price_class model_class).freeze
PRODUCT_TYPES = %w(refrigerator teapot coffee vacuum tv video camera).freeze
SOURCES = %w(vek elmarket imarket techno).freeze

# 21vek.by
VEK_SITE = '21vek.by'.freeze
VEK_PAGE_INDEX = -2.freeze
VEK_SEARCH_CLASS = '.g-item-data'.freeze
VEK_PAGE_CLASS = '.cr-paging_link'.freeze
VEK_PRICE_CLASS = 'data-price'.freeze
VEK_MODEL_CLASS = 'data-name'.freeze

VEK_REFRIGERATOR_URL = 'https://www.21vek.by/refrigerators/page:'.freeze
VEK_TEAPOT_URL = 'https://www.21vek.by/teapots/19266/page:'.freeze
VEK_COFFEE_URL = 'https://www.21vek.by/coffee_machines/page:'.freeze
VEK_VACUUM_URL = 'https://www.21vek.by/vacuum/page:'.freeze
VEK_TV_URL = 'https://www.21vek.by/tv/page:'.freeze
VEK_VIDEO_URL = 'https://www.21vek.by/video_cameras/page:'.freeze
VEK_CAMERA_URL = 'https://www.21vek.by/cameras/page:'.freeze

# elmarket.by
ELMARKET_SITE = 'elmarket.by'.freeze
ELMARKET_PAGE_INDEX = -2.freeze
ELMARKET_SEARCH_CLASS = '.wrap'.freeze
ELMARKET_PAGE_CLASS = '.pager a'.freeze
ELMARKET_PRICE_CLASS = '.price-byn'.freeze
ELMARKET_MODEL_CLASS = '.title-cat'.freeze

ELMARKET_REFRIGERATOR_URL = 'https://www.elmarket.by/catalog/holodilniki/?PAGEN_1='.freeze
ELMARKET_TEAPOT_URL = 'https://www.elmarket.by/catalog/elektricheskie_chainiki/?PAGEN_1='.freeze
ELMARKET_COFFEE_URL = 'https://www.elmarket.by/catalog/kofevarki_i_kofemashiny/?PAGEN_1='.freeze
ELMARKET_VACUUM_URL = 'https://www.elmarket.by/catalog/pylesosy/?PAGEN_1='.freeze
ELMARKET_TV_URL = 'https://www.elmarket.by/catalog/televizory/?PAGEN_1='.freeze
ELMARKET_VIDEO_URL = 'https://www.elmarket.by/catalog/videokamery/?PAGEN_1='.freeze
ELMARKET_CAMERA_URL = 'https://www.elmarket.by/catalog/cifrovye_fotokamery/?PAGEN_1='.freeze

# imarket.by
IMARKET_SITE = 'imarket.by'.freeze
IMARKET_PAGE_INDEX = 0.freeze
IMARKET_SEARCH_CLASS = '.goods-item'.freeze
IMARKET_PAGE_CLASS = '.catalog_nav'.freeze
IMARKET_MODEL_CLASS = '.item-title'.freeze
IMARKET_PRICE_CLASS = '.price'.freeze

IMARKET_REFRIGERATOR_URL = 'https://imarket.by/catalog/kholodilniki/?filter[]=page-'.freeze
IMARKET_TEAPOT_URL = 'https://imarket.by/catalog/chayniki-i-termopoty/?filter[]=page-'.freeze
IMARKET_COFFEE_URL = 'https://imarket.by/catalog/kofevarki-i-kofemashiny/?filter[]=page-'.freeze
IMARKET_VACUUM_URL = 'https://imarket.by/catalog/pylesosy/?filter[]=page-'.freeze
IMARKET_TV_URL = 'https://imarket.by/catalog/televizory/?filter[]=page-'.freeze
IMARKET_VIDEO_URL = 'https://imarket.by/catalog/videokamery/?filter[]=page-'.freeze
IMARKET_CAMERA_URL = 'https://imarket.by/catalog/fotoapparaty/?filter[]=page-'.freeze

# techno.by
TECHNO_SITE = 'techno.by'.freeze
TECHNO_PAGE_INDEX = -1.freeze
TECHNO_PAGE_CLASS = '.tb__catalog__pag__item'.freeze
TECHNO_SEARCH_CLASS = '.catProdItem'.freeze
TECHNO_MODEL_CLASS = '.catProdItem-name-link-brand'.freeze
TECHNO_PRICE_CLASS = '.catProdItem-price-cur-tx-one'.freeze

TECHNO_REFRIGERATOR_URL = 'http://techno.by/api/catalog/filter?parents=627&pages='.freeze
TECHNO_TEAPOT_URL = 'http://techno.by/api/catalog/filter?parents=634&pages='.freeze
TECHNO_COFFEE_URL = 'http://techno.by/api/catalog/filter?parents=639&pages='.freeze
TECHNO_VACUUM_URL = 'http://techno.by/api/catalog/filter?parents=620&pages='.freeze
TECHNO_TV_URL = 'http://techno.by/api/catalog/filter?parents=603&pages='.freeze
TECHNO_VIDEO_URL = 'http://techno.by/api/catalog/filter?parents=693&pages='.freeze
TECHNO_CAMERA_URL = 'http://techno.by/api/catalog/filter?parents=692&pages='.freeze

TECHNO_REFRIGERATOR_URL_1 = 'http://techno.by/refrigerators-freezers/#parents=627&pages=1'.freeze
TECHNO_TEAPOT_URL_1 = 'http://techno.by/electric-kettles/#parents=634&pages=1'.freeze
TECHNO_COFFEE_URL_1 = 'http://techno.by/coffee-makers/#parents=639&pages=1'.freeze
TECHNO_VACUUM_URL_1 = 'http://techno.by/vacuum-cleaners/#parents=620&pages=1'.freeze
TECHNO_TV_URL_1 = 'http://techno.by/tvs/#parents=603&pages=1'.freeze
TECHNO_VIDEO_URL_1 = 'http://techno.by/tvs/#parents=693&pages=1'.freeze
TECHNO_CAMERA_URL_1 = 'http://techno.by/foto/#parents=692&pages=1'.freeze
