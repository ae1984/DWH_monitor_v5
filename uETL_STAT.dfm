object fETL_STAT: TfETL_STAT
  Left = 0
  Top = 0
  Caption = 'fETL_STAT'
  ClientHeight = 662
  ClientWidth = 1191
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 621
    Width = 1191
    Height = 41
    Align = alBottom
    TabOrder = 0
    object btnRefresh_data: TButton
      Left = 16
      Top = 5
      Width = 105
      Height = 25
      Caption = 'btnRefresh_data'
      TabOrder = 0
      OnClick = btnRefresh_dataClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1191
    Height = 621
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1189
      Height = 619
      Align = alClient
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'OBJECT_NAME'
          Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1086#1073#1098#1077#1082#1090#1072
          Width = 218
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BEGIN_REFRESH_LAG'
          Title.Caption = #1057#1090#1072#1088#1090' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1103' (D-1)'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNT_LAG'
          Title.Caption = #1050#1086#1083'-'#1074#1086' '#1087#1086#1087#1099#1090#1086#1082' (D-1)'
          Width = 115
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DURATION_LAG'
          Title.Caption = #1052#1080#1085#1091#1090#1099' '#1080#1089#1087#1086#1083#1085#1077#1085#1080#1103' (D-1)'
          Width = 138
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BEGIN_REFRESH'
          Title.Caption = #1057#1090#1072#1088#1090' '#1086#1073#1085#1086#1074#1083#1077#1085#1080#1103
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'END_REFRESH'
          Title.Caption = #1054#1082#1086#1085#1095#1072#1085#1080#1077' '#1080#1083#1080' '#1086#1096#1080#1073#1082#1072
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNT'
          Title.Caption = #1050#1086#1083'-'#1074#1086' '#1087#1086#1087#1099#1090#1086#1082
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNT_OK'
          Title.Caption = #1050#1086#1083'-'#1074#1086' '#1091#1076#1072#1095
          Width = 87
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DURATION'
          Title.Caption = #1052#1080#1085#1091#1090#1099' '#1080#1089#1087#1086#1083#1085#1077#1085#1080#1103':'
          Width = 113
          Visible = True
        end>
    end
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = fMain.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      '     t.object_name'
      '     ,t.duration as duration_lag'
      '     ,t.begin_refresh as begin_refresh_lag'
      '     ,t.end_refresh as end_refresh_lag'
      '     ,t.cnt as cnt_lag'
      '     ,a.duration'
      '     ,a.begin_refresh'
      '     ,a.end_refresh'
      '     ,a.cnt'
      '     ,a.cnt_ok'
      'from ('
      '    select '
      '         t.object_name '
      
        '        ,trunc((max(t.end_refresh) - min(t.begin_refresh))*60*24' +
        ') as duration'
      '        ,min(t.begin_refresh) as begin_refresh'
      '        ,max(t.end_refresh) as end_refresh'
      '        ,count(*) as cnt'
      '    from UPDATE_LOG t'
      '    where trunc(t.begin_refresh) = trunc(sysdate-1) '
      '    group by t.object_name '
      ') t'
      'left join ('
      '    select '
      '         t.object_name '
      
        '        ,trunc((max(t.end_refresh) - min(t.begin_refresh))*60*24' +
        ') as duration'
      '        ,min(t.begin_refresh) as begin_refresh'
      '        ,max(t.end_refresh) as end_refresh'
      '        ,count(*) as cnt'
      
        '        ,sum(case when t.status = '#39'OK'#39'  then 1 else 0 end) as cn' +
        't_ok'
      '    from UPDATE_LOG t'
      '    where trunc(t.begin_refresh) = trunc(sysdate) '
      '    group by t.object_name '
      ') a on a.object_name = t.object_name'
      'order by t.object_name')
    Left = 88
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 160
    Top = 32
  end
end
