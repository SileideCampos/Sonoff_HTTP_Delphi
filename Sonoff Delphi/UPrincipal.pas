unit UPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, REST.Types,
  FMX.StdCtrls, FMX.ScrollBox, FMX.Memo, FMX.Controls.Presentation, FMX.Edit,
  REST.Client, Data.Bind.Components, Data.Bind.ObjectScope, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt, Fmx.Bind.DBEngExt,
  FMX.Layouts;

type
  TFPrincipal = class(TForm)
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    edtBody: TEdit;
    edtURL: TEdit;
    mRetorno: TMemo;
    btnEnviar: TButton;
    BindingsList1: TBindingsList;
    LinkControlToField1: TLinkControlToField;
    procedure btnEnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrincipal: TFPrincipal;

implementation

{$R *.fmx}

procedure TFPrincipal.btnEnviarClick(Sender: TObject);
begin
  RESTClient1.BaseURL := edtURL.Text;
  RESTRequest1.Params.AddItem('dados', edtBody.Text, pkREQUESTBODY, [], ctAPPLICATION_JSON);
  RESTRequest1.Execute;
end;

end.
