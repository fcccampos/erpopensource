unit uPrincipal;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, ComCtrls,
  Menus, StdCtrls;

type

  { Tform_principal }

  Tform_principal = class(TForm)
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    mnuManutencaoRotas: TMenuItem;
    mnuManutencaoDePontosDeRotas: TMenuItem;
    mnuManutencaoPontosDeRotasEFuncionarios: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    mnuManutencaoDeGrupos: TMenuItem;
    mnuManutencaoDeUusuarios: TMenuItem;
    mnuManutencaoDeAcessoDeUusuario: TMenuItem;
    mnuAuditorias: TMenuItem;
    mnuAditoriaDePecas: TMenuItem;
    mnuAditoriaDeEstoque: TMenuItem;
    mnuAditoriaDeVendas: TMenuItem;
    mnuAditoriaDeContasAPagar: TMenuItem;
    mnuAditoriaDeContasAReceber: TMenuItem;
    mnuManutencaoEmpresas: TMenuItem;
    mnuTrocaDeEmpresa: TMenuItem;
    mnuSair: TMenuItem;
    { TODO 1 -oFabricio Calvete Campos -cCadastros : F_CadEmpresas F_CadUsuarios }
    N5: TMenuItem;
    N4: TMenuItem;
    mnuManutencaoParametros: TMenuItem;
    N3: TMenuItem;
    N2: TMenuItem;
    N1: TMenuItem;
    mnuCadastros: TMenuItem;
    mnuEnderecos: TMenuItem;
    mnuManutencaoDePais: TMenuItem;
    mnuManutencaoEstados: TMenuItem;
    mnuManutencaoDeCidades: TMenuItem;
    mnuManutencaoDeBairros: TMenuItem;
    mnuManutencaoRegiaoRotas: TMenuItem;
    mnuManutencaoDeRegiao: TMenuItem;
    statusbar_info: TStatusBar;
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  form_principal: Tform_principal;

implementation

uses uRotinas;

{$R *.lfm}

{ Tform_principal }

procedure Tform_principal.FormCreate(Sender: TObject);
var
  Dia, Mes, Ano: Word;
begin
  DecodeDate(Date, Ano, Mes, Dia);

  statusbar_info.Font.Name := 'Arial';
  statusbar_info.Font.Size := 09;

  statusbar_info.Panels[0].Text := 'A Validade do registro do Sistema expirará amanhã!';
  statusbar_info.Panels[0].Width := 450;
  statusbar_info.Panels[1].Text :=  InttoStr(Dia) + '/' + InttoStr(Mes) + '/' + InttoStr(Ano) + ' - ' +  DiaExtenso(Date);
  statusbar_info.Panels[1].Width := 200;
end;

end.
