unit fm_ShowRefBookClients;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  cxClasses, cxLookAndFeels, dxSkinsForm, cxGraphics, cxControls,
  cxLookAndFeelPainters, dxSkinscxPCPainter, dxLayoutLookAndFeels,
  dxLayoutContainer, dxLayoutControl, Vcl.Menus, cxContainer, cxEdit,
  cxGroupBox, cxCheckBox, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxLabel, Vcl.StdCtrls,
  cxButtons, Vcl.ExtCtrls, AdvPanel, dxBarBuiltInMenu, cxCalc, cxPC, cxSplitter,
  Vcl.ComCtrls, System.Actions, Vcl.ActnList, Vcl.ImgList, RzPanel, RzButton,
  cxTreeView, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxTL,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, cxTLData, cxDBTL, Uni,
  MemDS, DBAccess, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxPgsDlg, dxPSCore, dxPScxCommon, AdvMenus, cxButtonEdit,
  dxSkinsdxRibbonPainter, AdvToolBtn;

type
  TfmShowRefBookClients = class(TForm)
    pnlClient: TAdvPanel;
    cxGroupBox1: TcxGroupBox;
    cxSplitter1: TcxSplitter;
    cxGroupBox2: TcxGroupBox;
    RzToolbar1: TRzToolbar;
    RzToolButton1: TRzToolButton;
    RzSpacer1: TRzSpacer;
    RzToolButton2: TRzToolButton;
    RzSpacer2: TRzSpacer;
    ilRefBookActionImages: TcxImageList;
    GridRefBook: TcxGrid;
    tvRefBook: TcxGridDBTableView;
    GridRefBookLevel1: TcxGridLevel;
    spRefBookFieldsBrowse: TUniStoredProc;
    qSprRef: TUniQuery;
    ExportToExcelSaveDialog: TSaveDialog;
    prnRefBook: TdxComponentPrinter;
    prnRefBookLink1: TdxGridReportLink;
    prnStyleManager: TdxPrintStyleManager;
    alRefBook: TActionList;
    actAdd: TAction;
    actEdit: TAction;
    actView: TAction;
    actDelete: TAction;
    actRefresh: TAction;
    actExport: TAction;
    actPrint: TAction;
    actClose: TAction;
    actCopyCell: TAction;
    actRefreshGroup: TAction;
    pmDefaultPopupMenu: TAdvPopupMenu;
    N14: TMenuItem;
    N6: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N7: TMenuItem;
    N10: TMenuItem;
    miExportToExcel: TMenuItem;
    miPrint: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    actAddGroup: TAction;
    actEditGroup: TAction;
    actDeleteGroup: TAction;
    actViewGroup: TAction;
    RzToolButton5: TRzToolButton;
    RzSpacer4: TRzSpacer;
    RzToolButton3: TRzToolButton;
    pmAddClientsGroup: TAdvPopupMenu;
    miAddProdCat: TMenuItem;
    miAddProdCatSub: TMenuItem;
    actAddGroupSub: TAction;
    pmClientsGroups: TAdvPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    RzToolbar2: TRzToolbar;
    RzToolButton6: TRzToolButton;
    RzSpacer5: TRzSpacer;
    RzToolButton7: TRzToolButton;
    RzSpacer6: TRzSpacer;
    RzToolButton8: TRzToolButton;
    RzSpacer7: TRzSpacer;
    RzToolButton9: TRzToolButton;
    RzSpacer8: TRzSpacer;
    RzSpacer3: TRzSpacer;
    RzToolButton4: TRzToolButton;
    RzToolButton10: TRzToolButton;
    RzSpacer9: TRzSpacer;
    tlGridClientsGroups: TcxDBTreeList;
    cxDBTreeList1ClientFolderName: TcxDBTreeListColumn;
    actCopyCellClientsGroups: TAction;
    AdvPanel1: TAdvPanel;
    edtSearchString: TcxButtonEdit;
    actSelect: TAction;
    RzToolButton12: TRzToolButton;
    RzSpacer10: TRzSpacer;
    RzToolButton11: TRzToolButton;
    actClearFilter: TAction;
    actShowGrouped: TAction;
    tbShowGrouped: TAdvToolButton;
    spInsertUpdateDeleteRefBook: TUniStoredProc;
    spShowRefBookClients: TUniStoredProc;
    dsShowRefBookClients: TUniDataSource;
    spGetClientsForGroup: TUniStoredProc;
    dsGetClientsForGroup: TUniDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure actAddExecute(Sender: TObject);
    procedure actEditExecute(Sender: TObject);
    procedure actViewExecute(Sender: TObject);
    procedure actDeleteExecute(Sender: TObject);
    procedure actRefreshExecute(Sender: TObject);
    procedure actExportExecute(Sender: TObject);
    procedure actPrintExecute(Sender: TObject);
    procedure actCloseExecute(Sender: TObject);
    procedure actCopyCellExecute(Sender: TObject);
    procedure actRefreshGroupExecute(Sender: TObject);
    procedure actAddGroupExecute(Sender: TObject);
    procedure actEditGroupExecute(Sender: TObject);
    procedure actViewGroupExecute(Sender: TObject);
    procedure actDeleteGroupExecute(Sender: TObject);
    procedure actCopyCellClientsGroupsExecute(Sender: TObject);
    procedure alRefBookUpdate(Action: TBasicAction; var Handled: Boolean);

    procedure actSelectExecute(Sender: TObject);
    procedure actClearFilterExecute(Sender: TObject);
    procedure actShowGroupedExecute(Sender: TObject);
    procedure tvRefBookFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord,
      AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
    procedure edtSearchStringPropertiesChange(Sender: TObject);
    procedure tvRefBookDblClick(Sender: TObject);
    procedure tlGridClientsGroupsFocusedNodeChanged(Sender: TcxCustomTreeList; APrevFocusedNode,
      AFocusedNode: TcxTreeListNode);
    procedure tlGridClientsGroupsGetNodeImageIndex(Sender: TcxCustomTreeList; ANode: TcxTreeListNode;
      AIndexType: TcxTreeListImageIndexType; var AIndex: TImageIndex);
  private
    { Private declarations }
    OriginalSettings: TMemoryStream;
    OldAfterScroll: TDataSetNotifyEvent;
  public
    { Public declarations }
    CurrentID: Integer;
    constructor CreateMDI(AOwner: TComponent);
  end;

