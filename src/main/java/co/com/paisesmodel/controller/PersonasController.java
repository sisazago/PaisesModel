package co.com.paisesmodel.controller;
import co.com.paisesmodel.dominio.Personas;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/personases")
@Controller
@RooWebScaffold(path = "personases", formBackingObject = Personas.class)
public class PersonasController {
}
