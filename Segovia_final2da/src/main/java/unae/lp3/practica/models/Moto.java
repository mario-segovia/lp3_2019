package unae.lp3.practica.models;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.Table;
@Entity
@Table(name="moto")
public class Moto {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY) 
	private int id;
	@Column (name="marca")
	private String marca;
	@Column (name="modelo")
	private String modelo;
	@Column (name="fechaFab")
	private Date fechaFab;
	@Column (name="stock")
	private Boolean stock;
	@Column (name="specs")
	private String [] specs;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getMarca() {
		return marca;
	}
	public void setMarca(String marca) {
		this.marca = marca;
	}
	public String getModelo() {
		return modelo;
	}
	public void setModelo(String modelo) {
		this.modelo = modelo;
	}
	public Date getFechaFab() {
		return fechaFab;
	}
	public void setFechaFab(Date fechaFab) {
		this.fechaFab = fechaFab;
	}
	public Boolean getStock() {
		return stock;
	}
	public void setStock(Boolean stock) {
		this.stock = stock;
	}
	public String[] getSpecs() {
		return specs;
	}
	public void setSpecs(String[] specs) {
		this.specs = specs;
	}
	
}
