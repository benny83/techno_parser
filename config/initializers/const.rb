RU_REGEX = /^[а-яА-ЯёЁ]+$/

# 21vek.by
VEK_SITE = '21vek.by'.freeze
VEK_URL = 'https://www.21vek.by/refrigerators/page:'.freeze
VEK_GENERAL_CLASS = '.g-item-data'.freeze
VEK_PAGE_CLASS = '.cr-paging_link'.freeze
VEK_PRICE_CLASS = 'data-price'.freeze
VEK_MODEL_CLASS = 'data-name'.freeze

# elmarket.by
ELMARKET_SITE = 'elmarket.by'.freeze
ELMARKET_URL = 'https://www.elmarket.by/catalog/holodilniki/?PAGEN_1='.freeze
ELMARKET_GENERAL_CLASS = '.wrap'.freeze
ELMARKET_PAGE_CLASS = '.pager a'.freeze
ELMARKET_PRICE_CLASS = '.price-byn'.freeze
ELMARKET_MODEL_CLASS = '.title-cat'.freeze

# imarket.by
IMARKET_SITE = 'imarket.by'.freeze
IMARKET_URL = 'https://imarket.by/catalog/kholodilniki/?filter[]=page-'.freeze
IMARKET_GENERAL_CLASS = '.goods-item'.freeze
IMARKET_PAGE_CLASS = '.catalog_nav'.freeze
IMARKET_MODEL_CLASS = '.item-title'.freeze
IMARKET_PRICE_CLASS = '.price'.freeze

# techno.by
TECHNO_SITE = 'techno.by'.freeze
TECHNO_URL = 'http://techno.by/refrigerators-freezers/#parents=627&pages='.freeze
TECHNO_PAGE_CLASS = '.tb__catalog__pag__item'.freeze
TECHNO_GENERAL_CLASS = '.catProdItem'.freeze
TECHNO_MODEL_CLASS = '.catProdItem-name-link-brand'.freeze
TECHNO_PRICE_CLASS = '.catProdItem-price-cur-tx-one'.freeze
