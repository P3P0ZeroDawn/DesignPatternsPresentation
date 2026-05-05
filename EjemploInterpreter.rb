class Estudiante
    def initialize(datos)
        @datos = datos
    end

    def get(clave)
        @datos[clave]
    end
end

class Expression
    def interpret(context)
        raise NotImplementedError
    end
end

class IgualExpression < Expression
    def initialize(clave, valor)
        @clave = clave
        @valor = valor
    end

    def interpret(context)
        context.get(@clave) == @valor
    end
end

class NotExpression < Expression
    def initialize(clave)
        @clave = clave
    end

    def interpret(context)
        !(context.get(@clave))
    end
end

class MayorOIgualExpression < Expression
    def initialize(clave, valor)
        @clave = clave
        @valor = valor
    end

    def interpret(context)
        context.get(@clave) >= @valor
    end
end

class AndExpression < Expression
    def initialize(expr1, expr2)
        @expr1 = expr1
        @expr2 = expr2
    end

    def interpret(context)
        @expr1.interpret(context) && @expr2.interpret(context)
    end
end

#Contexto 1
estudiante1 = Estudiante.new({
    porcientoAvanceCrediticio: 60,
    esRegular: true,
    inscritoEnServicioSocial: false,
})

# Regla 1: porcientoAvanceCrediticio >= 70 AND esRegular AND NOT inscritoEnServicioSocial

expr1 = AndExpression.new(
            AndExpression.new(
                MayorOIgualExpression.new(
                :porcientoAvanceCrediticio, 70),
                IgualExpression.new(:esRegular, true)),
            NotExpression.new(:inscritoEnServicioSocial)
        )

puts "El estudiante cumple con la regla: " + expr1.interpret(estudiante1).to_s           