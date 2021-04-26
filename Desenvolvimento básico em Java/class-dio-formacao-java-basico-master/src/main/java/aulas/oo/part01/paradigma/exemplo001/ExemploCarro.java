package aulas.oo.part01.paradigma.exemplo001;

public class ExemploCarro {
    public static void main(String[]args){
        Carro carro = new Carro();
        Pessoa pessoa = new Pessoa();

        System.out.println(carro.listarPessoasNoCarro());

        // Adicionar pessoas no carro
        carro.adicionarPessoaAoCarro(pessoa);

        System.out.println(carro.listarPessoasNoCarro());

        // Remover pessoas do carro
        carro.removerPessoaDoCarro(pessoa);

        System.out.println(carro.listarPessoasNoCarro());
    }
}
