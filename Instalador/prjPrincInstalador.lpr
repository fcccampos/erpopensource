program prjPrincInstalador;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, uPrjInstalador
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Title:='Instalador do Sistema';
  Application.Scaled:=True;
  Application.Initialize;
  Application.CreateForm(TfrmInstaladorSistema, frmInstaladorSistema);
  Application.Run;
end.

