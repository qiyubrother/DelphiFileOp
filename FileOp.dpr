program FileOp;

uses
  Vcl.Forms,
  UnitFileOp in 'UnitFileOp.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
