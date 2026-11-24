{

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
}
// Generated Code Do Not Modify
// package tags.generic.address.billing
unit BillingAddressTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StoreValidationTransformTag;

type
  {AB:TYPES}
  TBillingAddressTag = class(TStoreValidationTransformTag)
  public
        constructor Create;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  BillingAddressData, AbResponseHandler, LicensingException;


{AB:CODE}
    

constructor TBillingAddressTag.Create;
begin
    inherited Create;
end;
    

// throws JspTagException
function TBillingAddressTag.doStartTag: Integer;
begin
        try
            if not TJava.IsNull(Self.getCommand()) then begin
                if (Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.VIEW)) = (0) then begin
                    Self.setName('Basic Billing Address View');
                    Self.setObjectFile('views.generic.address.billing.ValidationView');
                end else if (Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.EDIT)) = (0) then begin
                    Self.setName('Basic Billing Address View');
                    Self.setObjectFile('views.generic.address.billing.EditValidationView');
                end else if (Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.NEW_)) = (0) then begin
                    Self.setName('Basic Billing Address View');
                    Self.setObjectFile('views.generic.address.billing.NewValidationView');
                end else if (Self.getCommand().compareTo(Self.commonStrings.INSERT)) = (0) then begin
                    Self.setName('Basic Billing Address View');
                    Self.setObjectFile('views.generic.address.billing.AddValidationView');
                end else if (Self.getCommand().compareTo(Self.commonStrings.DELETE_)) = (0) then begin
                    Self.setName('Basic Billing Address View');
                    Self.setObjectFile('views.generic.address.billing.DeleteValidationView');
                end else if (Self.getCommand().compareTo(TBillingAddressData.SELECT)) = (0) then begin
                    Self.setName('Basic Billing Address View');
                    Self.setObjectFile('views.generic.address.billing.SelectValidationView');
                end else if (Self.getCommand().compareTo(TBillingAddressData.SETTOSHIPPINGADDRESS)) = (0) then begin
                    Self.setName('Basic Billing Address View');
                    Self.setObjectFile('views.generic.address.billing.SetValidationView');
                end else begin
                    raise SysUtils.Exception.Create('No Such View Command: ' + TJava.ToString(Self.getCommand()));
                end;
                Exit(inherited doStartTag());
            end;
            raise SysUtils.Exception.Create('Command Null');
        except
            on e: TLicensingException do begin
            TAbResponseHandler.sendJspTagLicensingRedirect(Self.pageContext, e);
            Exit(SKIP_BODY);
            end;
            on e: SysUtils.Exception do begin
            TAbResponseHandler.sendJspTagRedirect(Self.pageContext, e);
            Exit(SKIP_BODY);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

