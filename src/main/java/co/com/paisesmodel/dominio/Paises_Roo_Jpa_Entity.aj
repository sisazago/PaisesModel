// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package co.com.paisesmodel.dominio;

import co.com.paisesmodel.dominio.Paises;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Version;

privileged aspect Paises_Roo_Jpa_Entity {
    
    declare @type: Paises: @Entity;
    
    declare @type: Paises: @Table(name = "paises");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long Paises.id;
    
    @Version
    @Column(name = "version")
    private Integer Paises.version;
    
    public Long Paises.getId() {
        return this.id;
    }
    
    public void Paises.setId(Long id) {
        this.id = id;
    }
    
    public Integer Paises.getVersion() {
        return this.version;
    }
    
    public void Paises.setVersion(Integer version) {
        this.version = version;
    }
    
}
