import requests
import bs4
headers={
    'User-Agent':'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36 Edg/89.0.774.68'
}
res = requests.get("https://movie.douban.com/top250",headers=headers)
soup = bs4.BeautifulSoup(res.text,"html.parser")
targets = soup.find_all("div",class_="info")
# print(targets)
for each in targets:
    print(each.div.a.span.text)
    print(each.p.text)
    print()