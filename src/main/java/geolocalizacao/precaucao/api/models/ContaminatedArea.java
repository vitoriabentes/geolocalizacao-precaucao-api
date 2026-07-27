package geolocalizacao.precaucao.api.models;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@NoArgsConstructor
public class ContaminatedArea {
    private Long id;
    private Long nis;
    private String classification;
    private String companyName;
    private String address;
    private Double latitude;
    private Double longitude;
    private Double distanceUser;
    private List<Contaminant> contaminants;
    private List<PrecautionMeasure> precautionMeasures;
    private List<InterventionMeasure> interventionMeasures;

    public ContaminatedArea(Long id, Long nis, String classification, String companyName,
                            String address, Double latitude, Double longitude, Double distanceUser) {
        this.id = id;
        this.nis = nis;
        this.classification = classification;
        this.companyName = companyName;
        this.address = address;
        this.latitude = latitude;
        this.longitude = longitude;
        this.distanceUser = distanceUser;
    }
}
