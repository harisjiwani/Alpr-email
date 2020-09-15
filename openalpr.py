
#!/usr/bin/python

import requests
import base64
import json
import sys
	
def openalpr_read_plate(image_path):

    plate = "N/A"
    make = "N/A"
    color = "N/A"
    type = "N/A"
    
    if (image_path is None):
        print("Invalid image path: None")
        exit
		
    if (image_path == ""):
        print("Invalid image path: Empty")
        exit
    
    #print("Image path " + image_path)

    IMAGE_PATH = image_path 

    #SECRET_KEY = 'sk_8273e46a5c80033d585dd73c'
    SECRET_KEY = 'sk_9e0e935470a5dac1139d26e1'
 
    with open(IMAGE_PATH, 'rb') as image_file:
        img_base64 = base64.b64encode(image_file.read())

    url = 'https://api.openalpr.com/v2/recognize_bytes?recognize_vehicle=1&country=us&secret_key=%s' % (SECRET_KEY)
    r = requests.post(url, data = img_base64)

	#print(json.dumps(r.json(), indent=2))

    json_decoded_r = json.loads(json.dumps(r.json(), indent=2))
    
    #print(json_decoded_r["results"][0])
    #print(json_decoded_r["results"][0]['vehicle']['make'][0]['name'])
    #print(json_decoded_r["results"][0]['vehicle']['color'][0]['name'])
    #print(json_decoded_r["results"][0]['vehicle']['body_type'][0]['name'])
    try:
        #print("Recognised Plate: " + json_decoded_r["results"][0]['plate'])
        # Recognised plate number
        plate = json_decoded_r["results"][0]['plate']
        make = json_decoded_r["results"][0]['vehicle']['make'][0]['name']
        color = json_decoded_r["results"][0]['vehicle']['color'][0]['name']
        type = json_decoded_r["results"][0]['vehicle']['body_type'][0]['name']
    except:
        print("No plates detected")
    return [plate, make, color, type]
    
#plate,make,color,type = openalpr_read_plate("C:/Users/admin/Desktop/openalpr/LicPlateImages/1.png")
#print(plate,make,color,type)