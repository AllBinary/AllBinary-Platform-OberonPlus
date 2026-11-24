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
// package tags.generic.shipping
unit ShippingMethodsTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StoreValidationTransformTag;

type
  {AB:TYPES}
  TShippingMethodsTag = class(TStoreValidationTransformTag)
  public
        constructor Create;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  AbResponseHandler, LicensingException;


{AB:CODE}
    

constructor TShippingMethodsTag.Create;
begin
    inherited Create;
end;
    

// throws JspTagException
function TShippingMethodsTag.doStartTag: Integer;
begin
        try
            if not TJava.IsNull(Self.getCommand()) then begin
                Self.setName('Basic Shipping View');
                Self.setObjectFile('views.generic.shipping.ValidationView');
                if (Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.VIEW)) = (0) then begin
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

