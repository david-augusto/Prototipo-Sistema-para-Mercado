program SuperMercado;

uses
  Forms,
  Menu in 'Menu.pas' {FMenu},
  CadastroProduto in 'CadastroProduto.pas' {FCadastrarProduto},
  CadastroFornecedor in 'CadastroFornecedor.pas' {FCadastrarFornecedor},
  Venda in 'Venda.pas' {FVenda},
  ListarProduto in 'ListarProduto.pas' {FListarProduto},
  ListarFornecedor in 'ListarFornecedor.pas' {FListarFornecedores};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFMenu, FMenu);
  Application.Run;
end.
