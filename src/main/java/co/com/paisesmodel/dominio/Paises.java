package co.com.paisesmodel.dominio;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(table = "paises")
@RooJson
public class Paises {

    /**
     */
    @NotNull
    private long codigoPais;

    /**
     */
    @NotNull
    @Size(max = 50)
    private String nombrePais;

    @OneToMany
    @JoinTable(name = "paises_departamentos")
    private Set<Departamentos> departamentos = new HashSet<Departamentos>();

    @OneToMany
    @JoinTable(name = "paises_ciudades")
    private Set<Ciudad> ciudades = new HashSet<Ciudad>();
}
