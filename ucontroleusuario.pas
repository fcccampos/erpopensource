unit uControleUsuario;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, DBCtrls,
  StdCtrls, Buttons;

type

  { TformControleAcesso }

  TformControleAcesso = class(TForm)
    DBComboBancoDeDados: TDBComboBox;
    DBComboEmpresa: TDBComboBox;
    DBEditUsuario: TDBEdit;
    DBEditSenha: TDBEdit;
    DBEditCodigoEmpresa: TDBEdit;
    DBEditCodigoUsuario: TDBEdit;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
  private

  public

  end;

var
  formControleAcesso: TformControleAcesso;

implementation

uses uDataModule;

{$R *.lfm}

begin

end.
