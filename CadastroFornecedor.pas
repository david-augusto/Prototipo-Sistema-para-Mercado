unit CadastroFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, ExtCtrls;

type
  TFCadastrarFornecedor = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    ComboBoxEx1: TComboBoxEx;
    BCFCancelar: TButton;
    BCFSalvar: TButton;
    Image1: TImage;
    procedure BCFCancelarClick(Sender: TObject);
    procedure BCFSalvarClick(Sender: TObject);
  private
    procedure WMSysCommand(var Msg: TWMSysCommand);
    message WM_SYSCOMMAND;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadastrarFornecedor: TFCadastrarFornecedor;

implementation

{$R *.dfm}

procedure TFCadastrarFornecedor.BCFCancelarClick(Sender: TObject);
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

procedure TFCadastrarFornecedor.BCFSalvarClick(Sender: TObject);
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

procedure TFCadastrarFornecedor.WMSysCommand(var Msg: TWMSysCommand);
begin
case Msg.CmdType of
 SC_MAXIMIZE, 61490:
    if(true) then exit;
end;
inherited;
end;

end.
