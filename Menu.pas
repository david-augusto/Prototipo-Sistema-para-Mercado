unit Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Menus;

type
  TFMenu = class(TForm)
    SBMPProdutos: TSpeedButton;
    SBMPFornecedores: TSpeedButton;
    SBMPCadastrarFornecedor: TSpeedButton;
    SBMPCadastrarProduto: TSpeedButton;
    SBMPEfetuarVenda: TSpeedButton;
    LMPProduto: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    LMPTituloMenu: TLabel;
    Label1: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    SPMPSair: TSpeedButton;
    Image1: TImage;
    Label3: TLabel;
    MainMenu1: TMainMenu;
    CADASTROS1: TMenuItem;
    CADASTRARPRODUTO1: TMenuItem;
    CADASTRARFORNECEDORES1: TMenuItem;
    SIMULARVENDA1: TMenuItem;
    LISTAS1: TMenuItem;
    LISTARPRODUTOS1: TMenuItem;
    LISTARFORNECEDORES1: TMenuItem;
    SAIR1: TMenuItem;
    VENDA1: TMenuItem;
    SAIRDOSISTEMA1: TMenuItem;
    Label5: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    procedure SBMPCadastrarProdutoClick(Sender: TObject);
    procedure SBMPCadastrarFornecedorClick(Sender: TObject);
    procedure SBMPEfetuarVendaClick(Sender: TObject);
    procedure SBMPProdutosClick(Sender: TObject);
    procedure SBMPFornecedoresClick(Sender: TObject);
    procedure SPMPSairClick(Sender: TObject);
    procedure CADASTRARPRODUTO1Click(Sender: TObject);
    procedure CADASTRARFORNECEDORES1Click(Sender: TObject);
    procedure LISTARPRODUTOS1Click(Sender: TObject);
    procedure LISTARFORNECEDORES1Click(Sender: TObject);
    procedure SAIRDOSISTEMA1Click(Sender: TObject);
    procedure VENDA1Click(Sender: TObject);
  private
    procedure WMSysCommand(var Msg: TWMSysCommand);
    message WM_SYSCOMMAND;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMenu: TFMenu;

implementation

uses CadastroProduto, CadastroFornecedor, Venda, ListarProduto,
  ListarFornecedor;

{$R *.dfm}

procedure TFMenu.SBMPCadastrarProdutoClick(Sender: TObject);
begin

FCadastrarProduto := TFCadastrarProduto.CREATE(APPLICATION);
FMenu.Visible := false;
FCadastrarProduto.SHOWMODAL;
FMenu.Visible := true;
end;

procedure TFMenu.SBMPCadastrarFornecedorClick(Sender: TObject);
begin
FCadastrarFornecedor := TFCadastrarFornecedor.CREATE(APPLICATION);
FMenu.Visible := false;
FCadastrarFornecedor.SHOWMODAL;
FMenu.Visible := true;
end;

procedure TFMenu.SBMPEfetuarVendaClick(Sender: TObject);
begin
FVenda := TFVenda.CREATE(APPLICATION);
FMenu.Visible := false;
FVenda.SHOWMODAL;
FMenu.Visible := true;
end;

procedure TFMenu.SBMPProdutosClick(Sender: TObject);
begin
FListarProduto := TFListarProduto.CREATE(APPLICATION);
FMenu.Visible := false;
FListarProduto.SHOWMODAL;
FMenu.Visible := true;
end;

procedure TFMenu.SBMPFornecedoresClick(Sender: TObject);
begin
FListarFornecedores := TFListarFornecedores.CREATE(APPLICATION);
FMenu.Visible := false;
FListarFornecedores.SHOWMODAL;
FMenu.Visible := true;
end;

procedure TFMenu.SPMPSairClick(Sender: TObject);
begin
      if Application.MessageBox('Deseja Sair do Sistema?','Sair',mb_yesno + mb_iconquestion) = id_yes then
    Begin
        Close;
    End
    else
       Begin
        //comandos para nao
        End
end;

procedure TFMenu.WMSysCommand(var Msg: TWMSysCommand);
begin
case Msg.CmdType of
 SC_MAXIMIZE, 61490:
    if(true) then exit;
end;
inherited;
end;

procedure TFMenu.CADASTRARPRODUTO1Click(Sender: TObject);
begin
FCadastrarProduto := TFCadastrarProduto.CREATE(APPLICATION);
FMenu.Visible := false;
FCadastrarProduto.SHOWMODAL;
FMenu.Visible := true;
end;

procedure TFMenu.CADASTRARFORNECEDORES1Click(Sender: TObject);
begin
FCadastrarFornecedor := TFCadastrarFornecedor.CREATE(APPLICATION);
FMenu.Visible := false;
FCadastrarFornecedor.SHOWMODAL;
FMenu.Visible := true;
end;

procedure TFMenu.LISTARPRODUTOS1Click(Sender: TObject);
begin
FListarProduto := TFListarProduto.CREATE(APPLICATION);
FMenu.Visible := false;
FListarProduto.SHOWMODAL;
FMenu.Visible := true;
end;

procedure TFMenu.LISTARFORNECEDORES1Click(Sender: TObject);
begin
FListarFornecedores := TFListarFornecedores.CREATE(APPLICATION);
FMenu.Visible := false;
FListarFornecedores.SHOWMODAL;
FMenu.Visible := true;
end;

procedure TFMenu.SAIRDOSISTEMA1Click(Sender: TObject);
begin
      if Application.MessageBox('Deseja Sair do Sistema?','Sair',mb_yesno + mb_iconquestion) = id_yes then
    Begin
        Close;
    End
    else
       Begin
        //comandos para nao
        End
end;

procedure TFMenu.VENDA1Click(Sender: TObject);
begin
FVenda := TFVenda.CREATE(APPLICATION);
FMenu.Visible := false;
FVenda.SHOWMODAL;
FMenu.Visible := true;
end;

end.
