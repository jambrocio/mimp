package pe.com.mimp.daoImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.SqlOutParameter;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;
import org.springframework.stereotype.Repository;

import oracle.jdbc.OracleTypes;
import pe.com.mimp.dao.FichasDao;
import pe.com.mimp.modelo.TipoViolencia;
import pe.com.mimp.modelo.Ubigeo;
import pe.com.mimp.modelo.VinculosFamiliares;
import pe.com.mimp.modelo.Violencia;
import pe.com.mimp.session.DatosSession;

@Repository
public class FichasDaoImpl implements FichasDao {

	@Autowired
	private JdbcTemplate jdbcTemplate;
	private SimpleJdbcCall jdbcCall;
	
	@Autowired
	private DatosSession datosSession;
	
	@Override
	public List<TipoViolencia> listaTipoViolencia() {
		
		jdbcCall = new SimpleJdbcCall(jdbcTemplate.getDataSource());
		jdbcCall.withCatalogName("PKG_FICHAS");
		jdbcCall.withProcedureName("SP_LISTA_TIPO_VIOLENCIA");
		jdbcCall.addDeclaredParameter(new SqlOutParameter("vo_result", OracleTypes.CURSOR,new BeanPropertyRowMapper(TipoViolencia.class)));
		
		Map<String,Object> results = jdbcCall.execute();
		List<TipoViolencia> lista = (List<TipoViolencia>) results.get("vo_result");
		return  lista;
	}

	@Override
	public List<Violencia> listaViolencia() {
		
		jdbcCall = new SimpleJdbcCall(jdbcTemplate.getDataSource());
		jdbcCall.withCatalogName("PKG_FICHAS");
		jdbcCall.withProcedureName("SP_LISTA_VIOLENCIA");
		jdbcCall.addDeclaredParameter(new SqlOutParameter("vo_result", OracleTypes.CURSOR,new BeanPropertyRowMapper(Violencia.class)));
		
		Map<String,Object> results = jdbcCall.execute();
		List<Violencia> lista = (List<Violencia>) results.get("vo_result");
		return  lista;
	}

	@Override
	public List<VinculosFamiliares> listaVinculosFamiliares() {
		
		jdbcCall = new SimpleJdbcCall(jdbcTemplate.getDataSource());
		jdbcCall.withCatalogName("PKG_FICHAS");
		jdbcCall.withProcedureName("SP_LISTA_VINCULOS_FAMILIARES");
		jdbcCall.addDeclaredParameter(new SqlOutParameter("vo_result", OracleTypes.CURSOR,new BeanPropertyRowMapper(VinculosFamiliares.class)));
		
		Map<String,Object> results = jdbcCall.execute();
		List<VinculosFamiliares> lista = (List<VinculosFamiliares>) results.get("vo_result");
		return  lista;
	}

}
