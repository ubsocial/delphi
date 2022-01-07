object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 243
  ClientWidth = 416
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 160
    Top = 40
    Width = 240
    Height = 185
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 160
    Top = 9
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=agenda'
      'User_Name=root'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    Left = 56
    Top = 16
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\xampp\mysql\bin\libmySQL.dll'
    Left = 56
    Top = 72
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    TableName = 'agenda.pessoa'
    Left = 56
    Top = 128
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 56
    Top = 184
  end
end
