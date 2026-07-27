package geolocalizacao.precaucao.api.services;

import geolocalizacao.precaucao.api.dtos.CoordinatesRequest;
import geolocalizacao.precaucao.api.interfaces.*;
import geolocalizacao.precaucao.api.models.ContaminatedArea;
import geolocalizacao.precaucao.api.models.Contaminant;
import geolocalizacao.precaucao.api.models.InterventionMeasure;
import geolocalizacao.precaucao.api.models.PrecautionMeasure;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class PrecautionMeasuresServiceImpl implements PrecautionMeasuresService {
    private static final Logger log = LoggerFactory.getLogger(PrecautionMeasuresServiceImpl.class);

    private final ContaminatedAreaRepository contaminatedAreaRepository;

    private final ContaminantRepository contaminantRepository;

    private final PrecautionMeasuresRepository precautionMeasuresRepository;

    private final InterventionMeasuresRepository interventionMeasuresRepository;

    @Override
    public List<ContaminatedArea> findPrecautionaryMeasuresByNearbyAreas(CoordinatesRequest request) {
        log.info("Buscando áreas contaminadas próximas ao usuário em um raio de {} km", request.distanceRadius());
        List<ContaminatedArea> contaminatedAreas = contaminatedAreaRepository.searchNearbyContaminatedAreas(request);

        for(ContaminatedArea contaminatedArea : contaminatedAreas){
            List<Contaminant> contaminants = contaminantRepository.getContaminantesByContaminatedArea(contaminatedArea.getId());
            contaminatedArea.setContaminants(contaminants);

            List<PrecautionMeasure> precautionaryMeasures = precautionMeasuresRepository.getPrecautionaryMeasuresByContaminatedArea(contaminatedArea.getId());
            contaminatedArea.setPrecautionMeasures(precautionaryMeasures);

            List<InterventionMeasure> interventionMeasures = interventionMeasuresRepository.getInterventionMeasuresByContaminatedArea(contaminatedArea.getId());
            contaminatedArea.setInterventionMeasures(interventionMeasures);
        }
        return contaminatedAreas;
    }

}
