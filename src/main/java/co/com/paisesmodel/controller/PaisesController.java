package co.com.paisesmodel.controller;
import co.com.paisesmodel.dominio.Paises;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/paiseses")
@Controller
@RooWebScaffold(path = "paiseses", formBackingObject = Paises.class)
public class PaisesController {
}
