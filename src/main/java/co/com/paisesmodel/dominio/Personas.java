package co.com.paisesmodel.dominio;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooJpaActiveRecord(table = "personas")
@RooJson
public class Personas {

    /**
     */
    @NotNull
    private long codigoUsuario;

    /**
     */
    @NotNull
    @Size(max = 30)
    private String nombreUsuario;

    /**
     */
    @NotNull
    @Size(max = 20)
    private String passwordUsuario;
}
