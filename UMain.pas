unit UMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TMainU = class(TForm)
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    PrintMeDisconnectionNotice1: TMenuItem;
    DisconnectionNotice1: TMenuItem;
    DisconnectionService1: TMenuItem;
    About1: TMenuItem;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    FDQuery1: TFDQuery;
    ComboBox2: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
    procedure CategoryInject(ACombobox:TComboBox;AFDQuery:TFDQuery);
    procedure BookInject(ACategory:String;ACombobox:TComboBox;AFDQuery:TFDQuery);
  public
    { Public declarations }
  end;

var
  MainU: TMainU;

implementation

{$R *.dfm}

Uses UMainModule;

{ TMainU }

procedure TMainU.BookInject(ACategory: String; ACombobox: TComboBox;
  AFDQuery: TFDQuery);
begin
  ACombobox.Items.Clear;
  AFDQuery.Close;
  AFDQuery.Open;
  AFDQuery.First;

  AFDQuery.Filtered := False;
  AFDQuery.Filter := 'CATEGORY = ' + QuotedStr(ACategory);
  AFDQuery.Filtered := True;
  AFDQuery.First;

  AFDQuery.IndexFieldNames := 'Book';

  while not AFDQuery.EOF do begin
    ACombobox.Items.Add(AFDQuery.FieldByName('Book').AsString + ' - ' + AFDQuery.FieldByName('Address').AsString);
    AFDQuery.Next;
  end;

  ACombobox.ItemIndex := 0;
end;

procedure TMainU.CategoryInject(ACombobox:TComboBox;AFDQuery:TFDQuery);
Var
  ACategory:String;
begin
  ACombobox.Items.Clear;
  AFDQuery.Close;
  AFDQuery.Open;
  AFDQuery.First;

  AFDQuery.IndexFieldNames := 'CATEGORY';

  while not AFDQuery.EOF do begin
    if ACategory <> AFDQuery.FieldByName('CATEGORY').AsString then begin
      ACombobox.Items.Add(AFDQuery.FieldByName('CATEGORY').AsString);
      ACategory := AFDQuery.FieldByName('CATEGORY').AsString
    end;
    AFDQuery.Next;
  end;

  ACombobox.ItemIndex := 0;
end;

procedure TMainU.ComboBox1Change(Sender: TObject);
begin
   BookInject(Combobox1.Text,Combobox2,MainModuleU.qryVicinity);
end;

procedure TMainU.FormShow(Sender: TObject);
begin
   CategoryInject(ComboBox1,MainModuleU.qryVicinity);
   BookInject(Combobox1.Text,Combobox2,MainModuleU.qryVicinity);
end;

end.
