class DashboardEstudianteController < ApplicationController
    def dashboard_estudiante
        @nombre=''
        @carrera=''
        @promedio=0
        @matricula=0
        @monitor=false
        @materiaNoExiste=false
        @monitorNo=false
    end
    def inscribir_monitoria
        @codigoEstudiante = params[:codigoEstudiante]
        @codigoMateria = params[:codigo]
        @materia = Materia.where(codigo:@codigoMateria)
        @estudiante = Estudiante.where(codigo:@codigoEstudiante)
        # render plain: @materia.inspect
        if @estudiante[0] == false ||@estudiante[0] == nil || @materia[0] == false ||@materia[0] == nil
            render "dashboard_estudiante/dashboard_estudiante", locals: {
                nombre: @estudiante[0].nombre, 
                carrera: @estudiante[0].carrera,
                promedio: @estudiante[0].promedio,
                matricula: @estudiante[0].matricula,
                monitor: @estudiante[0].monitor,
                materiaNoExiste: true,
                monitorNo: false, 
            }
        else
            if @estudiante[0].monitor == false
                @estudiante[0].monitor = true
                @estudiante[0].matricula -= 500000
                @estudiante[0].save
                @materia[0].monitor = true
                @materia[0].save
                render "recibo/recibo", locals: { 
                    nombre: @estudiante[0].nombre, 
                    codigo: @estudiante[0].codigo,
                }
            else
                render "dashboard_estudiante/dashboard_estudiante", locals: { 
                    monitorNoCumple: true, 
                    nombre: @estudiante[0].nombre, 
                carrera: @estudiante[0].carrera,
                promedio: @estudiante[0].promedio,
                matricula: @estudiante[0].matricula,
                monitor: @estudiante[0].monitor,
                materiaNoExiste: false,
                monitorNo: true, 
                }
            end
        end
    end
    def usuario
        
    end
    
end
