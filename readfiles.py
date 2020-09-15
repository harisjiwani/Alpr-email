
'''
path = "C:/Users/admin/Desktop/openalpr/LicPlateImages/2.png"
print(path)
str = []
str = path.split("LicPlateImages/")
print(path.split("LicPlateImages/"))
print(files[0])
print(files[1])
str = "processed/"

str2 = files[0] + str + files[1]

print(str2)
'''
import os

def read_image_path(path,extension):
    files = []
    count = 0
    # r=root, d=directories, f = files
    for r, d, f in os.walk(path):
        for file in f:
            if extension in file:
                files.append(os.path.join(r, file))

    for f in files:
        #print(f)
        count = count + 1
    
    return count
    
path = "C:/Users/admin/Desktop/openalpr/LicPlateImages"
extension = '.png'

images_in_folder = read_image_path(path,extension)

print(images_in_folder)