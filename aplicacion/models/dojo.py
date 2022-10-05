from aplicacion.config.mysqlconnection import connectToMySQL

class Dojo:
    def __init__(self,data):
        # acá van todas las columnas de la tabla de workbench
        self.id = data['id']
        self.name = data['name']
        self.created_at = data['created_at']
        self.updated_at = data['updated_at']

    #METODO CREAR
    @classmethod
    def creardojo(cls,data):
        consulta = "INSERT INTO dojos (name) VALUES (%(name)s);"
        resultado = connectToMySQL("schema_dojos_y_ninjas").query_db(consulta,data)
        return resultado
    
    #METODO DE LECTURA
    @classmethod
    def todos_dojos(cls):
        consulta = "SELECT * FROM dojos"
        resultado = connectToMySQL ("schema_dojos_y_ninjas").query_db(consulta)
        dojos=[]
        #esto es para copnvertir ese diccionario en objeto. como es una lista que contiene VARIOS diccionarios.
        for diccionario in resultado:
            dojos.append(cls(diccionario))
        return dojos

    #Metodo de lectura de un solo dojo
    @classmethod
    def obtener_un_dojo(cls, data):
        consulta = "SELECT * FROM dojos WHERE id= %(id)s"
        resultado = connectToMySQL("schema_dojos_y_ninjas").query_db(consulta,data)
        #esto va a dar una lista CON UN SOLO DICCIONARIO, por eso, el indice 0 se puede convertir facilmente así en objeto. Arriba como era una lista de VARIOS diccionarios se hace un for.
        return cls(resultado[0])

    @classmethod
    def obtener_todos_ninjas_del_dojo(cls,data):
        consulta= """SELECT * FROM ninjas JOIN dojos  ON ninjas.dojo_id = dojos.id WHERE dojos.id = %(id)s; """
        resultado = connectToMySQL("schema_dojos_y_ninjas").query_db(consulta,data)
        return resultado
