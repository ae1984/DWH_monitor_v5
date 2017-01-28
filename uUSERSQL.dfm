object fUSERSQL: TfUSERSQL
  Left = 0
  Top = 0
  Caption = 'fUSERSQL'
  ClientHeight = 603
  ClientWidth = 1484
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
    Top = 563
    Width = 1484
    Height = 40
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = -313
    ExplicitWidth = 1142
    object btnGetData: TButton
      Left = 8
      Top = 6
      Width = 97
      Height = 25
      Caption = 'btnRefreshData'
      TabOrder = 0
      OnClick = btnGetDataClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 697
    Height = 563
    Align = alLeft
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 695
      Height = 561
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
          FieldName = 'SQL_ID'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MODULE'
          Width = 184
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MACHINE'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'USERNAME'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OSUSER'
          Width = 114
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNT_SES'
          Width = 50
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 697
    Top = 0
    Width = 787
    Height = 563
    Align = alClient
    TabOrder = 2
    ExplicitLeft = 96
    ExplicitWidth = 733
    ExplicitHeight = 568
    object DBMemo1: TDBMemo
      Left = 1
      Top = 1
      Width = 785
      Height = 561
      Align = alClient
      DataField = 'SQL_FULLTEXT'
      DataSource = DataSource1
      ScrollBars = ssBoth
      TabOrder = 0
      ExplicitWidth = 731
      ExplicitHeight = 566
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 584
    Top = 40
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = fMain.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select t.sql_id,t.module, t.machine, t.username,t.osuser,t.cnt_s' +
        'es,s.sql_fulltext'
      '      ,nvl(t.username,'#39#39')||'#39'-'#39'||nvl(t.osuser,'#39#39') as pk '
      'from ('
      'select '
      '      sysdate as sdt'
      '      ,t.sql_id,t.username, t.machine'
      '      ,t.osuser,t.module,count(*) as cnt_ses--, t.status'
      'from V$SESSION t'
      
        'group by t.sql_id,t.module, t.machine, t.username,t.osuser--,t.s' +
        'tatus'
      ') t'
      'left join NT_SQLID s on s.sql_id = t.sql_id'
      'order by t.cnt_ses desc')
    Left = 585
    Top = 120
  end
end
