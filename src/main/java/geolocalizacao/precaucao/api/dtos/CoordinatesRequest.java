package geolocalizacao.precaucao.api.dtos;

import jakarta.validation.constraints.NotNull;

public record CoordinatesRequest(
        @NotNull(message = "Latitude é obrigatória")
        Double latitudeUser,

        @NotNull(message = "Longitude é obrigatória")
        Double longitudeUser,

        @NotNull(message = "O raio de distância é obrigatório")
        Double distanceRadius
){}
