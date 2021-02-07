object Dm: TDm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 305
  Width = 410
  object Connection: TFDConnection
    Left = 24
    Top = 8
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 112
    Top = 8
  end
  object EventsUsuario: TDWServerEvents
    IgnoreInvalidParams = False
    Events = <
      item
        Routes = [crAll]
        NeedAuthorization = True
        DWParams = <
          item
            TypeObject = toParam
            ObjectDirection = odIN
            ObjectValue = ovString
            ParamName = 'email'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odIN
            ObjectValue = ovString
            ParamName = 'senha'
            Encoded = True
          end>
        JsonMode = jmPureJSON
        Name = 'login'
        EventName = 'login'
        OnlyPreDefinedParams = False
        OnReplyEventByType = EventsUsuarioEventsloginReplyEventByType
      end
      item
        Routes = [crAll]
        NeedAuthorization = False
        DWParams = <
          item
            TypeObject = toParam
            ObjectDirection = odIN
            ObjectValue = ovLargeint
            ParamName = 'id_usuario'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odIN
            ObjectValue = ovString
            ParamName = 'email'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odIN
            ObjectValue = ovString
            ParamName = 'nome'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odIN
            ObjectValue = ovString
            ParamName = 'senha'
            Encoded = True
          end>
        JsonMode = jmPureJSON
        Name = 'cadastro'
        EventName = 'cadastro'
        OnlyPreDefinedParams = False
        OnReplyEventByType = EventsUsuarioEventscadastroReplyEventByType
      end>
    ContextName = 'usuario'
    Left = 56
    Top = 88
  end
  object EventsCategoria: TDWServerEvents
    IgnoreInvalidParams = False
    Events = <
      item
        Routes = [crAll]
        NeedAuthorization = False
        DWParams = <
          item
            TypeObject = toParam
            ObjectDirection = odIN
            ObjectValue = ovString
            ParamName = 'cidade'
            Encoded = True
          end>
        JsonMode = jmPureJSON
        Name = 'listar'
        EventName = 'listar'
        OnlyPreDefinedParams = False
        OnReplyEventByType = EventsCategoriaEventslistarReplyEventByType
      end>
    ContextName = 'categoria'
    Left = 56
    Top = 136
  end
  object EventsEmpresa: TDWServerEvents
    IgnoreInvalidParams = False
    Events = <
      item
        Routes = [crAll]
        NeedAuthorization = False
        DWParams = <
          item
            TypeObject = toParam
            ObjectDirection = odIN
            ObjectValue = ovString
            ParamName = 'cidade'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odIN
            ObjectValue = ovInteger
            ParamName = 'id_empresa'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odIN
            ObjectValue = ovString
            ParamName = 'busca'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovString
            ParamName = 'ind_foto'
            Encoded = True
          end>
        JsonMode = jmPureJSON
        Name = 'listar'
        EventName = 'listar'
        OnlyPreDefinedParams = False
        OnReplyEventByType = EventsEmpresaEventslistarReplyEventByType
      end>
    ContextName = 'empresa'
    Left = 56
    Top = 184
  end
  object EventsServico: TDWServerEvents
    IgnoreInvalidParams = False
    Events = <
      item
        Routes = [crAll]
        NeedAuthorization = False
        DWParams = <
          item
            TypeObject = toParam
            ObjectDirection = odIN
            ObjectValue = ovInteger
            ParamName = 'id_empresa'
            Encoded = True
          end>
        JsonMode = jmPureJSON
        Name = 'listar'
        EventName = 'listar'
        OnlyPreDefinedParams = False
        OnReplyEventByType = EventsServicoEventslistarReplyEventByType
      end
      item
        Routes = [crAll]
        NeedAuthorization = False
        DWParams = <
          item
            TypeObject = toParam
            ObjectDirection = odIN
            ObjectValue = ovLargeint
            ParamName = 'id_servico'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odIN
            ObjectValue = ovString
            ParamName = 'dt'
            Encoded = True
          end>
        JsonMode = jmPureJSON
        Name = 'horario'
        EventName = 'horario'
        OnlyPreDefinedParams = False
        OnReplyEventByType = EventsServicoEventshorarioReplyEventByType
      end
      item
        Routes = [crAll]
        NeedAuthorization = False
        DWParams = <
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovLargeint
            ParamName = 'id_usuario'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovLargeint
            ParamName = 'id_servico'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovString
            ParamName = 'dt'
            Encoded = True
          end
          item
            TypeObject = toParam
            ObjectDirection = odINOUT
            ObjectValue = ovString
            ParamName = 'hora'
            Encoded = True
          end>
        JsonMode = jmPureJSON
        Name = 'reservar'
        EventName = 'reservar'
        OnlyPreDefinedParams = False
        OnReplyEventByType = EventsServicoEventsreservarReplyEventByType
      end>
    ContextName = 'servico'
    Left = 152
    Top = 184
  end
  object EventsReserva: TDWServerEvents
    IgnoreInvalidParams = False
    Events = <
      item
        Routes = [crAll]
        NeedAuthorization = False
        DWParams = <
          item
            TypeObject = toParam
            ObjectDirection = odIN
            ObjectValue = ovLargeint
            ParamName = 'id_usuario'
            Encoded = True
          end>
        JsonMode = jmPureJSON
        Name = 'listar'
        EventName = 'listar'
        OnlyPreDefinedParams = False
        OnReplyEventByType = EventsReservaEventslistarReplyEventByType
      end>
    ContextName = 'reserva'
    Left = 248
    Top = 184
  end
end
