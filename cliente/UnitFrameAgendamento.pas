unit UnitFrameAgendamento;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Objects,
  FMX.Layouts, FMX.Controls.Presentation;

type
  TFrameAgendamento = class(TFrame)
    lblServico: TLabel;
    lblNome: TLabel;
    Layout1: TLayout;
    Image1: TImage;
    lblData: TLabel;
    Image2: TImage;
    lblHora: TLabel;
    Image3: TImage;
    lblValor: TLabel;
    Layout2: TLayout;
    Image4: TImage;
    lblEndereco: TLabel;
    Layout3: TLayout;
    rectReagendar: TRectangle;
    Label6: TLabel;
    rectCancelar: TRectangle;
    Label7: TLabel;
    Line1: TLine;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
