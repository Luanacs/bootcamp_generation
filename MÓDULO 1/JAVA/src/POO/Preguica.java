package POO;

public class Preguica extends Animal {
	
	public String acao;
	
	public Preguica (String nome, int idade, String somEmitido, String acao) 
	{
		super(nome,idade,somEmitido);
		this.acao=acao;
	}

	public String getAcao() {
		return acao;
	}

	public void setAcao(String acao) {
		this.acao = acao;
	}
	public void imprimirInfo()
	{
		System.out.println("\nQual o nome do seu animal de estima��o? "+getNome()+"\nQuantos anos ele tem? "+getIdade()+"\nQual o som que ele emite? "+getSomEmitido()+"\nO que ele mais gosta de fazer? "+acao);
	}
	

}