var
  fmShowRefBookClients: TfmShowRefBookClients;

implementation

{$R *.dfm}

uses fm_AddEditRefBookGoods, Vcl.Clipbrd, cxGridExportLink, fm_AddEditGroup, fm_MainForm, dm_main,
  fm_AddEditRefBookClients, cxCurrencyEdit;


constructor TfmShowRefBookClients.CreateMDI(AOwner: TComponent);
begin
  Create(AOwner);
  tbShowGrouped.Down := True;
  actSelect.Visible := False;
  FormStyle := fsMDIChild;
end;

procedure TfmShowRefBookClients.edtSearchStringPropertiesChange(Sender: TObject);
begin
  actRefreshExecute(Nil);
end;

procedure TfmShowRefBookClients.actAddExecute(Sender: TObject);
begin
  Application.CreateForm(TfmAddEditRefBookClients, fmAddEditRefBookClients);
  try
    fmAddEditRefBookClients.RefBookName := qSprRef.FieldByName('ReferenceRUSName').AsString;
    fmAddEditRefBookClients.ParentRefBookForm := Self;
    fmAddEditRefBookClients.spRefBookFieldsAddEditView.ParamByName('ReferenceID').AsInteger := qSprRef.ParamByName('ID').AsInteger;
    fmAddEditRefBookClients.ParentID := spShowRefBookClients.FieldByName('ClientFolderID').AsInteger;
    fmAddEditRefBookClients.spInsertUpdateDeleteRefBook.CreateProcCall(qSprRef.FieldByName('InsertProcName').AsString);
    if fmAddEditRefBookClients.ShowModal = mrOk then
    begin
      spGetClientsForGroup.Refresh;
      spGetClientsForGroup.Locate(tvRefBook.DataController.KeyFieldNames, fmAddEditRefBookClients.CurrentID,[]);
    end;
  finally
    FreeAndNil(fmAddEditRefBookClients);
  end;
end;

