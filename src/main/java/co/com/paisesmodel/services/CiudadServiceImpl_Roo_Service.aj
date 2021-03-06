// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package co.com.paisesmodel.services;

import co.com.paisesmodel.dominio.Ciudad;
import co.com.paisesmodel.services.CiudadServiceImpl;
import java.util.List;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect CiudadServiceImpl_Roo_Service {
    
    declare @type: CiudadServiceImpl: @Service;
    
    declare @type: CiudadServiceImpl: @Transactional;
    
    public long CiudadServiceImpl.countAllCiudads() {
        return Ciudad.countCiudads();
    }
    
    public void CiudadServiceImpl.deleteCiudad(Ciudad ciudad) {
        ciudad.remove();
    }
    
    public Ciudad CiudadServiceImpl.findCiudad(Long id) {
        return Ciudad.findCiudad(id);
    }
    
    public List<Ciudad> CiudadServiceImpl.findAllCiudads() {
        return Ciudad.findAllCiudads();
    }
    
    public List<Ciudad> CiudadServiceImpl.findCiudadEntries(int firstResult, int maxResults) {
        return Ciudad.findCiudadEntries(firstResult, maxResults);
    }
    
    public void CiudadServiceImpl.saveCiudad(Ciudad ciudad) {
        ciudad.persist();
    }
    
    public Ciudad CiudadServiceImpl.updateCiudad(Ciudad ciudad) {
        return ciudad.merge();
    }
    
}
