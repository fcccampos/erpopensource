unit uPrjInstalador;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls,
  ComCtrls;

type

  { TfrmInstaladorSistema }

  TfrmInstaladorSistema = class(TForm)
    btnGerarScript: TButton;
    btnGerarScript1: TButton;
    Button1: TButton;
    Button2: TButton;
	 chkNulo01: TCheckBox;
    cmbTabela1: TComboBox;
    cmbTabela: TComboBox;
	 cmbVariavel01: TComboBox;
	 edtcampo01: TEdit;
	 edtContadorCampo: TEdit;
	 edtContadorAlturaTop: TEdit;
	 edtDecimal01: TEdit;
    edtNomeTabela: TEdit;
    edtquantidadecampos: TEdit;
	 edttamanho01: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
	 lblCampo01: TLabel;
	 lblDecimal01: TLabel;
	 lblTamanho01: TLabel;
	 lblVariavel01: TLabel;
    ListBox1: TListBox;
    ListBox2: TListBox;
	 Memo1: TMemo;
    memoFirebird: TMemo;
    memoMySQL: TMemo;
    memoSQLite: TMemo;
    PageControl1: TPageControl;
    PageControl2: TPageControl;
	 Panel1: TPanel;
    RadioGroup1: TRadioGroup;
	 ScrollBox1: TScrollBox;
    TabSheet1: TTabSheet;
    tabCampoDaTabela: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    procedure btnGerarScriptClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
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
  intAlturaTop, I, ContadorCampo : Integer;
  strNomeCampo : String;
begin
  //Tenho que guardar a altura também igual fiz com o Nome Do Campo
  intAlturaTop := StrToInt(edtContadorAlturaTop.Text);
  I := 0;
  ContadorCampo := StrToInt(edtContadorCampo.Text);
  While I < StrToInt(edtquantidadecampos.Text) Do Begin
     //ShowMessage('Inicialização do I: ' + IntToStr(i) + 'Inicialização do Quantidade de Campos: ' + edtquantidadecampos.Text);
     strNomeCampo := 'edtCampo' + IntToStr(ContadorCampo);
     intAlturaTop := intAlturaTop + 26;
     // Gerando campos em tempo de execução
     EditCampoTempoReal := TEdit.Create(nil);
     EditCampoTempoReal.Parent := ScrollBox1;
     EditCampoTempoReal.Height := 23;
     EditCampoTempoReal.Width := 192;
     EditCampoTempoReal.Top := intAlturaTop;
     EditCampoTempoReal.Left := 8;
     EditCampoTempoReal.Name := strNomeCampo;
     EditCampoTempoReal.Caption := '';
     EditCampoTempoReal.CharCase := ecLowerCase;
     EditCampoTempoReal.MaxLength := 20;
     EditCampoTempoReal.TabOrder := 3;
     I := I + 1;
     ContadorCampo := ContadorCampo + 1;

     Memo1.Lines.Add(strNomeCampo + ' Altura: ' + IntToStr(EditCampoTempoReal.Top));
  End;
  edtContadorCampo.Text := IntToStr(ContadorCampo);
  edtContadorAlturaTop.Text := IntTostr(intAlturaTop);
end;

procedure TfrmInstaladorSistema.PageControl1Change(Sender: TObject);
begin

end;


end.

