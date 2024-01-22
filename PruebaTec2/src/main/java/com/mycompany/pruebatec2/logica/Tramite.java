
package com.mycompany.pruebatec2.logica;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

// Creación entidades

@Entity
public class Tramite implements Serializable{
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private String tramite;
    private int turno;
    
    // Constructores

    public Tramite() {
    }

    public Tramite(String tramite, int turno) {
        this.tramite = tramite;
        this.turno = turno;
    }
    
    // Getters y Setters

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTramite() {
        return tramite;
    }

    public void setTramite(String tramite) {
        this.tramite = tramite;
    }

    public int getTurno() {
        return turno;
    }

    public void setTurno(int turno) {
        this.turno = turno;
    }

    @Override
    public String toString() {
        return "Tramite{" + "id=" + id + ", tramite=" + tramite + ", turno=" + turno + '}';
    }
}