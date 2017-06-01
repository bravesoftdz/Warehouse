unit dm_RefBooks;

interface

uses
  System.SysUtils, System.Classes, dm_main, Uni, Data.DB, MemDS, DBAccess;

type
  TdmRefBooks = class(TDataModule)
    qSprRef: TUniQuery;
    spRefBookFields: TUniStoredProc;
    spForeignRefBook: TUniStoredProc;
    dsForeignRefBook: TUniDataSource;
    spInsertUpdateDeleteRefBook: TUniStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmRefBooks: TdmRefBooks;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
