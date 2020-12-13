unit ListarProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids;

type
  TFListarProduto = class(TForm)
    LPBuscarProduto: TLabel;
    Label1: TLabel;
    SGPListaProduto: TStringGrid;
    EPBuscarProduto: TEdit;
    BPPesquisar: TButton;
    BPFechar: TButton;
    BPCadastrarNovoProduto: TButton;
    Image1: TImage;
    procedure BPCadastrarNovoProdutoClick(Sender: TObject);
    procedure BPFecharClick(Sender: TObject);
  private
    procedure WMSysCommand(var Msg: TWMSysCommand);
    message WM_SYSCOMMAND;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListarProduto: TFListarProduto;

implementation

uses CadastroProduto;

{$R *.dfm}

procedure TFListarProduto.BPCadastrarNovoProdutoClick(Sender: TObject);
begin
FCadastrarProduto := TFCadastrarProduto.CREATE(APPLICATION);
FListarProduto.Visible := false;
FCadastrarProduto.SHOWMODAL;
FListarProduto.Visible := true;
end;

procedure TFListarProduto.BPFecharClick(Sender: TObject);
begin
close;
end;

procedure TFListarProduto.WMSysCommand(var Msg: TWMSysCommand);
begin
case Msg.CmdType of
 SC_MAXIMIZE, 61490:
    if(true) then exit;
end;
inherited;
end;

end.
