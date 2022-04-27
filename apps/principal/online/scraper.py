import requests
from bs4 import BeautifulSoup
 
headers = {"User-Agent" : "Mozilla/5.0 (Windows NT 6.1; Win64; x64; rv:97.0) Gecko/20100101 Firefox/97.0"}
 
def rastrear_precio(URL):
    
    page = requests.get(URL, headers=headers)
    soup = BeautifulSoup(page.content, 'html.parser')
    precio2 = True

    item = soup.find("span", attrs={"class": "a-price a-text-price a-size-medium apexPriceToPay"})
    if item:
        precio = item.find("span", attrs={"class": "a-offscreen"})
        if precio:
            precio_value = precio.get_text().replace("₹","").replace("$","").replace(",","")
            precio_string = precio_value.strip()
            precio2 = False
    if precio2:
        item = soup.find("div", attrs={"id": "olp_feature_div"})
        if item:
            item_link = item.find("span", attrs={"a": "a-link-normal"})
            print(item_link)
            if item_link:
                precio = item_link.find("span", attrs={"class": "a-size-base a-color-price"})
                print(precio)
                if precio:
                    precio_value = precio.get_text().replace("₹","").replace("$","").replace(",","")
                    precio_string = precio_value.strip()
                else:
                    precio_string = "0"
            else:
                precio_string = "0"
        else:
            precio_string = "0"

    clasificacion = soup.find("span", attrs={"id": "acrPopover"})
    if clasificacion:
        clasificacion_string = clasificacion.get('title')[0:3]
    else:
        clasificacion_string = "0"
        
    print("Precio2:",precio2,"; product precio = ", precio_string, "; product clasificacion = ", clasificacion_string)
    return precio_string, clasificacion_string