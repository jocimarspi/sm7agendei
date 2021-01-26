unit UnitPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts, FMX.ListBox,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Edit, FMX.Objects, FMX.TabControl;

type
  TFrmPrincipal = class(TForm)
    Layout1: TLayout;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    TabControl1: TTabControl;
    TabHome: TTabItem;
    TabPesquisa: TTabItem;
    TabAgenda: TTabItem;
    TabPerfil: TTabItem;
    Layout2: TLayout;
    Layout4: TLayout;
    Image5: TImage;
    Rectangle4: TRectangle;
    edtContaNome: TEdit;
    Label4: TLabel;
    Image6: TImage;
    lbxCategorias: TListBox;
    procedure FormShow(Sender: TObject);
  private
    procedure CarregarCategorias(const ACidade: String);
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  UnitFrameCategoria;

{$R *.fmx}

procedure TFrmPrincipal.CarregarCategorias(const ACidade: String);
var
  indice: Integer;
  item: TListBoxItem;
  frame: TFrameCategoria;
begin
  lbxCategorias.Items.Clear;

  for indice := 1 to 9 do
  begin
    item := TListBoxItem.Create(lbxCategorias);
    item.Text := EmptyStr;
    item.Width := Trunc(lbxCategorias.Width / 3);
    item.Height := 150;

    frame := TFrameCategoria.Create(item);
    frame.Parent := item;
    frame.Align := TAlignLayout.Client;

    lbxCategorias.AddObject(item);
  end;

end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  CarregarCategorias(EmptyStr);
end;

end.
