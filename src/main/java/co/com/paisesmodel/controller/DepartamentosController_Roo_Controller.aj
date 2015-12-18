// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package co.com.paisesmodel.controller;

import co.com.paisesmodel.controller.DepartamentosController;
import co.com.paisesmodel.dominio.Departamentos;
import co.com.paisesmodel.services.CiudadService;
import co.com.paisesmodel.services.DepartamentosService;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect DepartamentosController_Roo_Controller {
    
    @Autowired
    DepartamentosService DepartamentosController.departamentosService;
    
    @Autowired
    CiudadService DepartamentosController.ciudadService;
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String DepartamentosController.create(@Valid Departamentos departamentos, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, departamentos);
            return "departamentoses/create";
        }
        uiModel.asMap().clear();
        departamentosService.saveDepartamentos(departamentos);
        return "redirect:/departamentoses/" + encodeUrlPathSegment(departamentos.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String DepartamentosController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Departamentos());
        return "departamentoses/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String DepartamentosController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("departamentos", departamentosService.findDepartamentos(id));
        uiModel.addAttribute("itemId", id);
        return "departamentoses/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String DepartamentosController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("departamentoses", Departamentos.findDepartamentosEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) departamentosService.countAllDepartamentoses() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("departamentoses", Departamentos.findAllDepartamentoses(sortFieldName, sortOrder));
        }
        return "departamentoses/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String DepartamentosController.update(@Valid Departamentos departamentos, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, departamentos);
            return "departamentoses/update";
        }
        uiModel.asMap().clear();
        departamentosService.updateDepartamentos(departamentos);
        return "redirect:/departamentoses/" + encodeUrlPathSegment(departamentos.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String DepartamentosController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, departamentosService.findDepartamentos(id));
        return "departamentoses/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String DepartamentosController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Departamentos departamentos = departamentosService.findDepartamentos(id);
        departamentosService.deleteDepartamentos(departamentos);
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/departamentoses";
    }
    
    void DepartamentosController.populateEditForm(Model uiModel, Departamentos departamentos) {
        uiModel.addAttribute("departamentos", departamentos);
        uiModel.addAttribute("ciudads", ciudadService.findAllCiudads());
    }
    
    String DepartamentosController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}