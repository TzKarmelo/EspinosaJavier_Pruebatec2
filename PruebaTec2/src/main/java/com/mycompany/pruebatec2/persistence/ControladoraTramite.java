package com.mycompany.pruebatec2.persistence;

import com.mycompany.pruebatec2.logica.Tramite;
import com.mycompany.pruebatec2.persistence.exceptions.NonexistentEntityException;
import java.util.List;
import java.util.logging.Logger;

public class ControladoraTramite {
    
    // CRUD Trámite
    
    TramiteJpaController tramiteJPA = new TramiteJpaController();
    
    public void crearTramite(Tramite tramite) {
        tramiteJPA.create(tramite);
    }
    
    public void eliminarTramite(int id) {
        try {
            tramiteJPA.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraTramite.class.getName());
        }
    }
    
    public void editarTramite(Tramite tramite){
        try {
            tramiteJPA.edit(tramite);
        } catch (Exception e) {
            Logger.getLogger(ControladoraTramite.class.getName());
        }
    }
    
    public List<Tramite> traerTramites(){
        return tramiteJPA.findTramiteEntities();
    }
    
    public Tramite traerTramitesPorId(int id) {
        return tramiteJPA.findTramite(id);
        
    }
}