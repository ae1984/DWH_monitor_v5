object fDAILY_ADD: TfDAILY_ADD
  Left = 0
  Top = 0
  Caption = 'fDAILY_ADD'
  ClientHeight = 632
  ClientWidth = 674
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 591
    Width = 674
    Height = 41
    Align = alBottom
    TabOrder = 0
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
    Width = 674
    Height = 591
    Align = alClient
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 672
      Height = 589
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
          Width = 314
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'BEGIN_REFRESH'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'END_REFRESH'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'STATUS'
          Width = 70
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
      'select * from NV_DAILY_ADD_RUNNING t')
    Left = 88
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 160
    Top = 32
  end
end
