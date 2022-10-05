from aplicacion.config.mysqlconnection import connectToMySQL

class Ninja:
    def __init__(self,data):
        self.id = data['id']
        self.first_name = data['first_name']
        self.last_name = data['last_name']
        self.age = data['age']
        self.dojo_id= data['dojo_id']
        self.created_at = data['created_at']
        self.updated_at = data['updated_at']

    @classmethod
    def crearninja(cls,data):
        consulta = """INSERT INTO ninjas (first_name, last_name, age, dojo_id) VALUES (%(first_name)s, %(last_name)s, %(age)s, %(dojo)s);"""
        resultado = connectToMySQL("schema_dojos_y_ninjas").query_db(consulta,data)
        return resultado

    @classmethod
    def obtener_un_ninja(cls,data):
        consulta = "SELECT * FROM ninjas WHERE id= %(id)s"
        resultado = connectToMySQL("schema_dojos_y_ninjas").query_db(consulta,data)
        #esto va a dar una lista CON UN SOLO DICCIONARIO, por eso, el indice 0 se puede convertir facilmente así en objeto. Arriba como era una lista de VARIOS diccionarios se hace un for.
        return cls(resultado[0])

