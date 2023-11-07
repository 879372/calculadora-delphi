program Project1;

uses
  System.StartUpCopy,
  FMX.Forms,
  Unit1 in 'Unit1.pas' {U_calculadora};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TU_calculadora, U_calculadora);
  Application.Run;
end.
