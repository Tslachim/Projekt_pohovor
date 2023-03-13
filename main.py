from Tags import *

# Vypsání selectu
select = SelectTag(name= "Auto", id= "New_car_select_id", options= ("BMW", "Škoda", "Audi", "Hyundai"))
print(select)



# Vypsání Inputu a Zároveň Form
name = InputTag("jmeno")
surname = InputTag("prijmeni", )
email = InputTag("email")
send = InputTag("odeslat", type="button")

form = FormTag((name, surname, email, send), None, method="POST" ) 
print(form)

# Vypsání A
href = LinkTag(href= "www.olc.cz", text= "Zde je odkaz")
print(href)

# Vypsání Img
img = ImgTag(src= "images/pes.png", alt="Štěně", width= 100, height= 100)
print(img)

# Vypsání Div 
div = DivTag(div_class= "odstavec_5", content= (img, href))
print(div)