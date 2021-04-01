unit SRC_1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls,FMX.Platform,FMX.PhoneDialer,FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Colors, FMX.Edit, FMX.ScrollBox, FMX.Effects;

type
  TForm1 = class(TForm)
    ToolBar1: TToolBar;
    Label1: TLabel;
    Button1: TButton;
    PresentedScrollBox1: TPresentedScrollBox;
    Panel1: TPanel;
    ColorBox3: TColorBox;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Panel2: TPanel;
    Timer1: TTimer;
    Edit3: TEdit;
    ColorBox1: TColorBox;
    ColorBox2: TColorBox;
    GlowEffect1: TGlowEffect;
    Label4: TLabel;
    Panel3: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Timer2: TTimer;
    Label7: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
  private
    { Déclarations privées }
    PhoneDialerService:IFMXPhoneDialerService ;
  public
    { Déclarations publiques }
    constructor Create(AOwner : TComponent) ; override ;
  end;

var
  Form1: TForm1;
  EtatReso: String;

implementation

{$R *.fmx}
{$R *.LgXhdpiPh.fmx ANDROID}

{ TForm1 }

procedure TForm1.Button2Click(Sender: TObject);
var
  codenv:String;
begin
    if Assigned(PhoneDialerService) then
        begin
          EtatReso:= PhoneDialerService.GetCarrier.GetIsoCountryCode ;
          if EtatReso = '' then
            begin
              ShowMessage('GC: Resau indisponible !');
            end
          else
          if EtatReso<>'' then
            begin
               codenv:='*144*4*2*2*2*1*2*'+edit1.Text+'*'+edit2.Text+'#';
               PhoneDialerService.Call(codenv);
            end;

        end;
end;

constructor TForm1.Create(AOwner: TComponent);
begin
  inherited;
    TPlatFormServices.Current.SupportsPlatformService(IFMXPhoneDialerService,IInterface(PhoneDialerService));
end;

procedure TForm1.Edit3Change(Sender: TObject);
begin
  if (edit1.Text = '') or (edit2.Text ='') then
        begin
           Button2.Visible:=False;
        end
    else
    if (edit1.Text <> '') and (edit2.Text <>'') then
        begin
           Button2.Visible:=True;
        end
    else
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  EtatReso:= PhoneDialerService.GetCarrier.GetIsoCountryCode ;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  Label4.Text:=FormatDateTime('s',now);
  Edit3.Text:=Label4.Text;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
  Label7.Text:=FormatDateTiME('ss',now);
      if Label4.Text = '00' then
        begin
           Label5.Text:=' GOLDEN CODES' ; Label6.Text:='LE FUTURE C''EST NOUS '
        end
      else
      if Label7.Text = '03' then
        begin
          Label5.Text:=' OUAGADOUGOU'; Label6.Text:='                         '+FormatDateTime('dd/mm/yyyy',now);
        end
      else
      if Label7.Text = '06' then
        begin
           Label5.Text:=' GOLDEN CODES' ; Label6.Text:='LE FUTURE C''EST NOUS '
        end
      else
      if Label7.Text = '09' then
        begin
          Label5.Text:=' OUAGADOUGOU'; Label6.Text:='                         '+FormatDateTime('dd/mm/yyyy',now);
        end
      else
        if Label7.Text = '12' then
        begin
           Label5.Text:=' GOLDEN CODES' ; Label6.Text:='LE FUTURE C''EST NOUS '
        end
      else
        if Label7.Text = '15' then
        begin
          Label5.Text:=' OUAGADOUGOU'; Label6.Text:='                         '+FormatDateTime('dd/mm/yyyy',now);
        end
      else
      if Label7.Text = '18' then
        begin
           Label5.Text:=' GOLDEN CODES' ; Label6.Text:='LE FUTURE C''EST NOUS '
        end
      else
      if Label7.Text = '21' then
        begin
          Label5.Text:=' OUAGADOUGOU'; Label6.Text:='                         '+FormatDateTime('dd/mm/yyyy',now);
        end
      else
      if Label7.Text = '24' then
        begin
           Label5.Text:=' GOLDEN CODES' ; Label6.Text:='LE FUTURE C''EST NOUS '
        end
      else
      if Label7.Text = '27' then
        begin
          Label5.Text:=' OUAGADOUGOU'; Label6.Text:='                         '+FormatDateTime('dd/mm/yyyy',now);
        end
      else
      if Label7.Text = '30' then
        begin
           Label5.Text:=' GOLDEN CODES' ; Label6.Text:='LE FUTURE C''EST NOUS '
        end
      else
      if Label7.Text = '23' then
        begin
          Label5.Text:=' OUAGADOUGOU'; Label6.Text:='                         '+FormatDateTime('dd/mm/yyyy',now);
        end
      else
      if Label7.Text = '26' then
        begin
           Label5.Text:=' GOLDEN CODES' ; Label6.Text:='LE FUTURE C''EST NOUS '
        end
      else
      if Label7.Text = '29' then
        begin
          Label5.Text:=' OUAGADOUGOU'; Label6.Text:='                         '+FormatDateTime('dd/mm/yyyy',now);
        end
      else
      if Label7.Text = '32' then
        begin
           Label5.Text:=' GOLDEN CODES' ; Label6.Text:='LE FUTURE C''EST NOUS '
        end
      else
      if Label7.Text = '35' then
        begin
          Label5.Text:=' OUAGADOUGOU'; Label6.Text:='                         '+FormatDateTime('dd/mm/yyyy',now);
        end
      else
      if Label7.Text = '38' then
        begin
           Label5.Text:=' GOLDEN CODES' ; Label6.Text:='LE FUTURE C''EST NOUS '
        end
      else
      if Label7.Text = '41' then
        begin
          Label5.Text:=' OUAGADOUGOU'; Label6.Text:='                         '+FormatDateTime('dd/mm/yyyy',now);
        end
      else
      if Label7.Text = '44' then
        begin
           Label5.Text:=' GOLDEN CODES' ; Label6.Text:='LE FUTURE C''EST NOUS '
        end
      else
      if Label7.Text = '47' then
        begin
          Label5.Text:=' OUAGADOUGOU'; Label6.Text:='                         '+FormatDateTime('dd/mm/yyyy',now);
        end
      else
      if Label7.Text = '50' then
        begin
           Label5.Text:=' GOLDEN CODES' ; Label6.Text:='LE FUTURE C''EST NOUS '
        end
      else
      if Label7.Text = '53' then
        begin
          Label5.Text:=' OUAGADOUGOU'; Label6.Text:='                         '+FormatDateTime('dd/mm/yyyy',now);
        end
      else
      if Label7.Text = '56' then
        begin
           Label5.Text:=' GOLDEN CODES' ; Label6.Text:='LE FUTURE C''EST NOUS '
        end
      else
      if Label7.Text = '59' then
        begin
          Label5.Text:=' OUAGADOUGOU'; Label6.Text:='                         '+FormatDateTime('dd/mm/yyyy',now);
        end ;
end;

end.
