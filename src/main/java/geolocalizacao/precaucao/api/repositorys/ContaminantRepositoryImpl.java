package geolocalizacao.precaucao.api.repositorys;

import geolocalizacao.precaucao.api.interfaces.ContaminantRepository;
import geolocalizacao.precaucao.api.models.Contaminant;
import geolocalizacao.precaucao.api.rowMappers.ContaminantRowMapper;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class ContaminantRepositoryImpl implements ContaminantRepository {
    private static final Logger log = LoggerFactory.getLogger(ContaminantRepositoryImpl.class);

    private final JdbcTemplate jdbcTemplate;
    private final ContaminantRowMapper contaminantRowMapper;

    public List<Contaminant> getContaminantesByContaminatedArea(Long idAreaContaminada) {
        try {
            String query  = """
                SELECT C.ID, C.NOME, C.TIPO, C.DESCRICAO FROM CONTAMINANTE C
                INNER JOIN AREA_CONTAMINADA_CONTAMINANTE AC ON AC.ID_CONTAMINANTE = C.ID
                WHERE AC.ID_AREA = ?
                """;

            return jdbcTemplate.query(query, contaminantRowMapper, idAreaContaminada);
        }catch (Exception e){
            log.error("Erro ao buscar contaminantes da área contaminada {}: {}", idAreaContaminada, e.getMessage());
            throw new RuntimeException(e.getMessage());
        }
    }

}
