package development

class Persona {

    String nombre
    String apellidoPaterno
    String apellidoMaterno
    String fechaNacimiento

    static constraints = {
        nombre nullable : false, black : false
        apellidoPaterno nullable : false
        apellidoMaterno nullable : true
        fechaNacimiento nullable : false
    }
}
