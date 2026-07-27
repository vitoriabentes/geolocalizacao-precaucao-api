package geolocalizacao.precaucao.api.controllers;

import geolocalizacao.precaucao.api.dtos.CoordinatesRequest;
import geolocalizacao.precaucao.api.interfaces.PrecautionMeasuresService;
import geolocalizacao.precaucao.api.models.ContaminatedArea;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequiredArgsConstructor
@RequestMapping("v1/contaminated-areas-nearby/")
public class NearbyContaminatedAreaController {

    private final PrecautionMeasuresService precautionMeasuresService;

    @GetMapping
    public ResponseEntity<?> findPrecautionaryMeasuresForNearbyAreas(@Valid @RequestBody CoordinatesRequest request) {
        try {
            List<ContaminatedArea> response = precautionMeasuresService.findPrecautionaryMeasuresByNearbyAreas(request);
            return ResponseEntity.status(HttpStatus.OK).body(response);
        }catch (Exception e) {
            return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(Map.of("message","Ocorreu um erro interno ao buscar áreas contaminadas perto de você."));
        }
    }
}
