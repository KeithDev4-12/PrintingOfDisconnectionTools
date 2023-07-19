object MainU: TMainU
  Left = 0
  Top = 0
  Caption = 'Main Form'
  ClientHeight = 469
  ClientWidth = 663
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 97
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 663
    Height = 97
    Align = alTop
    BevelKind = bkTile
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 14
      Top = 11
      Width = 52
      Height = 13
      Caption = 'Category :'
    end
    object Label2: TLabel
      Left = 232
      Top = 11
      Width = 30
      Height = 13
      Caption = 'Book :'
    end
    object ComboBox1: TComboBox
      Left = 78
      Top = 8
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      OnChange = ComboBox1Change
    end
    object ComboBox2: TComboBox
      Left = 270
      Top = 8
      Width = 211
      Height = 21
      Style = csDropDownList
      TabOrder = 1
    end
  end
  object MainMenu1: TMainMenu
    Left = 624
    Top = 144
    object PrintMeDisconnectionNotice1: TMenuItem
      Caption = 'Print Me'
      object DisconnectionNotice1: TMenuItem
        Caption = 'Disconnection Notice'
      end
      object DisconnectionService1: TMenuItem
        Caption = 'Disconnection Service'
      end
    end
    object About1: TMenuItem
      Caption = 'About'
    end
  end
  object FDQuery1: TFDQuery
    Left = 432
    Top = 272
  end
end
