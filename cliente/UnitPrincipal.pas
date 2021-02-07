unit UnitPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts, FMX.ListBox,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.Edit, FMX.Objects, FMX.TabControl,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView;

type
  TFrmPrincipal = class(TForm)
    Layout1: TLayout;
    imgHome: TImage;
    imgPesquisa: TImage;
    imgPerfil: TImage;
    imgAgenda: TImage;
    TabTelas: TTabControl;
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
    Layout3: TLayout;
    Layout5: TLayout;
    Rectangle1: TRectangle;
    Edit1: TEdit;
    Label1: TLabel;
    Image1: TImage;
    Layout6: TLayout;
    Label2: TLabel;
    lvExplorar: TListView;
    Rectangle2: TRectangle;
    Label3: TLabel;
    Layout7: TLayout;
    Label5: TLabel;
    lbxAgendamentos: TListBox;
    Layout8: TLayout;
    Label6: TLabel;
    Layout9: TLayout;
    Rectangle3: TRectangle;
    edtPerfilNome: TEdit;
    Rectangle7: TRectangle;
    edtPerfilEmail: TEdit;
    rectRedefinirSenha: TRectangle;
    Label8: TLabel;
    rectPerfilSalvarSados: TRectangle;
    Label7: TLabel;
    Line1: TLine;
    Line2: TLine;
    Line3: TLine;
    Line4: TLine;
    procedure FormShow(Sender: TObject);
    procedure imgHomeClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure lvExplorarItemClick(const Sender: TObject; const AItem: TListViewItem);
  private
    procedure CarregarCategorias(const ACidade: String);
    procedure CarregarExplorar(const ACidade, ATermo: String);
    procedure CarregarAgendamentos;
    procedure MudarAba(const AImagem: TImage);
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  UnitFrameCategoria,
  UnitFrameAgendamento,
  UnitDetalhePrestador;

{$R *.fmx}

procedure TFrmPrincipal.CarregarAgendamentos;
var
  indice: Integer;
  item: TListBoxItem;
  frame: TFrameAgendamento;
begin
  lbxAgendamentos.Items.Clear;

  for indice := 1 to 5 do
  begin
    item := TListBoxItem.Create(lbxAgendamentos);
    item.Text := EmptyStr;
    item.Height := 250;

    frame := TFrameAgendamento.Create(item);
    frame.Parent := item;
    frame.Align := TAlignLayout.Client;

    lbxAgendamentos.AddObject(item);
  end;
end;

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
    item.Width := 105;
    item.Height := 150;

    frame := TFrameCategoria.Create(item);
    frame.Parent := item;
    frame.Align := TAlignLayout.Client;

    lbxCategorias.AddObject(item);
  end;

end;

procedure TFrmPrincipal.CarregarExplorar(const ACidade, ATermo: String);
var
  i: Integer;
begin
  lvExplorar.Items.Clear;

  for i := 1 to 10 do
  begin
    with lvExplorar.Items.Add do
    begin
      Height := 80;
      TagString := i.ToString;

      TListItemText(Objects.FindDrawable('txtNome')).Text := 'Clinica ' + i.ToString;
      TListItemText(Objects.FindDrawable('txtEndereco')).Text :=
        'Av. Brasil, 1500 ' + sLineBreak +
        'Jardim das Flores' + sLineBreak +
        '(44) 99942-1641'
    end;
  end;


end;

procedure TFrmPrincipal.FormResize(Sender: TObject);
begin
  lbxCategorias.Columns := Trunc(lbxCategorias.Width / 105);
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
  MudarAba(imgHome);
  CarregarCategorias(EmptyStr);
  CarregarExplorar(EmptyStr, EmptyStr);
  CarregarAgendamentos;
end;

procedure TFrmPrincipal.Image1Click(Sender: TObject);
begin
  MudarAba(imgHome);
end;

procedure TFrmPrincipal.imgHomeClick(Sender: TObject);
begin
  MudarAba((Sender as TImage));
end;

procedure TFrmPrincipal.lvExplorarItemClick(const Sender: TObject; const AItem: TListViewItem);
begin
  FrmDetalhePrestador.Show;
end;

procedure TFrmPrincipal.MudarAba(const AImagem: TImage);
begin
  imgHome.Opacity := 0.4;
  imgPesquisa.Opacity := 0.4;
  imgAgenda.Opacity := 0.4;
  imgPerfil.Opacity := 0.4;

  AImagem.Opacity := 1;

  TabTelas.GotoVisibleTab(AImagem.Tag, TTabTransition.Slide);
end;

end.
