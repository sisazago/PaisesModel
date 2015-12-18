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
@RooJpaActiveRecord(table = "departamentos")
@RooJson
public class Departamentos {

    /**
     */
    @NotNull
    private long codigoDepartamento;

    /**
     */
    @NotNull
    @Size(max = 50)
    private String nombreDepartamento;

    @OneToMany
    @JoinTable(name = "departamentos_ciudades")
    private Set<Ciudad> ciudades = new HashSet<Ciudad>();
}