procedure TfmShowRefBookClients.actAddGroupExecute(Sender: TObject);
begin
  Application.CreateForm(TfmAddEditGroup, fmAddEditGroup);
  try
    qSprRef.Close;
    qSprRef.ParamByName('ID').AsInteger := 10; // ��� �����������!
    qSprRef.Open;
    fmAddEditGroup.RefBookName := qSprRef.FieldByName('ReferenceRUSName').AsString;
    fmAddEditGroup.spParentRefBook := spShowRefBookClients;
    fmAddEditGroup.spRefBookFieldsAddEditView.ParamByName('ReferenceID').AsInteger := qSprRef.ParamByName('ID').AsInteger;
    fmAddEditGroup.edtGroupName.Name := 'ClientFolderName';
    if (Sender = actAddGroupSub) then //���������� ��������� ������ �������
      fmAddEditGroup.ParentID := spShowRefBookClients.FieldByName('ClientFolderID').AsInteger
    else
      fmAddEditGroup.ParentID := spShowRefBookClients.FieldByName('ParentFolderID').AsInteger;
    fmAddEditGroup.spInsertUpdateDeleteRefBook.CreateProcCall(qSprRef.FieldByName('InsertProcName').AsString);
    if fmAddEditGroup.ShowModal = mrOk then
    begin
      spShowRefBookClients.Refresh;
      spShowRefBookClients.Locate(tlGridClientsGroups.DataController.KeyField, fmAddEditGroup.CurrentID,[]);
    end;
  finally
    FreeAndNil(fmAddEditGroup);
    qSprRef.Close;
    qSprRef.ParamByName('ID').AsInteger := 11; // ��� �����������!
    qSprRef.Open;
  end;
end;

procedure TfmShowRefBookClients.actClearFilterExecute(Sender: TObject);
begin
  edtSearchString.Clear;
  actRefreshExecute(Nil);
end;

procedure TfmShowRefBookClients.actCloseExecute(Sender: TObject);
begin
  if FormStyle = fsMDIChild then
    Close
  else
    ModalResult := mrCancel;
end;

procedure TfmShowRefBookClients.actCopyCellExecute(Sender: TObject);
begin
  ClipBoard.AsText := tvRefBook.Controller.FocusedRecord.Values[tvRefBook.Controller.FocusedColumn.Index];
end;

procedure TfmShowRefBookClients.actCopyCellClientsGroupsExecute(Sender: TObject);
begin
  tlGridClientsGroups.CopySelectedToClipboard;
end;

procedure TfmShowRefBookClients.actDeleteExecute(Sender: TObject);
begin
  if MessageBox(0,'������� ������?', '�������������', MB_YESNO + MB_ICONQUESTION) <> id_yes then
    Exit;
  with spInsertUpdateDeleteRefBook do
  begin
    CreateProcCall(qSprRef.FieldByName('DeleteProcName').AsString);
    ParamByName('ID').Value := spGetClientsForGroup.FieldByName(tvRefBook.DataController.KeyFieldNames).AsInteger;
    Execute;
  end;
  spGetClientsForGroup.Refresh;
end;

procedure TfmShowRefBookClients.actDeleteGroupExecute(Sender: TObject);
begin
  if MessageBox(0,'������� ������?', '�������������', MB_YESNO + MB_ICONQUESTION) <> id_yes then
    Exit;

  try
    qSprRef.Close;
    qSprRef.ParamByName('ID').AsInteger := 10; // ��� �����������!
    qSprRef.Open;
    with spInsertUpdateDeleteRefBook do
    begin
      CreateProcCall(qSprRef.FieldByName('DeleteProcName').AsString);
      ParamByName('ID').Value := spShowRefBookClients.FieldByName(tlGridClientsGroups.DataController.KeyField).AsInteger;
      Execute;
    end;
    spShowRefBookClients.Refresh;
  finally
    FreeAndNil(fmAddEditGroup);
    qSprRef.Close;
    qSprRef.ParamByName('ID').AsInteger := 11; // ��� �����������!
    qSprRef.Open;
  end;
end;

procedure TfmShowRefBookClients.actEditExecute(Sender: TObject);
begin
  Application.CreateForm(TfmAddEditRefBookClients, fmAddEditRefBookClients);
  try
    fmAddEditRefBookClients.FormMode := fmEdit;
    fmAddEditRefBookClients.RefBookName := qSprRef.FieldByName('ReferenceRUSName').AsString;
    fmAddEditRefBookClients.ParentRefBookForm := Self;
    fmAddEditRefBookClients.spRefBookFieldsAddEditView.ParamByName('ReferenceID').AsInteger := qSprRef.ParamByName('ID').AsInteger;
    fmAddEditRefBookClients.CurrentID := spGetClientsForGroup.FieldByName(tvRefBook.DataController.KeyFieldNames).AsInteger;
    fmAddEditRefBookClients.ParentID := spShowRefBookClients.FieldByName('ClientFolderID').AsInteger;
    fmAddEditRefBookClients.spInsertUpdateDeleteRefBook.CreateProcCall(qSprRef.FieldByName('UpdateProcName').AsString);
    fmAddEditRefBookClients.spInsertUpdateDeleteRefBook.ParamByName('ID').Value := fmAddEditRefBookClients.CurrentID;
    if fmAddEditRefBookClients.ShowModal = mrOk then
    begin
      spGetClientsForGroup.Refresh;
      spGetClientsForGroup.Locate(tvRefBook.DataController.KeyFieldNames, fmAddEditRefBookClients.CurrentID,[]);
    end;
  finally
    FreeAndNil(fmAddEditRefBookClients);
  end;
