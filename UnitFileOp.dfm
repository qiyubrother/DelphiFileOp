object Form1: TForm1
  Left = 0
  Top = 0
  Caption = #35835#21462#25991#26412#25991#20214
  ClientHeight = 286
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    635
    286)
  PixelsPerInch = 96
  TextHeight = 13
  object btnRead: TButton
    Left = 552
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Read'
    TabOrder = 0
    OnClick = btnReadClick
  end
  object ListBox1: TListBox
    Left = 8
    Top = 39
    Width = 619
    Height = 239
    Anchors = [akLeft, akTop, akRight, akBottom]
    ItemHeight = 13
    TabOrder = 1
  end
  object EditFileName: TEdit
    Left = 8
    Top = 12
    Width = 457
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
  end
  object btnBrowse: TButton
    Left = 471
    Top = 8
    Width = 75
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Browse...'
    TabOrder = 3
    OnClick = btnBrowseClick
  end
  object OpenTextFileDialog1: TOpenTextFileDialog
    Left = 424
    Top = 216
  end
end
