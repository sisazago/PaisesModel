// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package co.com.paisesmodel.dominio;

import co.com.paisesmodel.dominio.Personas;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Version;

privileged aspect Personas_Roo_Jpa_Entity {
    
    declare @type: Personas: @Entity;
    
    declare @type: Personas: @Table(name = "personas");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Personas.id;
    
    @Version
    @Column(name = "version")
    private Integer Personas.version;
    
    public Long Personas.getId() {
        return this.id;
    }
    
    public void Personas.setId(Long id) {
        this.id = id;
    }
    
    public Integer Personas.getVersion() {
        return this.version;
    }
    
    public void Personas.setVersion(Integer version) {
        this.version = version;
    }
    
}
