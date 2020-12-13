unit Venda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, ExtCtrls;

type
  TFVenda = class(TForm)
    LCValorTotal: TLabel;
    LCQuantidade: TLabel;
    LCCodigoProduto: TLabel;
    LCValorUnitario: TLabel;
    LCValorTotalProduto: TLabel;
    LTituloEfetuarVenda: TLabel;
    SGCaixa: TStringGrid;
    ECCodigoProduto: TEdit;
    ECValorTotal: TEdit;
    ECQuantidade: TEdit;
    ECValorUnitario: TEdit;
    ECValorTotalProduto: TEdit;
    BCPesquisar: TButton;
    BCCancelar: TButton;
    BCFinalizarVenda: TButton;
    Image1: TImage;
    procedure BCCancelarClick(Sender: TObject);
    procedure BCFinalizarVendaClick(Sender: TObject);
    procedure BCPesquisarClick(Sender: TObject);
  private
    procedure WMSysCommand(var Msg: TWMSysCommand);
    message WM_SYSCOMMAND;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVenda: TFVenda;

implementation

uses ListarProduto;

{$R *.dfm}

procedure TFVenda.BCCancelarClick(Sender: TObject);
begin
      if Application.MessageBox('Deseja Cancelar a venda?','Cancelar',mb_yesno + mb_iconquestion) = id_yes then
    Begin
        Close;
    End
    else
       Begin
        //comandos para nao
        End
end;

procedure TFVenda.BCFinalizarVendaClick(Sender: TObject);
begin
      if Application.MessageBox('Deseja Finalizar a Venda?','Finalizar',mb_yesno + mb_iconquestion) = id_yes then
    Begin
        Close;
    End
    else
       Begin
        //comandos para nao
        End
end;

procedure TFVenda.BCPesquisarClick(Sender: TObject);
begin
FListarProduto := TFListarProduto.CREATE(APPLICATION);
FVenda.Visible := false;
FListarProduto.SHOWMODAL;
FVenda.Visible := true;
end;

procedure TFVenda.WMSysCommand(var Msg: TWMSysCommand);
begin
case Msg.CmdType of
 SC_MAXIMIZE, 61490:
    if(true) then exit;
end;
inherited;
end;

end.
