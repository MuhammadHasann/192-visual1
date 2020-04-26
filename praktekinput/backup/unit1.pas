unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    cbSimpan: TButton;
    btnReset: TButton;
    cbKota: TComboBox;
    cbxFoto: TCheckBox;
    cbxktp: TCheckBox;
    cbxIjazah: TCheckBox;
    Edit1: TEdit;
    Memo1: TMemo;
    rgJenisKelamin: TRadioGroup;
    procedure btnResetClick(Sender: TObject);
    procedure cbSimpanClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.cbSimpanClick(Sender: TObject);
begin
  memo1.lines.add(edit1.text);

  if(rgJenisKelamin.ItemIndex=0) then
   begin
     memo1.lines.add('Laki-laki');
   end
   else  if(rgJenisKelamin.ItemIndex=1) then
   begin
     memo1.lines.add('Perempuan');
   end;

   memo1.lines.add(cbKota.text);

   if(cbxFoto.Checked) then
     memo1.lines.add('Foto ada');
   if(cbxktp.Checked) then
     memo1.lines.add('KTP ada');
   if(cbxijazah.Checked) then
     memo1.lines.add('Ijazah ada');
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  //btnReset.click;
  btnResetclick(sender);
end;

procedure TForm1.btnResetClick(Sender: TObject);
begin
  edit1.text:='';
  memo1.Clear;
  rgJenisKelamin.itemindex:=-1;
  cbkota.itemindex:=-1;
  cbkota.Text:='';
  cbxfoto.checked:=false;
  cbxktp.checked:=false;
  cbxijazah.checked:=false;
end;

end.

