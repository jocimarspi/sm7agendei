program agendei;

uses
  System.StartUpCopy,
  FMX.Forms,
  UnitLogin in 'UnitLogin.pas' {FrmLogin},
  UnitPrincipal in 'UnitPrincipal.pas' {FrmPrincipal},
  UnitFrameCategoria in 'UnitFrameCategoria.pas' {FrameCategoria: TFrame},
  UnitFrameAgendamento in 'UnitFrameAgendamento.pas' {FrameAgendamento: TFrame},
  UnitDetalhePrestador in 'UnitDetalhePrestador.pas' {FrmDetalhePrestador},
  UnitFrameServico in 'UnitFrameServico.pas' {FrameServico: TFrame},
  UnitAgenda in 'UnitAgenda.pas' {FrmAgenda},
  uCustomCalendar in '3rdParty\uCustomCalendar.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmLogin, FrmLogin);
  Application.CreateForm(TFrmDetalhePrestador, FrmDetalhePrestador);
  Application.CreateForm(TFrmAgenda, FrmAgenda);
  Application.Run;
end.
