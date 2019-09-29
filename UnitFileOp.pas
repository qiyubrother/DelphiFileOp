unit UnitFileOp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtDlgs;

type
  TForm1 = class(TForm)
    btnRead: TButton;
    ListBox1: TListBox;
    EditFileName: TEdit;
    btnBrowse: TButton;
    OpenTextFileDialog1: TOpenTextFileDialog;
    procedure btnReadClick(Sender: TObject);
    procedure btnBrowseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnBrowseClick(Sender: TObject);
begin
  self.OpenTextFileDialog1.Execute();
  self.EditFileName.Text := self.OpenTextFileDialog1.FileName;
end;

procedure TForm1.btnReadClick(Sender: TObject);
var
  fileName: string;
  f: textfile;
  line: string;
  arr: TArray<string>;
  split_arr:TStringList;
  splitChar: array[0..0] of char;

begin
  splitChar[0] := '.';
  //fileName := 'C:\Users\qiyub\desktop\lst.txt';
  fileName := EditFileName.Text;
  assignFile(f, fileName);
  reset(f);
  while (not Eof(f)) do
  begin
    readln(f, line);
//    arr := line.Split(splitChar);
//    if length(arr) <> 1 then
//    begin
//      line := line.Replace(splitChar, '::');
//    end;

    self.ListBox1.Items.Add(line);
  end;
  closeFile(f);
end;

end.
