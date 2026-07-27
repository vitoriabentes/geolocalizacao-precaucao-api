package geolocalizacao.precaucao.api.interfaces;

import geolocalizacao.precaucao.api.dtos.CoordinatesRequest;
import geolocalizacao.precaucao.api.models.ContaminatedArea;

import java.util.List;

public interface PrecautionMeasuresService {
    List<ContaminatedArea> findPrecautionaryMeasuresByNearbyAreas(CoordinatesRequest request);
}
