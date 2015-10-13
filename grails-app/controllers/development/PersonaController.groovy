package development

 class PersonaController {

     def personaService

     def index() {
         List<Persona> persona = personaService.listarPersona(params)
         render(view: '/persona/inicio', model: [persona:persona])
     }
     def buscarPersona(String fechaNacimiento) {
     	 //render template:"lista" model:[lista:lista]
     }

     def guardarPersona() {
         Persona persona = personaService.guardarPersona(params)
         redirect(controller: "persona", action: "index")
     }
     def eliminarPersona(long id) {
         Persona persona = personaService.eliminarPersona(id)
         redirect(controller: "persona", action: "index")
     }

     def editarPersona(long id) {
         Persona persona = personaService.consultarPersona(id)
         render(view: '/persona/editar', model: [persona:persona])
     }
     def consultarPersona(Long id) {
         Persona persona = personaService.consultarPersona(id)
         render(view: '/persona/detalle', model: [persona:persona])  
     }


 }

