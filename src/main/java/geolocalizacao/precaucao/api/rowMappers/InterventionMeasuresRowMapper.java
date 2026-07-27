package geolocalizacao.precaucao.api.rowMappers;

import geolocalizacao.precaucao.api.models.InterventionMeasure;

import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;

@Component
public class InterventionMeasuresRowMapper implements RowMapper<InterventionMeasure> {

    @Override
    public InterventionMeasure mapRow(ResultSet resultSet, int rowNum) throws SQLException {
        return new InterventionMeasure(
                resultSet.getLong("ID"),
                resultSet.getString("NOME"),
                resultSet.getString("CATEGORIA"),
                resultSet.getString("DESCRICAO")
        );
    }
}
