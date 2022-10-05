from aplicacion import app
from aplicacion.models.dojo import Dojo
from flask import render_template,redirect, request

@app.route('/')
def inicio():
    return redirect('/dojos')

#Ruta de lectura
@app.route('/dojos')
def pagina_dojos():
    todos_dojos=Dojo.todos_dojos()
    return render_template("dojos.html", todos_dojos=todos_dojos)

#rutas de creacion
@app.route('/creardojo', methods=['POST'])
def creardojo():
    print(request.form, "que contiene el formulario")
    data={
        "name": request.form['dojo_name']
    }
    Dojo.creardojo(data)
    return redirect('/dojos')

@app.route('/dojos/<int:dojo_id>')
def mostrar_dojo_y_ninjas(dojo_id):
    data={"id": dojo_id}
    dojo = Dojo.obtener_un_dojo(data)
    ninjas_de_un_dojo = Dojo.obtener_todos_ninjas_del_dojo(data)

    return render_template("mostrar.html", dojo=dojo, ninjas_de_un_dojo=ninjas_de_un_dojo)