end;

procedure TfmShowRefBookClients.actEditGroupExecute(Sender: TObject);
begin
  Application.CreateForm(TfmAddEditGroup, fmAddEditGroup);
  try
    fmAddEditGroup.FormMode := fmEdit;
    qSprRef.Close;
    qSprRef.ParamByName('ID').AsInteger := 10; // ��� �����������!
    qSprRef.Open;
    fmAddEditGroup.RefBookName := qSprRef.FieldByName('ReferenceRUSName').AsString;
    fmAddEditGroup.spParentRefBook := spShowRefBookClients;
    fmAddEditGroup.spRefBookFieldsAddEditView.ParamByName('ReferenceID').AsInteger := qSprRef.ParamByName('ID').AsInteger;
    fmAddEditGroup.CurrentID := spShowRefBookClients.FieldByName(tlGridClientsGroups.DataController.KeyField).AsInteger;
    fmAddEditGroup.ParentID := spShowRefBookClients.FieldByName('ParentFolderID').AsInteger;
    fmAddEditGroup.edtGroupName.Name := 'ClientFolderName';
    fmAddEditGroup.spInsertUpdateDeleteRefBook.CreateProcCall(qSprRef.FieldByName('UpdateProcName').AsString);
    fmAddEditGroup.spInsertUpdateDeleteRefBook.ParamByName('ID').Value := fmAddEditGroup.CurrentID;
    if fmAddEditGroup.ShowModal = mrOk then
    begin
      spShowRefBookClients.Refresh;
      spShowRefBookClients.Locate(tlGridClientsGroups.DataController.KeyField, fmAddEditGroup.CurrentID,[]);
    end;
  finally
    FreeAndNil(fmAddEditGroup);
    qSprRef.Close;
    qSprRef.ParamByName('ID').AsInteger := 11; // ��� �����������!
    qSprRef.Open;
  end;
end;

procedure TfmShowRefBookClients.actExportExecute(Sender: TObject);
begin
  if ExportToExcelSaveDialog.Execute(Self.Handle) then
    if AnsiLowerCase(ExtractFileExt(ExportToExcelSaveDialog.FileName)) = '.xls' then
      ExportGridToExcel(ExportToExcelSaveDialog.FileName, GridRefBook, True, True, True, '')
    else
      ExportGridToXLSX(ExportToExcelSaveDialog.FileName, GridRefBook, True, True, True, '');
end;

procedure TfmShowRefBookClients.actPrintExecute(Sender: TObject);
begin
  prnRefBook.Preview();
end;

procedure TfmShowRefBookClients.actRefreshExecute(Sender: TObject);
begin
  if tbShowGrouped.Down then
    spGetClientsForGroup.ParamByName('ClientFolderID').AsInteger := spShowRefBookClients.FieldByName('ClientFolderID').AsInteger
  else
    spGetClientsForGroup.ParamByName('ClientFolderID').Clear;
  if (Sender = nil) and (Length(edtSearchString.Text) < 4) then //nil - ��������� ��� ����� ������
    spGetClientsForGroup.ParamByName('SearchString').Clear
  else
    spGetClientsForGroup.ParamByName('SearchString').AsString := edtSearchString.Text;

  spGetClientsForGroup.Close;
  spGetClientsForGroup.Open;
end;

procedure TfmShowRefBookClients.actRefreshGroupExecute(Sender: TObject);
begin
  spShowRefBookClients.Close;
  spShowRefBookClients.Open;
end;

