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
// package tags.admin.storefront
unit StoreFrontTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StoreValidationTransformTag;

type
  {AB:TYPES}
  TStoreFrontTag = class(TStoreValidationTransformTag)
  public
        constructor Create;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  AbResponseHandler, LicensingException;


{AB:CODE}
    

constructor TStoreFrontTag.Create;
begin
    inherited Create;
end;
    

// throws JspTagException
function TStoreFrontTag.doStartTag: Integer;
begin
        try
            if not TJava.IsNull(Self.getCommand()) then begin
                if (Self.getCommand().compareTo(Self.commonStrings.INSERT)) = (0) then begin
                    Self.setName('Add Validation StoreFront View');
                    Self.setObjectFile('views.admin.storefront.AddValidationStoreFrontView');
                end else if (Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.VIEW)) = (0) then begin
                    raise SysUtils.Exception.Create('View not implemented');
                end else if (Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.EDIT)) = (0) then begin
                    Self.setName('Edit Validation StoreFront View');
                    Self.setObjectFile('views.admin.storefront.EditValidationStoreFrontView');
                end else if (Self.getCommand().compareTo(Self.commonStrings.UPDATE)) = (0) then begin
                    Self.setName('Update Validation StoreFront View');
                    Self.setObjectFile('views.admin.storefront.UpdateValidationStoreFrontView');
                end else if (Self.getCommand().compareTo(Self.commonStrings.DELETE_)) = (0) then begin
                    Self.setName('Delete Validation StoreFront View');
                    Self.setObjectFile('views.admin.storefront.DeleteValidationStoreFrontView');
                end else if (Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.BACKUP)) = (0) then begin
                    raise SysUtils.Exception.Create('View not implemented');
                end else if (Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.RESTORE)) = (0) then begin
                    raise SysUtils.Exception.Create('View not implemented');
                end else if (Self.getCommand().compareTo(Self.commonStrings.DROP)) = (0) then begin
                    raise SysUtils.Exception.Create('View not implemented');
                end else if (Self.getCommand().compareTo(Self.commonStrings.CREATE_)) = (0) then begin
                    raise SysUtils.Exception.Create('View not implemented');
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

