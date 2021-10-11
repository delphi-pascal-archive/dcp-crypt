unit Unit1;

interface

uses
  Windows, Classes, Forms, StdCtrls, Controls, Buttons, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1  : TPanel;
    Label1  : TLabel;
    Label2  : TLabel;
    Label3  : TLabel;
    EdText  : TEdit;
    EdShifr : TEdit;
    EdResult: TEdit;
    btnEncr : TSpeedButton;
    Label4: TLabel;
    MemKey: TMemo;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    procedure btnEncrClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var Form1: TForm1;

  implementation

{$R *.dfm}

uses
    SecUnit, // ��������� ��� ����������� DCP
    SysUtils;

procedure TForm1.btnEncrClick(Sender: TObject);
begin
 // �����������(����, ��������� �����): ��������;
 EdShifr.Text  := EncodeString(MemKey.Text,EdText.Text);
 // ������������(����, ��������): �������� �����;
 EdResult.Text := DecodeString(MemKey.Text,EdShifr.Text);
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
 MemKey.Text:=RandomKey;// "���������" ����
 EdShifr.Text :='';
 EdResult.Text:='';
end;

end.