procedure TfmShowRefBookClients.actSelectExecute(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TfmShowRefBookClients.actShowGroupedExecute(Sender: TObject);
begin
  if tbShowGrouped.Down then
  begin
    tlGridClientsGroups.OnFocusedNodeChanged := tlGridClientsGroupsFocusedNodeChanged;
    tlGridClientsGroups.Enabled := True;
  end
  else
  begin
    tlGridClientsGroups.OnFocusedNodeChanged := nil;
    tlGridClientsGroups.Enabled := False;
  end;
  actRefreshExecute(Nil);
end;

procedure TfmShowRefBookClients.actViewExecute(Sender: TObject);
begin
  Application.CreateForm(TfmAddEditRefBookClients, fmAddEditRefBookClients);
  try
    fmAddEditRefBookClients.FormMode := fmView;
    fmAddEditRefBookClients.RefBookName := qSprRef.FieldByName('ReferenceRUSName').AsString;
    fmAddEditRefBookClients.ParentRefBookForm := Self;
    fmAddEditRefBookClients.spRefBookFieldsAddEditView.ParamByName('ReferenceID').AsInteger := qSprRef.ParamByName('ID').AsInteger;
    fmAddEditRefBookClients.ShowModal;
  finally
    FreeAndNil(fmAddEditRefBookClients);
  end;
end;

procedure TfmShowRefBookClients.actViewGroupExecute(Sender: TObject);
begin
  Application.CreateForm(TfmAddEditGroup, fmAddEditGroup);
  try
    fmAddEditGroup.FormMode := fmView;
    qSprRef.Close;
    qSprRef.ParamByName('ID').AsInteger := 10; // ��� �����������!
    qSprRef.Open;
    fmAddEditGroup.FormMode := fmView;
    fmAddEditGroup.RefBookName := qSprRef.FieldByName('ReferenceRUSName').AsString;
    fmAddEditGroup.spParentRefBook := spShowRefBookClients;
    fmAddEditGroup.spRefBookFieldsAddEditView.ParamByName('ReferenceID').AsInteger := qSprRef.ParamByName('ID').AsInteger;
    fmAddEditGroup.CurrentID := spShowRefBookClients.FieldByName(tlGridClientsGroups.DataController.KeyField).AsInteger;
    fmAddEditGroup.ParentID := spShowRefBookClients.FieldByName('ParentFolderID').AsInteger;
    fmAddEditGroup.edtGroupName.Name := 'ClientFolderName';
    fmAddEditGroup.ShowModal;
  finally
    FreeAndNil(fmAddEditGroup);
  end;
end;

procedure TfmShowRefBookClients.alRefBookUpdate(Action: TBasicAction; var Handled: Boolean);
begin
  actEdit.Enabled := (tvRefBook.Controller.FocusedRow <> nil);
  actDelete.Enabled := actEdit.Enabled;
  actView.Enabled := actEdit.Enabled;
  actCopyCell.Enabled := actEdit.Enabled;

  actEditGroup.Enabled := (tlGridClientsGroups.FocusedNode <> nil);
  actDeleteGroup.Enabled := actEditGroup.Enabled;
  actViewGroup.Enabled := actEditGroup.Enabled;
  actCopyCellClientsGroups.Enabled := actEditGroup.Enabled;
end;

procedure TfmShowRefBookClients.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if FormStyle = fsMDIChild then
    PostMessage(MainForm.Handle,WM_USER + 1, UIntPtr(Self), 0)
end;

procedure TfmShowRefBookClients.FormCreate(Sender: TObject);
begin
  CurrentID := -1;
end;

procedure TfmShowRefBookClients.FormShow(Sender: TObject);
var
  i: Integer;
begin
  spShowRefBookClients.Open;

  qSprRef.ParamByName('ID').AsInteger := 11; // ��� �����������!
  qSprRef.Open;

  Caption := '���������� - ' + qSprRef.FieldByName('ReferenceRUSName').AsString;

  tvRefBook.DataController.CreateAllItems;
  spRefBookFieldsBrowse.Close;
  spRefBookFieldsBrowse.ParamByName('ReferenceID').AsInteger := qSprRef.FieldByName('ReferenceID').AsInteger;
  spRefBookFieldsBrowse.Open;
  for i:= 0 to tvRefBook.ColumnCount - 1 do
    if (spRefBookFieldsBrowse.Locate('BrowserFieldName', tvRefBook.Columns[i].Caption, [loCaseInsensitive])) then
    begin
      if (spRefBookFieldsBrowse.FieldByName('IsVisible').AsInteger = 0) then
        tvRefBook.Columns[i].Visible := False;

      tvRefBook.Columns[i].Caption := spRefBookFieldsBrowse.FieldByName('BrowserFieldRUSName').AsString;
      if spRefBookFieldsBrowse.FieldByName('IsKeyField').AsInteger = 1 then
        tvRefBook.DataController.KeyFieldNames := spRefBookFieldsBrowse.FieldByName('BrowserFieldName').AsString;
      if spRefBookFieldsBrowse.FieldByName('ColumnTypeID').AsInteger = 5 then
      begin
        tvRefBook.Columns[i].PropertiesClass := TcxCheckBoxProperties;
        with tvRefBook.Columns[i].Properties as TcxCheckBoxProperties do
        begin
          AllowGrayed := False;
          ValueChecked := 1;
          ValueUnchecked := 0;
        end;
      end;
      if spRefBookFieldsBrowse.FieldByName('HaveFilter').AsInteger = 0 then
        tvRefBook.Columns[i].Options.Filtering := False;
      if spRefBookFieldsBrowse.FieldByName('HaveSummary').AsInteger = 1 then
      begin
        tvRefBook.Columns[i].Summary.FooterKind := TcxSummaryKind(spRefBookFieldsBrowse.FieldByName('FooterType').AsInteger);
        tvRefBook.Columns[i].Summary.FooterFormat := spRefBookFieldsBrowse.FieldByName('FooterFormat').AsString;
        with TcxGridDBTableSummaryItem(tvRefBook.DataController.Summary.FooterSummaryItems.Add) do
        begin
          Kind := TcxSummaryKind(spRefBookFieldsBrowse.FieldByName('FooterType').AsInteger);
          Column := tvRefBook.Columns[i];
          FieldName := spRefBookFieldsBrowse.FieldByName('BrowserFieldName').AsString;
        end;
      end;

      tvRefBook.Columns[i].Width := spRefBookFieldsBrowse.FieldByName('Width').AsInteger;
      if not spRefBookFieldsBrowse.FieldByName('DisplayFormat').IsNull then
      begin
        tvRefBook.Columns[i].PropertiesClass := TcxCurrencyEditProperties;
        (tvRefBook.Columns[i].Properties as TcxCurrencyEditProperties).DisplayFormat := spRefBookFieldsBrowse.FieldByName('DisplayFormat').AsString;
      end;
    end
    else
      tvRefBook.Columns[i].Visible := False;
  actEdit.Enabled := (tvRefBook.DataController.KeyFieldNames <> '');

  tvRefBook.StoreToStream(OriginalSettings);
  tvRefBook.RestoreFromRegistry('Software\Warehouse\GridsSettings\RefBooks\' + qSprRef.FieldByName('ReferenceTableName').AsString);

  actShowGroupedExecute(Nil);

  if CurrentID <> -1 then
    tvRefBook.DataController.FocusedRecordIndex := tvRefBook.DataController.FindRecordIndexByKey(CurrentID);

end;

procedure TfmShowRefBookClients.tlGridClientsGroupsFocusedNodeChanged(Sender: TcxCustomTreeList; APrevFocusedNode,
  AFocusedNode: TcxTreeListNode);
begin
  spGetClientsForGroup.Close;
  spGetClientsForGroup.ParamByName('ClientFolderID').AsInteger := spShowRefBookClients.FieldByName('ClientFolderID').AsInteger;
  spGetClientsForGroup.Open;
end;

procedure TfmShowRefBookClients.tlGridClientsGroupsGetNodeImageIndex(Sender: TcxCustomTreeList; ANode: TcxTreeListNode;
  AIndexType: TcxTreeListImageIndexType; var AIndex: TImageIndex);
begin
  if AIndexType = tlitStateIndex then
    if ANode.Expanded then
      AIndex := 14
    else
      AIndex := 13;
end;

procedure TfmShowRefBookClients.tvRefBookDblClick(Sender: TObject);
begin
  if actSelect.Visible then
    actSelectExecute(nil)
  else
    actViewExecute(nil);
end;

procedure TfmShowRefBookClients.tvRefBookFocusedRecordChanged(Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
var
  i: TcxDBTreeListNode;
begin
  if tbShowGrouped.Down then
    Exit;
  i := tlGridClientsGroups.FindNodeByKeyValue(spGetClientsForGroup.FieldByName('ClientFolderID').AsInteger);

  if i <> nil then
  begin
    i.Selected := True;
    i.Focused := True;
    tlGridClientsGroups.TopVisibleNode := i;
  end;
end;

end.
