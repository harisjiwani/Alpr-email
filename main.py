from openalpr import openalpr_read_plate
from database import db_insert
import os
from datetime import datetime
import shutil

#from readfiles import read_image_path

a = 0
files = []

def read_image_path(path,extension):
    #files = []
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
    

path = "C:/xampp/htdocs/openalpr/LicPlateImages"
extension = '.jpg'
        
a = 0
images_in_folder = 0
#print(images_in_folder)
images_in_folder = read_image_path(path,extension)
#print(images_in_folder)
    
while a<images_in_folder:
    #path = "C:/Users/admin/Desktop/openalpr/LicPlateImages/" + str(a) +".png"
    #print(path)
    #plate=openalpr_read_plate(path)
    img_path = files[a]
    #print(img_path)
    plate,make,color,type = openalpr_read_plate(img_path)
    print(plate,make,color,type)
    
    str = []
    str = img_path.split("LicPlateImages")
    #print(str)
    add = "processed/"

    if((plate != 'N/A') and (make != 'N/A') and (type != 'N/A') and (color != 'N/A')):
        move_to = str[0] + add + str[1]
        #print(move_to)
        shutil.move(img_path,move_to)
        print(datetime.now())
        date_time = datetime.now()
        # v=str(date_time.split())
        # print(v)        
        db_insert(date_time,plate,make,color,type,move_to)
    else:
        os.remove(img_path)
    a = a + 1    