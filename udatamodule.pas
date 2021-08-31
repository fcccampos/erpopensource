unit uDataModule;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, IBConnection;

type

  { TDM }

  TDM = class(TDataModule)
    IBConnection1: TIBConnection;
  private

  public

  end;

var
  DM: TDM;

implementation

{$R *.lfm}

end.

