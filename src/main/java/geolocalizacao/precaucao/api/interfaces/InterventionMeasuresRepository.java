package geolocalizacao.precaucao.api.interfaces;

import geolocalizacao.precaucao.api.models.InterventionMeasure;

import java.util.List;

public interface InterventionMeasuresRepository {
    List<InterventionMeasure> getInterventionMeasuresByContaminatedArea(Long idContaminatedArea);
}
