package unae.lp3.refu01.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table( name="tipos")
public class Tipo {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY) 
	private int id ;
	@Column (name="tip_nombre", length=25)
	private String nombre;
	@Column (name="estado")
	private int active=1;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public int getActive() {
		return active;
	}
	public void setActive(int active) {
		this.active = active;
	}
	@Override
	public String toString() {
		return "Tipo [id=" + id + ", nombre=" + nombre + ", active=" + active + "]";
	}
	
	
}
