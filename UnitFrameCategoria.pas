unit UnitFrameCategoria;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Objects;

type
  TFrameCategoria = class(TFrame)
    Rectangle1: TRectangle;
    Image1: TImage;
    Label1: TLabel;
  end;

implementation

{$R *.fmx}

end.
