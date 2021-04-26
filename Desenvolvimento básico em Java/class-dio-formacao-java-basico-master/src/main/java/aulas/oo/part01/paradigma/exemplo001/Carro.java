package aulas.oo.part01.paradigma.exemplo001;

import java.util.ArrayList;

public class Carro {
    // Atributos
    private Integer quantidadePessoas;
    private ArrayList<Pessoa> pessoas;

    // Construtores
    public Carro(){
        quantidadePessoas = 1;
        pessoas = new ArrayList<Pessoa>(1);
    }

    public Carro(Integer quantidadePessoas){
        this.quantidadePessoas = quantidadePessoas;
        this.pessoas = new ArrayList<Pessoa>(quantidadePessoas);
    }

    public Carro(Integer quantidadePessoas, ArrayList<Pessoa> pessoas){
        this.quantidadePessoas = quantidadePessoas;
        this.pessoas = pessoas;
    }

    // Métodos
    public void adicionarPessoaAoCarro(Pessoa pessoa){
        if(!pessoas.contains(pessoa)){
            pessoas.add(pessoa);
        }
    }

    public void removerPessoaDoCarro(Pessoa pessoa){
        if(pessoas.contains(pessoa)){
            pessoas.remove(pessoa);
        }
    }

    public String listarPessoasNoCarro(){
        String retorno = "";
        for(Pessoa pessoa:pessoas){
            retorno += String.format("%s\n", pessoa.getNome());
        }
        return retorno;
    }
}
