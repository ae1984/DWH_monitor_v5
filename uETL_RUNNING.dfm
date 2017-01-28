object fNV_ETL_RUNNING: TfNV_ETL_RUNNING
  Left = 0
  Top = 0
  Caption = 'NV_ETL_RUNNING'
  ClientHeight = 457
  ClientWidth = 1063
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
    Top = 416
    Width = 1063
    Height = 41
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = -149
    ExplicitTop = 621
    ExplicitWidth = 1191
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
    Width = 1063
    Height = 416
    Align = alClient
    TabOrder = 1
    ExplicitLeft = -149
    ExplicitWidth = 1191
    ExplicitHeight = 621
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 1061
      Height = 414
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
          FieldName = 'STATUS'
          Width = 124
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BEGIN_REFRESH'
          Width = 124
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TYPE_LOAD'
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PROC_NAME'
          Width = 98
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OBJECT_NAME'
          Width = 163
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OBJECT_TYPE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IS_USED'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOAD_GROUP'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'REFERENCE_FROM_EVENT'
          Width = 144
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
      'select * from NV_ETL_RUNNING t')
    Left = 88
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 160
    Top = 32
  end
end
