package co.com.paisesmodel.dominio;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(table = "ciudades")
@RooJson
public class Ciudad {

    /**
     */
    @NotNull
    private long codigoCiudad;

    /**
     */
    @NotNull
    @Size(max = 50)
    private String nombreCiudad;
}
