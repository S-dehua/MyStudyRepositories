import wordcloud
file = open("word.txt", encoding="utf-8")
text = file.read()
stopwords={"次日","正是","曰","儒曰","帝曰","卓曰","允曰","肃曰","进曰","布曰","玄德曰","飞曰","操曰","陈留王曰","一日","且听下文分解"}
wc = wordcloud.WordCloud(font_path=r"D:\python\PythonPark-master\data\SIMYOU.TTF",stopwords=stopwords)
wc.generate(text)
image = wc.to_image()
image.show()
