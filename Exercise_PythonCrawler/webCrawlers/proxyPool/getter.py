from crawler import Crawler


class Getter():
    def __init__(self):
        self.crawler = Crawler()

    def run(self):
        print('获取器开始执行')
        for callback_label in range(self.crawler.__CrawlFuncCount__):
            callback = self.crawler.__CrawlFunc__[callback_label]
            # 获取代理
            all_ip = self.crawler.get_proxies(callback)


if __name__ == '__main__':
    get = Getter()
    get.run()
