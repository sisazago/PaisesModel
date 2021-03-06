// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package co.com.paisesmodel.services;

import co.com.paisesmodel.dominio.Paises;
import co.com.paisesmodel.services.PaisesServiceImpl;
import java.util.List;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect PaisesServiceImpl_Roo_Service {
    
    declare @type: PaisesServiceImpl: @Service;
    
    declare @type: PaisesServiceImpl: @Transactional;
    
    public long PaisesServiceImpl.countAllPaiseses() {
        return Paises.countPaiseses();
    }
    
    public void PaisesServiceImpl.deletePaises(Paises paises) {
        paises.remove();
    }
    
    public Paises PaisesServiceImpl.findPaises(Long id) {
        return Paises.findPaises(id);
    }
    
    public List<Paises> PaisesServiceImpl.findAllPaiseses() {
        return Paises.findAllPaiseses();
    }
    
    public List<Paises> PaisesServiceImpl.findPaisesEntries(int firstResult, int maxResults) {
        return Paises.findPaisesEntries(firstResult, maxResults);
    }
    
    public void PaisesServiceImpl.savePaises(Paises paises) {
        paises.persist();
    }
    
    public Paises PaisesServiceImpl.updatePaises(Paises paises) {
        return paises.merge();
    }
    
}
