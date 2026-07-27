package geolocalizacao.precaucao.api.rowMappers;

import geolocalizacao.precaucao.api.models.ContaminatedArea;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;

@Component
public class ContaminatedAreaRowMapper implements RowMapper<ContaminatedArea> {

    @Override
    public ContaminatedArea mapRow(ResultSet resultSet, int rowNumber) throws SQLException {
        return new ContaminatedArea(
                resultSet.getLong("ID"),
                resultSet.getLong("NIS"),
                resultSet.getString("CLASSIFICACAO"),
                resultSet.getString("RAZAO_SOCIAL"),
                resultSet.getString("ENDERECO"),
                resultSet.getDouble("LATITUDE"),
                resultSet.getDouble("LONGITUDE"),
                resultSet.getDouble("DISTANCIA")
        );

    }
}
