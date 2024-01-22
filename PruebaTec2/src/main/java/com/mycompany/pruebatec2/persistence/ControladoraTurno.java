package com.mycompany.pruebatec2.persistence;

import com.mycompany.pruebatec2.logica.Turno;
import com.mycompany.pruebatec2.persistence.exceptions.NonexistentEntityException;
import java.util.List;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

public class ControladoraTurno {

    // CRUD Turno
    TurnoJpaController turnoJPA = new TurnoJpaController();

    public void crearTurno(Turno turno) {
        turnoJPA.create(turno);
    }

    public void eliminarTurno(int id) {
        try {
            turnoJPA.destroy(id);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraTurno.class.getName());
        }
    }

    public void editarTurno(Turno turno) {
        try {
            turnoJPA.edit(turno);
        } catch (Exception e) {
            Logger.getLogger(ControladoraTurno.class.getName());
        }
    }

    public List<Turno> traerTurnos() {
        return turnoJPA.findTurnoEntities();
    }

    public Turno traerTurnoPorId(int id) {
        return turnoJPA.findTurno(id);
    }

    public List<Turno> traerTurnosPrEstado(Boolean estado) {
        EntityManager em = turnoJPA.getEntityManager();
        try {
            CriteriaBuilder cb = em.getCriteriaBuilder();
            CriteriaQuery<Turno> cq = cb.createQuery(Turno.class);
            Root<Turno> turnoRoot = cq.from(Turno.class);
            cq.where(cb.equal(turnoRoot.get("estado"), estado));

            TypedQuery<Turno> query = em.createQuery(cq);
            return query.getResultList();
        } finally {
            em.close();
        }
    }
}