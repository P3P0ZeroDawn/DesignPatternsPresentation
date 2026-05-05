#Clase state
class EstadoEstudiante
    def seleccionar_proyecto(estudiante, proyecto)
        puts "El estudiante #{estudiante.nombre} en estado #{estudiante.estado.class.name} no tiene permitido realizar esta accion"  
    end

    def entregar_reporte(estudiante, reporte)
        puts "El estudiante #{estudiante.nombre} en estado #{estudiante.estado.class.name} no tiene permitido realizar esta accion"   
    end

    def solicitar_baja(estudiante)
        puts "El estudiante #{estudiante.nombre} se ha dado de baja"
        estudiante.transicionar_a(EstadoBaja.new)
    end

    def solicitar_inscripcion(estudiante)
        puts "El estudiante #{estudiante.nombre} ya esta inscrito en la materia de Practicas profesionales"  
    end
end

#Clases ConcreteState
class EstadoAspirante < EstadoEstudiante
    def seleccionar_proyecto(estudiante, proyecto)
        puts "El estudiante #{estudiante.nombre} selecciono el proyecto #{proyecto}"
        estudiante.transicionar_a(EstadoPracticante.new)
    end
end

class EstadoPracticante < EstadoEstudiante
    def entregar_reporte(estudiante, reporte)
        puts "El estudiante #{estudiante.nombre} entrego el reporte #{reporte}"
        estudiante.transicionar_a(EstadoAprobado.new)
    end  
end

class EstadoBaja < EstadoEstudiante
    def solicitar_inscripcion(estudiante)
        puts "El estudiante #{estudiante.nombre} se ha inscrito a la materia de Practicas profesionales"
        estudiante.transicionar_a(EstadoAspirante.new)  
    end  
end

class EstadoAprobado < EstadoEstudiante
    def solicitar_inscripcion(estudiante)
        puts "El estudiante #{estudiante.nombre} ya aprobo la materia, no puede volver a inscribirse"  
    end 

    def solicitar_baja(estudiante)
        puts "El estudiante #{estudiante.nombre} ya aprobo la materia, no puede solicitar la baja"
    end
end

#Clase contexto
class Estudiante 
    attr_reader :nombre, :estado
    
    def initialize(nombre)
        @nombre = nombre
        @estado = EstadoAspirante.new
        puts "El estudiante #{nombre} ha sido registrado, como aspirante"  
    end

    def transicionar_a(nuevo_estado)
        puts "El estudiante #{nombre} ha cambiado #{nuevo_estado.class.name}"
        puts ""
        @estado = nuevo_estado  
    end

    def seleccionar_proyecto(proyecto)
        @estado.seleccionar_proyecto(self, proyecto)  
    end

    def entregar_reporte(reporte)
        @estado.entregar_reporte(self, reporte)  
    end

    def solicitar_baja()
        @estado.solicitar_baja(self)  
    end

    def solicitar_inscripcion()
        @estado.solicitar_inscripcion(self)  
    end
end

if __FILE__ == $0
    estudiante = Estudiante.new("Alberto")

    estudiante.seleccionar_proyecto("Coordinación medica");
    estudiante.solicitar_baja
    estudiante.solicitar_inscripcion
    estudiante.seleccionar_proyecto("Coordinación medica");
    estudiante.entregar_reporte("Reporte final");
    #No puede solicitar la baja en el estado Aprobado
    estudiante.solicitar_baja
end