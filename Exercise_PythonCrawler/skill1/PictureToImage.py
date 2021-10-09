from PIL import Image
img = Image.open("芸草2.jpg")
out = img.convert("L")

# out.show()
# print(out.size)

width,height = out.size
# 缩放
out = out.resize((int(width * 0.3), int(height * 0.3)))
width,height = out.size

# print(out.size)
# print(out.getpixel((100,100)))

asciis = "燚靐焱炏雷火十一、 "
texts = ""
for row in range(height):
    for col in range(width):
        gray = out.getpixel((col, row))
        texts += asciis[int(gray / 255 * 9)]
    texts += "\n"
with open("D:/OneDrive/桌面/pictureToimage2.txt","w") as file:
    file.write(texts)