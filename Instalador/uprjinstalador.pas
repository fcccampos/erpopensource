unit uPrjInstalador;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  ComCtrls, Grids, Types;

type

  { TfrmInstaladorSistema }

  TfrmInstaladorSistema = class(TForm)
    btnGerarScript: TButton;
    btnGerarScript1: TButton;
    Button1: TButton;
    chkNulo01: TCheckBox;
    cmbVariavel01: TComboBox;
    edtcampo01: TEdit;
    edtDecimal01: TEdit;
    edtNomeTabela: TEdit;
    edtquantidadecampos: TEdit;
    edttamanho01: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    lblCampo01: TLabel;
    lblDecimal01: TLabel;
    lblTamanho01: TLabel;
    lblVariavel01: TLabel;
    memoFirebird: TMemo;
    memoMySQL: TMemo;
    memoSQLite: TMemo;
    PageControl1: TPageControl;
    PageControl2: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    procedure btnGerarScriptClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  frmInstaladorSistema: TfrmInstaladorSistema;

implementation

{$R *.lfm}

{ TfrmInstaladorSistema }

procedure TfrmInstaladorSistema.btnGerarScriptClick(Sender: TObject);
var
  gerastring : string;
begin
  If (Trim(edtNomeTabela.text) = '') Then Begin
     ShowMessage('O campo não pode estar vazio');
     edtNomeTabela.SetFocus;
  end
  Else Begin
    gerastring := '';
    gerastring := gerastring + 'CREATE TABLE ' + edtNomeTabela.text + ' ( ';
    gerastring := gerastring + 'id int not null primary key';
    gerastring := gerastring + ')';
    memoFirebird.Lines.Clear;
    memoFirebird.Lines.Add('Script de Criação de Tabelas - FIREBIRD');
    memoFirebird.Lines.Add('');
    memoFirebird.Lines.Add(gerastring);
  end;
end;

procedure TfrmInstaladorSistema.Button1Click(Sender: TObject);
var
  EditCampoTempoReal : TEdit;
  QuantCampos : Integer;
begin
  // Gerando campos em tempo de execução
  QuantCampos :=  StrToInt(edtquantidadecampos.text);
  Do While Then Begin
    EditCampoTempoReal := TEdit.Create(nil);
    EditCampoTempoReal.Parent := TabSheet1;
    EditCampoTempoReal.Height := 23;
    EditCampoTempoReal.Width := 192;
    EditCampoTempoReal.Top := 155;
    EditCampoTempoReal.Left := 20;
    EditCampoTempoReal.Name := 'edtCampo02';
    EditCampoTempoReal.Caption := '';
    EditCampoTempoReal.CharCase := ecLowerCase;
    EditCampoTempoReal.MaxLength := 20;
    EditCampoTempoReal.TabOrder := 3;
  end;
end;


end.

