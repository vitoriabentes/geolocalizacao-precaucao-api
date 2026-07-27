package geolocalizacao.precaucao.api.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter @Setter
@AllArgsConstructor
public class PrecautionMeasure {
    private Long id;
    private String name;
    private String category;
    private String description;
}
