package com.mycompany.pruebatec2.persistence;

import com.mycompany.pruebatec2.logica.Ciudadano;
import com.mycompany.pruebatec2.persistence.exceptions.NonexistentEntityException;
import java.util.List;
import java.util.logging.Logger;

public class ControladoraCiudadano {
    
    // CRUD Ciudadano
    
    CiudadanoJpaController ciudadanoJPA = new CiudadanoJpaController();
    
    public void crearCiudadano(Ciudadano ciudadano) {
        ciudadanoJPA.create(ciudadano);
    }
    
    public void eliminarCiudadano(int id) {
        try {
            ciudadanoJPA.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraCiudadano.class.getName());
        }
    }
    
    public void editarCiudadano(Ciudadano ciudadano) {
        try {
            ciudadanoJPA.edit(ciudadano);
        } catch (Exception e) {
            Logger.getLogger(ControladoraCiudadano.class.getName());
        }
    }
    
    public List<Ciudadano> traerCiudadanos() {
        return ciudadanoJPA.findCiudadanoEntities();
    }
    
    public Ciudadano traerCiudadanoPorId(int id) {
        return ciudadanoJPA.findCiudadano(id);
    }
}