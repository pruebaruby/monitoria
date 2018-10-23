class LoginMonitoriasController < ApplicationController

    def login
        # estudiante = Estudiante.create(nombre: "sneider sanchez", codigo: 625682, password: "123")
        # estudiante.save

        @nombre = '' 
        @carrera = ''
        @promedio = ''
        @matricula = ''
        @monitor = ''
        @monitorNo = false
        @materiaNoExiste = false
    end
    def verificarUsuario
        @codigo = params[:codigo]
        @password = params[:password]
        @estudiante =  Estudiante.where(codigo: @codigo)
        if (@estudiante[0].password.nil?)
            redirect_to :action => 'login'
        else
            if @estudiante[0].password == @password
                render "dashboard_estudiante/dashboard_estudiante", locals: { 
                    nombre: @estudiante[0].nombre, 
                    carrera: @estudiante[0].carrera,
                    promedio: @estudiante[0].promedio,
                    matricula: @estudiante[0].matricula,
                    monitor: @estudiante[0].monitor,
                    monitorNo: false,
                    materiaNoExiste: false,
                }
            else
                redirect_to :action => 'login'
            end 
        end
        # render plain: 
        # render "dashboard_estudiante/dashboard_estudiante"
    end
end
