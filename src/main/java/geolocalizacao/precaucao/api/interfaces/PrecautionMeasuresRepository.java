package geolocalizacao.precaucao.api.interfaces;

import geolocalizacao.precaucao.api.models.PrecautionMeasure;

import java.util.List;

public interface PrecautionMeasuresRepository {
    List<PrecautionMeasure> getPrecautionaryMeasuresByContaminatedArea(Long idContaminatedArea);
}
