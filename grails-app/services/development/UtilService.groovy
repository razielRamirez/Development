package development

import grails.transaction.Transactional

@Transactional
class UtilService {

    def calcularEdad(Date date) {
    	Integer edad = new Date().year - date.year
    	edad
    }
}
