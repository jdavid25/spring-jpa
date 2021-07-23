package com.app.jpa.view.csv;

import java.util.Map;

import org.springframework.data.domain.Page;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.supercsv.io.CsvBeanWriter;
import org.supercsv.io.ICsvBeanWriter;
import org.supercsv.prefs.CsvPreference;

import com.app.jpa.models.entity.Cliente;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.view.AbstractView;

@Component("listar")
public class ClienteCsvView extends AbstractView{
	
	public ClienteCsvView() {
		setContentType("text/csv");
	}

	@Override
	protected boolean generatesDownloadContent() {
		return true;
	}
	@Override
	protected void renderMergedOutputModel(Map<String, Object> model, HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		response.setHeader("Content-Disposition", "attachment; filename=\"clientes.csv\"");
		response.setContentType(getContentType());

		
		Page<Cliente> clientes = (Page<Cliente>) model.get("clientes");
		
		ICsvBeanWriter beanWriter = new CsvBeanWriter(response.getWriter(),  CsvPreference.STANDARD_PREFERENCE);
		
		String[] header = {"id", "nombre", "apellido", "email", "createAt"};
		beanWriter.writeHeader(header);
		
		for(Cliente cliente: clientes) {
			beanWriter.write(cliente, header);
		}
		
		beanWriter.close();
	}

}
