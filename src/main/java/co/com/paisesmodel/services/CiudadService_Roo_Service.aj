// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package co.com.paisesmodel.services;

import co.com.paisesmodel.dominio.Ciudad;
import co.com.paisesmodel.services.CiudadService;
import java.util.List;

privileged aspect CiudadService_Roo_Service {
    
    public abstract long CiudadService.countAllCiudads();    
    public abstract void CiudadService.deleteCiudad(Ciudad ciudad);    
    public abstract Ciudad CiudadService.findCiudad(Long id);    
    public abstract List<Ciudad> CiudadService.findAllCiudads();    
    public abstract List<Ciudad> CiudadService.findCiudadEntries(int firstResult, int maxResults);    
    public abstract void CiudadService.saveCiudad(Ciudad ciudad);    
    public abstract Ciudad CiudadService.updateCiudad(Ciudad ciudad);    
}
