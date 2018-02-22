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
import pe.com.mimp.dao.GeneralDao;
import pe.com.mimp.modelo.CentrosEmergencia;
import pe.com.mimp.modelo.Ubigeo;
import pe.com.mimp.session.DatosSession;

@Repository
public class GeneralDaoImpl implements GeneralDao {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	private SimpleJdbcCall jdbcCall;
	
	@Autowired
	private DatosSession datosSession;
	
	@Override
	public List<Ubigeo> listaUbigeo(Ubigeo ubigeo) {
		
		jdbcCall = new SimpleJdbcCall(jdbcTemplate.getDataSource());
		jdbcCall.withCatalogName("PKG_GENERAL");
		jdbcCall.withProcedureName("SP_LISTA_UBIGEO");
		jdbcCall.addDeclaredParameter(new SqlOutParameter("vo_result", OracleTypes.CURSOR,new BeanPropertyRowMapper(Ubigeo.class)));
		
		MapSqlParameterSource parametros = new MapSqlParameterSource();
		parametros.addValue("vi_codigo_ubigeo",	ubigeo.getCodigoUbigeo());
		
		Map<String,Object> results = jdbcCall.execute(parametros);
		List<Ubigeo> lista = (List<Ubigeo>) results.get("vo_result");
		return  lista;
		
	}

	@Override
	public List<CentrosEmergencia> listaCentrosEmergenciaLocal(CentrosEmergencia centrosEmergencia) {
		
		jdbcCall = new SimpleJdbcCall(jdbcTemplate.getDataSource());
		jdbcCall.withCatalogName("PKG_GENERAL");
		jdbcCall.withProcedureName("SP_LISTA_CEM_LOCAL");
		jdbcCall.addDeclaredParameter(new SqlOutParameter("vo_result", OracleTypes.CURSOR,new BeanPropertyRowMapper(CentrosEmergencia.class)));
		
		MapSqlParameterSource parametros = new MapSqlParameterSource();
		parametros.addValue("vi_codigo_ubigeo",				centrosEmergencia.getCodigoUbigeo());
		
		Map<String,Object> results = jdbcCall.execute(parametros);
		List<CentrosEmergencia> lista = (List<CentrosEmergencia>) results.get("vo_result");
		return  lista;
		
	}

	@Override
	public List<CentrosEmergencia> listaCentrosEmergenciaComisaria(CentrosEmergencia centrosEmergencia) {
		
		jdbcCall = new SimpleJdbcCall(jdbcTemplate.getDataSource());
		jdbcCall.withCatalogName("PKG_GENERAL");
		jdbcCall.withProcedureName("SP_LISTA_CEM_COMISARIA");
		jdbcCall.addDeclaredParameter(new SqlOutParameter("vo_result", OracleTypes.CURSOR,new BeanPropertyRowMapper(CentrosEmergencia.class)));
		
		MapSqlParameterSource parametros = new MapSqlParameterSource();
		parametros.addValue("vi_codigo_ubigeo",				centrosEmergencia.getCodigoUbigeo());
		
		Map<String,Object> results = jdbcCall.execute(parametros);
		List<CentrosEmergencia> lista = (List<CentrosEmergencia>) results.get("vo_result");
		return  lista;
		
	}

	@Override
	public List<CentrosEmergencia> listaCentrosEmergenciaSAU(CentrosEmergencia centrosEmergencia) {
		
		jdbcCall = new SimpleJdbcCall(jdbcTemplate.getDataSource());
		jdbcCall.withCatalogName("PKG_GENERAL");
		jdbcCall.withProcedureName("SP_LISTA_CEM_SAU");
		jdbcCall.addDeclaredParameter(new SqlOutParameter("vo_result", OracleTypes.CURSOR,new BeanPropertyRowMapper(CentrosEmergencia.class)));
		
		MapSqlParameterSource parametros = new MapSqlParameterSource();
		parametros.addValue("vi_codigo_ubigeo",				centrosEmergencia.getCodigoUbigeo());
		
		Map<String,Object> results = jdbcCall.execute(parametros);
		List<CentrosEmergencia> lista = (List<CentrosEmergencia>) results.get("vo_result");
		return  lista;
		
	}

}
