package geolocalizacao.precaucao.api.models;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter @Setter
@AllArgsConstructor
public class Contaminant {
    private Long id;
    private String name;
    private String type;
    private String description;
}
