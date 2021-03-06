// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package co.com.paisesmodel.dominio;

import co.com.paisesmodel.dominio.Departamentos;
import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

privileged aspect Departamentos_Roo_Json {
    
    public String Departamentos.toJson() {
        return new JSONSerializer()
        .exclude("*.class").serialize(this);
    }
    
    public String Departamentos.toJson(String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(this);
    }
    
    public static Departamentos Departamentos.fromJsonToDepartamentos(String json) {
        return new JSONDeserializer<Departamentos>()
        .use(null, Departamentos.class).deserialize(json);
    }
    
    public static String Departamentos.toJsonArray(Collection<Departamentos> collection) {
        return new JSONSerializer()
        .exclude("*.class").serialize(collection);
    }
    
    public static String Departamentos.toJsonArray(Collection<Departamentos> collection, String[] fields) {
        return new JSONSerializer()
        .include(fields).exclude("*.class").serialize(collection);
    }
    
    public static Collection<Departamentos> Departamentos.fromJsonArrayToDepartamentoses(String json) {
        return new JSONDeserializer<List<Departamentos>>()
        .use("values", Departamentos.class).deserialize(json);
    }
    
}
