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
// package tags.generic.address.shipping
unit ShippingAddressTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StoreValidationTransformTag;

type
  {AB:TYPES}
  TShippingAddressTag = class(TStoreValidationTransformTag)
  public
    value: string;
    procedure InitFields;
        constructor Create;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  ShippingAddressData, AbResponseHandler, LicensingException;


{AB:CODE}

procedure TShippingAddressTag.InitFields;
begin
  
end;
    

constructor TShippingAddressTag.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws JspTagException
function TShippingAddressTag.doStartTag: Integer;
begin
        try
            if not TJava.IsNull(Self.getCommand()) then begin
                if (Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.VIEW)) = (0) then begin
                    Self.setName('Basic Shipping Address View');
                    Self.setObjectFile('views.generic.address.shipping.ViewShippingAddressesView');
                end else if (Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.EDIT)) = (0) then begin
                    Self.setName('Basic Shipping Address View');
                    Self.setObjectFile('views.generic.address.shipping.EditShippingAddressesView');
                end else if (Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.NEW_)) = (0) then begin
                    Self.setName('Basic Shipping Address View');
                    Self.setObjectFile('views.generic.address.shipping.NewShippingAddressesView');
                end else if (Self.getCommand().compareTo(Self.commonStrings.INSERT)) = (0) then begin
                    Self.setName('Basic Shipping Address View');
                    Self.setObjectFile('views.generic.address.shipping.AddShippingAddressesView');
                end else if (Self.getCommand().compareTo(Self.commonStrings.DELETE_)) = (0) then begin
                    Self.setName('Basic Shipping Address View');
                    Self.setObjectFile('views.generic.address.shipping.DeleteShippingAddressesView');
                end else if (Self.getCommand().compareTo(TShippingAddressData.SELECT)) = (0) then begin
                    Self.setName('Basic Shipping Address View');
                    Self.setObjectFile('views.generic.address.shipping.SelectShippingAddressesView');
                end else if (Self.getCommand().compareTo(TShippingAddressData.SETTOBILLINGADDRESS)) = (0) then begin
                    Self.setName('Basic Shipping Address View');
                    Self.setObjectFile('views.generic.address.shipping.SetShippingAddressesView');
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

