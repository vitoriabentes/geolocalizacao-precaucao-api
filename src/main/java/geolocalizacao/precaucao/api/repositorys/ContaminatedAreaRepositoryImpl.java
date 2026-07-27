package geolocalizacao.precaucao.api.repositorys;
    
import geolocalizacao.precaucao.api.dtos.CoordinatesRequest;
import geolocalizacao.precaucao.api.interfaces.ContaminatedAreaRepository;
import geolocalizacao.precaucao.api.models.ContaminatedArea;
import geolocalizacao.precaucao.api.rowMappers.ContaminatedAreaRowMapper;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
    
import java.util.List;

@Repository
@RequiredArgsConstructor
public class ContaminatedAreaRepositoryImpl implements ContaminatedAreaRepository {
    private static final Logger log = LoggerFactory.getLogger(ContaminatedAreaRepositoryImpl.class);

    private final JdbcTemplate jdbcTemplate;
    private final ContaminatedAreaRowMapper contaminatedAreaRowMapper;

    @Override
    public List<ContaminatedArea> searchNearbyContaminatedAreas(CoordinatesRequest request) {
        try {
            String query = """
                WITH AREAS_CONTAMINADAS_PROXIMAS AS (
                    SELECT
                        *,
                        (6371 * ACOS(
                            LEAST(1, GREATEST(-1,
                                COS(RADIANS(?)) * COS(RADIANS(LATITUDE)) *
                                COS(RADIANS(LONGITUDE) - RADIANS(?)) +
                                SIN(RADIANS(?)) * SIN(RADIANS(LATITUDE))
                            ))
                        )) AS DISTANCIA
                    FROM AREA_CONTAMINADA
                    WHERE LATITUDE IS NOT NULL
                      AND LONGITUDE IS NOT NULL
                )
                SELECT * FROM AREAS_CONTAMINADAS_PROXIMAS
                WHERE DISTANCIA IS NOT NULL
                  AND DISTANCIA <= ?
                ORDER BY DISTANCIA;
            """;

            return jdbcTemplate.query(
                    query,
                    contaminatedAreaRowMapper,
                    request.latitudeUser(),
                    request.longitudeUser(),
                    request.latitudeUser(),
                    request.distanceRadius()
            );

        } catch (Exception e) {
            log.error("Erro ao consultar áreas contaminadas próximas ao usuário: {}", e.getMessage());
            throw new RuntimeException("Erro ao buscar áreas próximas", e);
        }
    }
}