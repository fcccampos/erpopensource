unit uRotinas;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

function DiasPorMes(AYear, AMonth: Integer): Integer;
function MesExtenso(Mes: Word): string;
function DiaExtenso(DataWeb: TDateTime): string;
function AnoBiSexto(AYear: Integer): Boolean;

implementation

function DiasPorMes(AYear, AMonth: Integer): Integer;
  const
   DaysInMonth: array[1..12] of Integer = (31, 28, 31, 30, 31, 30, 31, 31, 30,
      31, 30, 31);
begin
   Result := DaysInMonth[AMonth];
   if (AMonth = 2) and AnoBiSexto(AYear) then
      Inc(Result);
end;

function MesExtenso(Mes: Word): string;
const
   meses: array[0..11] of PChar =
   ('Janeiro', 'Fevereiro', 'Março', 'Abril',
      'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro',
      'Outubro', 'Novembro', 'Dezembro');
begin
   result := meses[mes - 1];
end;

function DiaExtenso(DataWeb: TDateTime): string;
begin
   case DayOfWeek(dataWeb) of
      1: Result := 'Domingo ';
      2: Result := 'Segunda Feira';
      3: Result := 'Terça Feira';
      4: Result := 'Quarta Feira';
      5: Result := 'Quinta Feira';
      6: Result := 'Sexta Feira';
      7: Result := 'Sabado ';
   end;
end;

function AnoBiSexto(AYear: Integer): Boolean;
begin
   Result := (AYear mod 4 = 0) and ((AYear mod 100 <> 0) or (AYear mod 400 = 0));
end;

end.

