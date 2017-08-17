DATE=`date +%Y-%m-%d`

rm -rf $DATE

mkdir -p $DATE

scrapy crawl funda_spider -a place=haarlem -o $DATE/for_sale.json
scrapy crawl funda_spider_sold -a place=haarlem -o $DATE/for_sale.json

