package aulas.oo.part02.construtores;

import aulas.oo.part01.paradigma.exemplo001.Pessoa;

import java.util.ArrayList;

public class Carro {
    // Atributos
    private String marca;
    private String modelo;
    private Integer ano;
    private String variante;

    // Construtores
    public Carro(String modelo, String marca, Integer ano){
        this.modelo = modelo;
        this.marca = marca;
        this.ano = ano;
    }
}
