package com.emergentes.modelo;

public class estudiante {

    private int id;
    private String nombre;
    private String apellidos;
    private String seminario;
    private String confirmado;
    private String fecha_d_ins;

    public estudiante() {
        this.id = 0;
        this.nombre = "";
        this.apellidos = "";
        this.seminario = "";
        this.confirmado = "";
        this.fecha_d_ins = "";
    }

    public int getId() {
        return id;
    }

    public String getNombre() {
        return nombre;
    }

    public String getApellidos() {
        return apellidos;
    }

    public String getSeminario() {
        return seminario;
    }

    public String getConfirmado() {
        return confirmado;
    }

    public String getFecha_d_ins() {
        return fecha_d_ins;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public void setSeminario(String seminario) {
        this.seminario = seminario;
    }

    public void setConfirmado(String confirmado) {
        this.confirmado = confirmado;
    }

    public void setFecha_d_ins(String fecha_d_ins) {
        this.fecha_d_ins = fecha_d_ins;
    }

    @Override
    public String toString() {
        return "estudiante{" + "id=" + id + ", nombre=" + nombre + ", apellidos=" + apellidos + ", seminario=" + seminario + ", confirmado=" + confirmado + ", fecha_d_ins=" + fecha_d_ins + '}';
    }



}
