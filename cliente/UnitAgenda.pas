unit UnitAgenda;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.ListBox, uCustomCalendar;

type
  TFrmAgenda = class(TForm)
    Layout3: TLayout;
    Label1: TLabel;
    Image1: TImage;
    Line3: TLine;
    layCalendario: TLayout;
    lblPrestador: TLabel;
    Line1: TLine;
    lbxHorarios: TListBox;
    Line2: TLine;
    Label2: TLabel;
    lblValor: TLabel;
    Line4: TLine;
    rectAgendar: TRectangle;
    Label6: TLabel;
    Layout1: TLayout;
    lblMes: TLabel;
    imgAnterior: TImage;
    imgProximo: TImage;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure imgAnteriorClick(Sender: TObject);
    procedure imgProximoClick(Sender: TObject);
    procedure rectAgendarClick(Sender: TObject);
  private
    FCalendario: TCustomCalendar;

    procedure CliqueDia(Sender: TObject);
    procedure ListarHorarios;
    procedure AdicionaHorario(const AHora: String);
    procedure SelecionarDia(Sender: TObject);
    procedure SelecionarDiaTap(Sender: TObject; const Point: TPointF);
    procedure LimparSelecaoHorario;
  end;

var
  FrmAgenda: TFrmAgenda;

implementation

const
  SEM_SELECAO = 0;
  SELECIONADO = 1;


{$R *.fmx}

procedure TFrmAgenda.AdicionaHorario(const AHora: String);
var
  rect: TRectangle;
  lbl: TLabel;
  item: TListBoxItem;
begin
  item := TListBoxItem.Create(lbxHorarios);
  item.Text := '';
  item.Height := 55;
  item.Width := 100;

  rect := TRectangle.Create(item);
  rect.Align := TAlignLayout.Client;
  rect.Fill.Color := $FFFFFFF;
  rect.Stroke.Kind := TBrushKind.Solid;
  rect.Stroke.Color := $FFECECEC;
  rect.Margins.Top := 5;
  rect.Margins.Bottom := 5;
  rect.Margins.Right := 5;
  rect.Margins.Left := 5;
  rect.XRadius := 8;
  rect.YRadius := 8;
  rect.TagString := AHora;
  rect.Tag := 0;

  {$IFDEF MSWINDOWS}
  rect.OnClick := SelecionarDia;
  {$ELSE}
  rect.OnTap := SelecionarDiaTap;
  {$ENDIF}

  lbl := TLabel.Create(rect);
  lbl.StyledSettings := lbl.StyledSettings - [
    TStyledSetting.Size,
    TStyledSetting.FontColor,
    TStyledSetting.Style];
  lbl.Align := TAlignLayout.Center;
  lbl.TextSettings.FontColor := $FFA0A0A0;
  lbl.Text := AHora;
  lbl.Font.Size := 16;
  lbl.TextSettings.HorzAlign := TTextAlign.Center;
  lbl.TextSettings.VertAlign := TTextAlign.Center;

  rect.AddObject(lbl);

  item.AddObject(rect);
  lbxHorarios.AddObject(item);
end;

procedure TFrmAgenda.CliqueDia;
begin
  //ShowMessage('Cliclou no dia: '+FormatDateTime('dd/mm', FCalendario.SelectedDate));
  ListarHorarios;
end;

procedure TFrmAgenda.FormCreate(Sender: TObject);
begin
  FCalendario := TCustomCalendar.Create(layCalendario);
  FCalendario.OnClick := CliqueDia;

  FCalendario.DayFontSize := 14;
  FCalendario.DayFontColor := $FF737375;
  FCalendario.SelectedDayColor := $FF5CC6BA;
  FCalendario.BackgroundColor := $FFFFFFFF;

  FCalendario.ShowCalendar;
  ListarHorarios;
end;

procedure TFrmAgenda.FormDestroy(Sender: TObject);
begin
  FCalendario.DisposeOf;
end;

procedure TFrmAgenda.imgAnteriorClick(Sender: TObject);
begin
  FCalendario.PriorMonth;
  ListarHorarios;
end;

procedure TFrmAgenda.imgProximoClick(Sender: TObject);
begin
  FCalendario.NextMonth;
  ListarHorarios;
end;

procedure TFrmAgenda.LimparSelecaoHorario;
var
  indice: Integer;
  indice2: Integer;
  item: TListBoxItem;
  rect: TRectangle;
begin
  for indice := 0 to lbxHorarios.Items.Count - 1 do
  begin
    item := lbxHorarios.ItemByIndex(indice);

    for indice2 := 0 to item.ComponentCount - 1 do
    begin
      if item.Components[indice2] is TRectangle then
      begin
        rect := TRectangle(item.Components[indice2]);
        rect.Fill.Color := $FFFFFFFF;
        rect.Tag := SEM_SELECAO;
        TLabel(rect.Components[0]).TextSettings.FontColor := $FFA0A0A0;
      end;
    end;
  end;
end;

procedure TFrmAgenda.ListarHorarios;
var
  i: Integer;
begin
 lblMes.Text := FCalendario.MonthName;

 for i := 9 to 15 do
   AdicionaHorario(Format('%d:00', [i]));
end;

procedure TFrmAgenda.rectAgendarClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmAgenda.SelecionarDia(Sender: TObject);
begin
  LimparSelecaoHorario;
  TRectangle(Sender).Fill.Color := $FF5CC6BA;
  TRectangle(Sender).Tag := SELECIONADO;
  TLabel(TRectangle(Sender).Components[0]).TextSettings.FontColor := $FFFFFFFF;
end;

procedure TFrmAgenda.SelecionarDiaTap(Sender: TObject; Pointer: TPointF);
begin
  SelecionarDia(Sender);
end;

end.
