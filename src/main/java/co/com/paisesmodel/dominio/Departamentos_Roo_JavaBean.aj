// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package co.com.paisesmodel.dominio;

import co.com.paisesmodel.dominio.Ciudad;
import co.com.paisesmodel.dominio.Departamentos;
import java.util.Set;

privileged aspect Departamentos_Roo_JavaBean {
    
    public long Departamentos.getCodigoDepartamento() {
        return this.codigoDepartamento;
    }
    
    public void Departamentos.setCodigoDepartamento(long codigoDepartamento) {
        this.codigoDepartamento = codigoDepartamento;
    }
    
    public String Departamentos.getNombreDepartamento() {
        return this.nombreDepartamento;
    }
    
    public void Departamentos.setNombreDepartamento(String nombreDepartamento) {
        this.nombreDepartamento = nombreDepartamento;
    }
    
    public Set<Ciudad> Departamentos.getCiudades() {
        return this.ciudades;
    }
    
    public void Departamentos.setCiudades(Set<Ciudad> ciudades) {
        this.ciudades = ciudades;
    }
    
}
