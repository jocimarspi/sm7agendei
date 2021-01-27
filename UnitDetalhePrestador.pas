unit UnitDetalhePrestador;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Controls.Presentation,
  FMX.StdCtrls, FMX.Objects, FMX.Layouts, FMX.ListBox;

type
  TFrmDetalhePrestador = class(TForm)
    imgFoto: TImage;
    lblServico: TLabel;
    lblNome: TLabel;
    Line4: TLine;
    Label1: TLabel;
    Line1: TLine;
    lbxServicos: TListBox;
    procedure FormShow(Sender: TObject);
  private
    procedure CarregarServicos;
  end;

var
  FrmDetalhePrestador: TFrmDetalhePrestador;

implementation

uses
  UnitFrameServico;

{$R *.fmx}

procedure TFrmDetalhePrestador.CarregarServicos;
var
  indice: Integer;
  item: TListBoxItem;
  frame: TFrameServico;
begin
  lbxServicos.Items.Clear;

  for indice := 1 to 5 do
  begin
    item := TListBoxItem.Create(lbxServicos);
    item.Text := EmptyStr;
    item.Height := 60;

    frame := TFrameServico.Create(item);
    frame.Parent := item;
    frame.Align := TAlignLayout.Client;

    lbxServicos.AddObject(item);
  end;
end;

procedure TFrmDetalhePrestador.FormShow(Sender: TObject);
begin
  CarregarServicos;
end;

end.
