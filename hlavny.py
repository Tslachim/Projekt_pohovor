from tridy import *

# Vypsání selectu
select = SelectTag(name= "Auto", id= "Nové", options= ("BMW", "Škoda", "Audi", "Hyundai"), selected_options="Škoda")
print(select)

# Vypsání Inputu a Zároveň Form
name = InputTag("jmeno")
surname = InputTag("prijmeni", )
email = InputTag("email", value= "@gmail.com")
send = InputTag("odeslat", type="button")

form = FormTag((name, surname, email, send), None, method="POST" ) 
print(form)

# Vypsání Div 
div = DivTag(div_class= "odstavec_5")
print(div)

# Vypsání A
a = ATag(href= "www.olc.cz", text= "Zde je odkaz")
print(a)

# Vypsání Img
img = ImgTag(src= "images/pes.png", alt="Hrající si Štěně", width= 100, height= 100)
print(img)
