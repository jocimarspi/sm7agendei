unit UnitFrameServico;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls, FMX.Layouts,
  FMX.Objects, FMX.Controls.Presentation;

type
  TFrameServico = class(TFrame)
    lblPrestador: TLabel;
    lblValor: TLabel;
    rectAgendar: TRectangle;
    Label6: TLabel;
    Layout1: TLayout;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.fmx}

end.
