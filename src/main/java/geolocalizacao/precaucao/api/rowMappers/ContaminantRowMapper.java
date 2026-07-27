package geolocalizacao.precaucao.api.rowMappers;

import geolocalizacao.precaucao.api.models.Contaminant;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Component;

import java.sql.ResultSet;
import java.sql.SQLException;

@Component
public class ContaminantRowMapper implements RowMapper<Contaminant> {

    @Override
    public Contaminant mapRow(ResultSet resultSet, int rowNum) throws SQLException {
        return new Contaminant(
                resultSet.getLong("ID"),
                resultSet.getString("NOME"),
                resultSet.getString("TIPO"),
                resultSet.getString("DESCRICAO")
        );
    }
}
