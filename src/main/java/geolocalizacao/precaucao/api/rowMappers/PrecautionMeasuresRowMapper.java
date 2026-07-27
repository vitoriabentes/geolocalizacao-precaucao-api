package geolocalizacao.precaucao.api.rowMappers;

import geolocalizacao.precaucao.api.models.PrecautionMeasure;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;

@Component
public class PrecautionMeasuresRowMapper implements RowMapper<PrecautionMeasure> {

    @Override
    public PrecautionMeasure mapRow(ResultSet resultSet, int rowNum) throws SQLException {
        return new PrecautionMeasure(
                resultSet.getLong("ID"),
                resultSet.getString("NOME"),
                resultSet.getString("CATEGORIA"),
                resultSet.getString("DESCRICAO")
        );
    }
}
