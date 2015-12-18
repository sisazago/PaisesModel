package co.com.paisesmodel.controller;
import co.com.paisesmodel.dominio.Departamentos;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/departamentoses")
@Controller
@RooWebScaffold(path = "departamentoses", formBackingObject = Departamentos.class)
public class DepartamentosController {
}
