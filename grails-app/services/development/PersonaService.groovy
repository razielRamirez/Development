package development

import grails.transaction.Transactional

@Transactional
class PersonaService {

    def utilService

    Persona guardarPersona(params){

    	Persona persona = new Persona(params)
    	persona.save(flush:true,failOnError:true)
    	persona
    }
    Persona consultarPersona(Long id){
    	Persona persona = Persona.get(id)
    	persona
    }
    Persona eliminarPersona(Long id){
        Persona persona = Persona.get(id)
        persona.delete();
    }
	List<Persona> listarPersona(params)
	{
		List<Persona> listaPersonas=Persona.list()
		println listaPersonas
		listaPersonas
	}

    Persona editarPersonaPersona(params,id){

        
        nombre =  params.nombre;
        nombre =  params.nombre;
        nombre =  params.nombre;

        Persona persona = new Persona(params)
        persona.update(flush:true)
        persona
    }


    Persona buscarPersona(String fechaNacimiento){
        Persona persona = Persona.get(fechaNacimiento)
        persona
    }


}



