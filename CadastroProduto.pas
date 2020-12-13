unit CadastroProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFCadastrarProduto = class(TForm)
    LCPCodProduto: TLabel;
    LCPDescricaoProduto: TLabel;
    LCPQuantidadeProduto: TLabel;
    LCPLocalizacaoProduto: TLabel;
    Image1: TImage;
    LCPFornecedorProduto: TLabel;
    Label1: TLabel;
    ECPQuantidadeProduto: TEdit;
    ECPFornecedorProduto: TEdit;
    ECPDescricaoProduto: TEdit;
    ECPCodigoProduto: TEdit;
    CBCPLocalizacaoProduto: TComboBox;
    BCPCancelar: TButton;
    BCPSalvarProduto: TButton;
    Image2: TImage;
    procedure BCPCancelarClick(Sender: TObject);
    procedure BCPSalvarProdutoClick(Sender: TObject);
  private
    procedure WMSysCommand(var Msg: TWMSysCommand);
    message WM_SYSCOMMAND;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadastrarProduto: TFCadastrarProduto;

implementation

{$R *.dfm}

procedure TFCadastrarProduto.BCPCancelarClick(Sender: TObject);

begin
    if Application.MessageBox('Deseja Cancelar a Operação?','Cancelar',mb_yesno + mb_iconquestion) = id_yes then
    Begin
        Close;
    End
    else
       Begin
        //comandos para nao
        End
end;
procedure TFCadastrarProduto.BCPSalvarProdutoClick(Sender: TObject);
begin
      if Application.MessageBox('Deseja Salvar a Operação?','Salvar',mb_yesno + mb_iconquestion) = id_yes then
    Begin
        Close;
    End
    else
       Begin
        //comandos para nao
        End
end;

procedure TFCadastrarProduto.WMSysCommand(var Msg: TWMSysCommand);
begin
case Msg.CmdType of
 SC_MAXIMIZE, 61490:
    if(true) then exit;
end;
inherited;
end;

end.
