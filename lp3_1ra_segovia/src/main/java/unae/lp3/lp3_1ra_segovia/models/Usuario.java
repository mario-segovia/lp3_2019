package unae.lp3.lp3_1ra_segovia.models;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import javax.persistence.Table;
@Entity
@Table(name="users")
public class Usuario {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY) 
	private int id;
	@Column (name="nombres")
	private String Nombre;
	@Column (name="apellidos")
	private String Apellido;
	@Column (name="fecha_nac")
	private Date FechaNac;
	@Column (name="email")
	private String Email;
	@Column (name="username")
	private String Username;
	@Column (name="password")
	private String Password;
	@Column (name="rol")
	private String Rol;
	@Column (name="recibe_mail")
	private boolean [] RecibeMail ;
	@Column (name="fecha_reg")
	private Date FechaReg= new Date(System.currentTimeMillis());
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNombre() {
		return Nombre;
	}
	public void setNombre(String nombre) {
		Nombre = nombre;
	}
	public String getApellido() {
		return Apellido;
	}
	public void setApellido(String apellido) {
		Apellido = apellido;
	}
	public Date getFechaNac() {
		return FechaNac;
	}
	public void setFechaNac(Date FechaNac) {
		this.FechaNac = FechaNac;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getRol() {
		return Rol;
	}
	public void setRol(String rol) {
		Rol = rol;
	}
	public boolean [] getRecibeMail() {
		return RecibeMail;
	}
	public void setRecibeMail(boolean[] recibeMail) {
		RecibeMail = recibeMail;
	}
	public Date getFechaReg() {
		return FechaReg;
	}
	public void setFechaReg(Date fechaReg) {
		FechaReg = fechaReg;
	}
	

}
