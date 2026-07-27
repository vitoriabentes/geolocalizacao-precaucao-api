package geolocalizacao.precaucao.api.interfaces;

import geolocalizacao.precaucao.api.models.Contaminant;

import java.util.List;

public interface ContaminantRepository {
     List<Contaminant> getContaminantesByContaminatedArea(Long idAreaContaminada);
}
