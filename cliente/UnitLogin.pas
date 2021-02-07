unit UnitLogin;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Edit,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Objects, FMX.TabControl;

type
  TFrmLogin = class(TForm)
    TabControl1: TTabControl;
    TabInicial: TTabItem;
    TabLogin: TTabItem;
    TabNovaConta: TTabItem;
    Rectangle1: TRectangle;
    Image1: TImage;
    Layout1: TLayout;
    Layout2: TLayout;
    Layout3: TLayout;
    Image2: TImage;
    Label1: TLabel;
    Rectangle2: TRectangle;
    edtLoginEmail: TEdit;
    Rectangle3: TRectangle;
    edtLoginSenha: TEdit;
    rectBtnLogin: TRectangle;
    Label2: TLabel;
    Layout4: TLayout;
    Image3: TImage;
    Layout5: TLayout;
    Rectangle4: TRectangle;
    edtContaNome: TEdit;
    Rectangle5: TRectangle;
    edtContaSenha: TEdit;
    Rectangle6: TRectangle;
    Label3: TLabel;
    Layout6: TLayout;
    Label4: TLabel;
    Rectangle7: TRectangle;
    edtContaEmail: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.fmx}

end.
