package geolocalizacao.precaucao.api.repositorys;

import geolocalizacao.precaucao.api.interfaces.PrecautionMeasuresRepository;
import geolocalizacao.precaucao.api.models.PrecautionMeasure;
import geolocalizacao.precaucao.api.rowMappers.PrecautionMeasuresRowMapper;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
@RequiredArgsConstructor
public class PrecautionMeasuresMeasuresRepositoryImpl implements PrecautionMeasuresRepository {
    private static final Logger log = LoggerFactory.getLogger(PrecautionMeasuresMeasuresRepositoryImpl.class);

    private final JdbcTemplate jdbcTemplate;

    private final PrecautionMeasuresRowMapper precautionMeasuresRowMapper;

    public List<PrecautionMeasure> getPrecautionaryMeasuresByContaminatedArea(Long idContaminatedArea){
        try {
            String query = """
                    SELECT M.ID, M.NOME, M.CATEGORIA, M.DESCRICAO FROM MEDIDA_PRECAUCAO M
                    INNER JOIN AREA_CONTAMINADA_MEDIDA_PRECAUCAO AM ON AM.ID_PRECAUCAO = M.ID
                    WHERE AM.ID_AREA = ?
                    """;

            return jdbcTemplate.query(query, precautionMeasuresRowMapper,  idContaminatedArea);
        }catch(Exception e){
            log.error("Erro ao consultar medidas de prevenção da área contaminada {}: {}", idContaminatedArea, e.getMessage());
            throw new RuntimeException(e.getMessage());
        }
    }
}
