import base64


IMAGE_PATH = 'C:/Users/hp/Desktop/openalpr/processed/1.png'

with open(IMAGE_PATH, 'rb') as image_file:
        img_base64 = base64.b64encode(image_file.read())

        print (img_base64)