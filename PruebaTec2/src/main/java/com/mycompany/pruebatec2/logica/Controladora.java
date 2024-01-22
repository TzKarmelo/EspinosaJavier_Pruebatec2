package com.mycompany.pruebatec2.logica;

import com.mycompany.pruebatec2.persistence.ControladoraCiudadano;
import com.mycompany.pruebatec2.persistence.ControladoraTramite;
import com.mycompany.pruebatec2.persistence.ControladoraTurno;
import java.time.LocalDate;
import java.util.Comparator;
import java.util.List;

public class Controladora {
    
    // CRUDS
    
    ControladoraCiudadano controlCiu = new ControladoraCiudadano();
    ControladoraTurno controlTurno = new ControladoraTurno();
    ControladoraTramite controlTramite = new ControladoraTramite();
    
    // Ciudadano
    
    public void crearCiudadano(String nombre, String apellido, String dni) {
        controlCiu.crearCiudadano(new Ciudadano (nombre, apellido, dni));
    }
    
    public List<Ciudadano> traerCiudadanos() {
        return controlCiu.traerCiudadanos();
    }
    
    public void borrarCiudadano(int id) {
        controlCiu.eliminarCiudadano(id);
    }
    
    public Ciudadano buscarCiudadano (int id) {
        return controlCiu.traerCiudadanoPorId(id);
    }
    
    public void modificarCiudadano ( String nombre, String apellido, String dni, Ciudadano ciudadano) {
        ciudadano.setNombre(nombre);
        ciudadano.setApellido(apellido);
        ciudadano.setDni(dni);
        
        controlCiu.editarCiudadano(ciudadano);
    }
    
    // Turno
    
    public void crearTurno (LocalDate fecha, int numTurno, String tramite, boolean estado, Ciudadano ciudadano) {
        controlTurno.crearTurno(new Turno (fecha, numTurno, tramite, estado, ciudadano));
    }
    
    public List<Turno> traerTurnos (){
        return controlTurno.traerTurnos();
    }
    
    public void borrarTurno(int id){
        controlTurno.eliminarTurno(id);
    }
    
    public Turno buscarTurno (int id) {
        return controlTurno.traerTurnoPorId(id);
    }
    
    public void modificarTurno (LocalDate fecha, int numTurno, String tramite, boolean estado, Turno turno) {
        turno.setFecha(fecha);
        turno.setNumTurno(numTurno);
        turno.setTramite(tramite);
        turno.setEstado(estado);
        
        controlTurno.editarTurno(turno);
    }
    
    public int obtenerUltimoTurno() {
        List<Turno> turnos = controlTurno.traerTurnos();

        if (!turnos.isEmpty()) {
            turnos.sort(Comparator.comparingInt(Turno::getNumTurno).reversed());
            return turnos.get(0).getNumTurno();
        } else {
            return 0;
        }
    }
    
    public List<Turno> traerTurnosPorEstado(Boolean estado) {
        return controlTurno.traerTurnosPrEstado(estado);
    }
        
    // Tramite
    
    public void crearTramite(String tramite, int turno) {
        controlTramite.crearTramite(new Tramite(tramite, turno));
    }
    
    public List<Tramite> traerTramites (){
        return controlTramite.traerTramites();
    }
    
    public void borrarTramite(int id) {
        controlTramite.eliminarTramite(id);
    }
    
    public Tramite buscarTramite(int id) {
        return controlTramite.traerTramitesPorId(id);
    }
    
    public void modificarTramite (String tramite, int turno, Tramite tramiteModificar) {
        tramiteModificar.setTramite(tramite);
        tramiteModificar.setTurno(turno);
    }
}