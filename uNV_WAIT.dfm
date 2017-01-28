object fNV_WAIT: TfNV_WAIT
  Left = 0
  Top = 0
  Caption = 'NV_WAIT'
  ClientHeight = 523
  ClientWidth = 1493
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
    Top = 482
    Width = 1493
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = -117
    ExplicitTop = 416
    ExplicitWidth = 1063
    object btnRefresh_data: TButton
      Left = 16
      Top = 6
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
    Width = 1493
    Height = 482
    Align = alClient
    TabOrder = 1
    ExplicitLeft = -117
    ExplicitWidth = 1063
    ExplicitHeight = 416
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1491
      Height = 480
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
          FieldName = 'SID'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SERIAL#'
          Width = 89
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS'
          Width = 78
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OSUSER'
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MACHINE'
          Width = 99
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MODULE'
          Width = 186
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ACTION'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SQL_ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SQL_EXEC_START'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATE'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SECONDS_IN_WAIT'
          Width = 108
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'WAIT_CLASS_ID'
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'WAIT_CLASS#'
          Width = 95
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'WAIT_CLASS'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EVENT'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EVENT#'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'WAIT_TIME'
          Width = 80
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
      'select * from NV_WAIT t')
    Left = 88
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 160
    Top = 32
  end
end
