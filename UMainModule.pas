unit UMainModule;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, MemDS, VirtualTable;

type
  TMainModuleU = class(TDataModule)
    FDConnection1: TFDConnection;
    qryARLedger: TFDQuery;
    qryARLedgerCode: TFloatField;
    qryARLedgerBillMonth: TStringField;
    qryARLedgerDebit: TFloatField;
    qryMaster: TFDQuery;
    VTMaster: TVirtualTable;
    VTMasterCode: TStringField;
    qryMasterCODE: TFloatField;
    qryMasterACCOUNTNUMBER: TStringField;
    qryMasterNAME: TStringField;
    qryMasterAREA: TStringField;
    qryMasterBOOK: TStringField;
    qryMasterRATECODE: TStringField;
    qryMasterWRSECRATE: TStringField;
    VTMasterAccountNumber: TStringField;
    VTMasterName: TStringField;
    VTMasterArea: TStringField;
    VTMasterBook: TStringField;
    VTMasterRateCode: TStringField;
    VTMasterWRSECRATE: TStringField;
    FDQuery1: TFDQuery;
    FDQuery1id: TFDAutoIncField;
    FDQuery1Code: TFloatField;
    FDQuery1AccountNumber: TStringField;
    FDQuery1Name: TStringField;
    FDQuery1Area: TStringField;
    FDQuery1Book: TStringField;
    FDQuery1RateCode: TStringField;
    FDQuery1WRSECRATE: TStringField;
    FDQuery1BillMonths: TStringField;
    FDQuery1NoOfBills: TLongWordField;
    FDQuery1TotalAmount: TBCDField;
    FDQuery1DateOfGenerated: TDateTimeField;
    VTMasterBillMonths: TStringField;
    VTMasterNoOfBills: TIntegerField;
    VTMasterTotalAmount: TCurrencyField;
    VTMasterDateOfGenerated: TDateTimeField;
    qryVicinity: TFDQuery;
    qryVicinityEntry: TFDAutoIncField;
    qryVicinityArea: TStringField;
    qryVicinityBook: TStringField;
    qryVicinityAddress: TStringField;
    qryVicinityCategory: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainModuleU: TMainModuleU;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
