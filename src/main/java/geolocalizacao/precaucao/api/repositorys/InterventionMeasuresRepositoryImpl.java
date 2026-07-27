package geolocalizacao.precaucao.api.repositorys;

import geolocalizacao.precaucao.api.interfaces.InterventionMeasuresRepository;
import geolocalizacao.precaucao.api.models.InterventionMeasure;
import geolocalizacao.precaucao.api.rowMappers.InterventionMeasuresRowMapper;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class InterventionMeasuresRepositoryImpl implements InterventionMeasuresRepository {
    private static final Logger log = LoggerFactory.getLogger(InterventionMeasuresRepositoryImpl.class);

    private final JdbcTemplate jdbcTemplate;

    private final InterventionMeasuresRowMapper interventionMeasuresRowMapper;

    @Override
    public List<InterventionMeasure> getInterventionMeasuresByContaminatedArea(Long idContaminatedArea) {
        try {
            String query = """
                    SELECT M.ID, M.NOME, M.CATEGORIA, M.DESCRICAO FROM MEDIDA_INTERVENCAO M
                    INNER JOIN AREA_CONTAMINADA_MEDIDA_INTERVENCAO AM ON AM.ID_INTERVENCAO = M.ID
                    WHERE AM.ID_AREA = ?
                    """;

            return jdbcTemplate.query(query, interventionMeasuresRowMapper,  idContaminatedArea);
        }catch(Exception e){
            log.error("Erro ao consultar medidas de intervenção da área contaminada {}: {}", idContaminatedArea, e.getMessage());
            throw new RuntimeException(e.getMessage());
        }
    }
}
