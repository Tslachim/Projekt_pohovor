class SelectTag:
    def __init__(self, name= None, id= None, options= None, selected_options= None) -> None:
        self.name = name
        self.id = id 
        self.options = options
        self.selected_options = selected_options

    def __str__(self) -> str:
        if self.options != None:
            options_html = ""
            for option in self.options:
                if option == self.selected_options:
                    options_html += f"\n\t<option value='{option}' selected>{option}</option>"
                else:
                    selected = ""
                    options_html += f"\n\t<option value='{option}'>{option}</option>"
            for one_option in options_html:       
                if self.name != None and self.id == None:
                    return f"<select name='{self.name}'>{options_html}</select>"
                elif self.name == None and self.id != None:
                    return f"<select id='{self.id}'>{options_html}</select>"
                elif self.name == None and self.id == None:
                    return f"<select>{options_html}</select>"
                else:
                    return f"<select name='{self.name}' id='{self.id}'>{options_html}\n</select>"
        else: 
            if self.name != None and self.id == None:
                return f"<select name='{self.name}'></select>"
            elif self.name == None and self.id != None:
                return f"<select id='{self.id}'></select>"
            elif self.name == None and self.id == None:
                return f"<select></select>"
            else:
                return f"<select name='{self.name}' id='{self.id}'></select>"


class InputTag:
    def __init__(self, name ,value= None, id= None, type= "text"):
        self.type = type
        self.id = id
        self.value = value
        self.name = name

    def __str__(self) -> str:
        attr = f"type='{self.type}' name='{self.name}'"
        if self.value:
            attr += f" value={self.value}"
        if self.id:
            attr += f" id={self.id}"
        return f'<input {attr}>'



class DivTag:
    def __init__(self, div_class= None, id= None):
        self.div_class = div_class
        self.id = id

    def __str__(self) -> str:
        attr = ""
        if self.div_class:
            attr += f" class='{self.div_class}'"
        if self.id:
            attr += f" id={self.id}"
        return f"<div{attr}></div>"
# přideat cnontent?? podívat se ještě na to 
            


class ATag:
    def __init__(self, href, text= None) :
        self.href = href
        self.text = text

    def __str__(self) -> str:
        if self.text:
            return f"<a href='{self.href}'>{self.text}</a>"
        else:
            return f"<a href='{self.href}'></a>"



class ImgTag:
    def __init__(self, src, alt, width= None, height= None):
        self.src = src
        self.alt = alt
        self.width = width
        self.height = height

    def __str__(self) -> str:
        attr = ""
        if self.width:
            attr += f" width={self.width}"
        if self.height:
            attr += f" height={self.height}"
        return f"<img src='{self.src}' alt='{self.alt}'{attr}>"
       


class FormTag:
    def __init__(self, inputs=None, action=None, method="GET"):
        self.action = action 
        self.method = method
        self.inputs = inputs
        self.input_str = ""
        
    def __str__(self) -> str:
        if self.inputs:
            for one_input in self.inputs:
                self.input_str += f"\n\t{one_input}"
        attrs = ''
        if self.action:
            attrs += f" action='{self.action}'"
        attrs += f" method='{self.method}'"

        return f'<form{attrs}>{self.input_str}\n</form>'



