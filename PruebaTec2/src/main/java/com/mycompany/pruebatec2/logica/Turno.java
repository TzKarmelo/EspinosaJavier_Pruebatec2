package com.mycompany.pruebatec2.logica;

import java.io.Serializable;
import java.time.LocalDate;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

// Creación entidades y relación ManyToOne

@Entity
public class Turno implements Serializable{
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    private LocalDate fecha;
    private int numTurno;
    private String tramite;
    private Boolean estado;
    
    @ManyToOne
    @JoinColumn(name = "ciudadano_dni", referencedColumnName = "dni")
    private Ciudadano ciudadano;
    
    // Constructores

    public Turno() {
    }

    public Turno(LocalDate fecha, int numTurno, String tramite, boolean estado, Ciudadano ciudadano) {
        this.fecha = fecha;
        this.numTurno = numTurno;
        this.tramite = tramite;
        this.estado = estado;
        this.ciudadano = ciudadano;
    }
    
    // Getters y Setters

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public LocalDate getFecha() {
        return fecha;
    }

    public void setFecha(LocalDate fecha) {
        this.fecha = fecha;
    }

    public int getNumTurno() {
        return numTurno;
    }

    public void setNumTurno(int numTurno) {
        this.numTurno = numTurno;
    }

    public String getTramite() {
        return tramite;
    }

    public void setTramite(String tramite) {
        this.tramite = tramite;
    }

    public Boolean getEstado() {
        return estado;
    }

    public void setEstado(Boolean estado) {
        this.estado = estado;
    }

    public Ciudadano getCiudadano() {
        return ciudadano;
    }

    public void setCiudadano(Ciudadano ciudadano) {
        this.ciudadano = ciudadano;
    }

    @Override
    public String toString() {
        return "Turno{" + "id=" + id + ", fecha=" + fecha + ", numTurno=" + numTurno + ", tramite=" + tramite + ", estado=" + estado + ", ciudadano=" + ciudadano + '}';
    }
}