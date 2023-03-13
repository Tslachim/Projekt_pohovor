class SelectTag:
    def __init__(self, name= None, id= None, options= None):
        self.name = name
        self.id = id 
        self.options = options

    def __str__(self) -> str:
        options_html = ""
        if self.options:
            for option in self.options:
                    options_html += f"\n\t<option value='{option}'>{option}</option>"
            options_html += "\n"
            
    
        if self.name != None and self.id == None:
            return f"<select name='{self.name}'>{options_html}</select>"
        elif self.name == None and self.id != None:
            return f"<select id='{self.id}'>{options_html}</select>"
        elif self.name == None and self.id == None:
            return f"<select>{options_html}</select>"
        else:
            return f"<select name='{self.name}' id='{self.id}'>{options_html}</select>"


class InputTag:
    def __init__(self, name , id= None, type= "text"):
        self.type = type
        self.id = id
        self.name = name

    def __str__(self) -> str:
        attr = f"type='{self.type}' name='{self.name}'"
        if self.id:
            attr += f" id={self.id}"
        return f'<input {attr}>'

class DivTag:
    def __init__(self, div_class= None, id= None, content= None):
        self.div_class = div_class
        self.id = id
        self.content = content

    def __str__(self) -> str:
        attr = ""
        if self.div_class:
            attr += f" class='{self.div_class}'"
        if self.id:
            attr += f" id={self.id}"
       
        return f"<div{attr}>\n{self._build_content( self.content)}</div>"

    def _build_content(self, content):
        if content:
            return "\n".join("\t" + str(item) for item in content) + "\n"
        else:
            return "" 

            
class LinkTag:
    def __init__(self, href, text) :
        self.href = href
        self.text = text

    def __str__(self) -> str:
        return f"<a href='{self.href}'>{self.text}</a>"

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