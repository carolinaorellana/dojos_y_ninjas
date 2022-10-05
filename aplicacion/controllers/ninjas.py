from aplicacion import app
from aplicacion.models.dojo import Dojo
from aplicacion.models.ninja import Ninja
from flask import render_template,redirect, request

@app.route('/ninjas')
def pagina_ninja():
    todos_dojos=Dojo.todos_dojos()
    return render_template("ninjas.html", todos_dojos=todos_dojos)

@app.route('/crearninja', methods=['POST'])
def crearninja():
    print(request.form, "que contiene el formulario")
    #este esta hecho solo poniendo como data el formulario(aca debes tener cuidado con los nombres del formulario que se pasan a classmethod especifica). la otra opcion es teniendo un diccionario
    id_ninja=Ninja.crearninja(request.form)
    data={
        "id":id_ninja
    }
    #esto es para poder redirigir la pagina de return
    un_ninja=Ninja.obtener_un_ninja(data)
    print(un_ninja, "que contiene la variable un ninja" )
    return redirect(f"/dojos/{un_ninja.dojo_id}")