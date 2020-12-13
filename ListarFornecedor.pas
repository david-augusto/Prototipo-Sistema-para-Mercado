unit ListarFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, ExtCtrls;

type
  TFListarFornecedores = class(TForm)
    LFBuscarFornecedor: TLabel;
    EFBuscarFornecedor: TEdit;
    BFBuscarFornecedor: TButton;
    SGFListaFornecedor: TStringGrid;
    BFVoltar: TButton;
    BFCadastroNovoFornecedor: TButton;
    Image1: TImage;
    Label1: TLabel;
    procedure BFCadastroNovoFornecedorClick(Sender: TObject);
    procedure BFVoltarClick(Sender: TObject);
  private
    procedure WMSysCommand(var Msg: TWMSysCommand);
    message WM_SYSCOMMAND;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FListarFornecedores: TFListarFornecedores;

implementation

uses CadastroFornecedor;

{$R *.dfm}

procedure TFListarFornecedores.BFCadastroNovoFornecedorClick(
  Sender: TObject);
begin
FCadastrarFornecedor := TFCadastrarFornecedor.CREATE(APPLICATION);
FListarFornecedores.Visible := false;
FCadastrarFornecedor.SHOWMODAL;
FListarFornecedores.Visible := true;
end;

procedure TFListarFornecedores.BFVoltarClick(Sender: TObject);
begin
close;
end;

procedure TFListarFornecedores.WMSysCommand(var Msg: TWMSysCommand);
begin
case Msg.CmdType of
 SC_MAXIMIZE, 61490:
    if(true) then exit;
end;
inherited;
end;
end.
