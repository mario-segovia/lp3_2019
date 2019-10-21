package unae.lp3.Segovia2daFinal.models;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.Table;
@Entity
@Table(name="mesa_entrada")

public class MesaEntrada {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY) 
	private int id;
	@Column (name="emisor")
	private String emisor;
	@Column (name="destinatario")
	private String destinatario;
	@Column (name="fecha_emi")
	private Date fechaEmi;
	@Column (name="num_emisor")
	private String numEmisor;
	@Column (name="asunto")
	private String asunto;
	@Column (name="nro_mesa_ent")
	private String nroMesaEnt;
	
	@Column (name="fecha_rep")
	private Date fechaRep;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmisor() {
		return emisor;
	}

	public void setEmisor(String emisor) {
		this.emisor = emisor;
	}

	public String getDestinatario() {
		return destinatario;
	}

	public void setDestinatario(String destinatario) {
		this.destinatario = destinatario;
	}

	public Date getFechaEmi() {
		return fechaEmi;
	}

	public void setFechaEmi(Date fechaEmi) {
		this.fechaEmi = fechaEmi;
	}

	public String getNumEmisor() {
		return numEmisor;
	}

	public void setNumEmisor(String numEmisor) {
		this.numEmisor = numEmisor;
	}

	public String getAsunto() {
		return asunto;
	}

	public void setAsunto(String asunto) {
		this.asunto = asunto;
	}

	public String getNroMesaEnt() {
		return nroMesaEnt;
	}

	public void setNroMesaEnt(String nroMesaEnt) {
		this.nroMesaEnt = nroMesaEnt;
	}

	public Date getFechaRep() {
		return fechaRep;
	}

	public void setFechaRep(Date fechaRep) {
		this.fechaRep = fechaRep;
	}
	
	

}
