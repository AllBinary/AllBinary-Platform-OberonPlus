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
// package tags.admin.inventory
unit InventoryTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StoreValidationTransformTag;

type
  {AB:TYPES}
  TInventoryTag = class(TStoreValidationTransformTag)
  public
        constructor Create;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  AbResponseHandler, LicensingException;


{AB:CODE}
    

constructor TInventoryTag.Create;
begin
    inherited Create;
end;
    

// throws JspTagException
function TInventoryTag.doStartTag: Integer;
begin
        try
            if not TJava.IsNull(Self.getCommand()) then begin
                if (Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.VIEW)) = (0) then begin
                    raise SysUtils.Exception.Create('No Such View Command: ' + TJava.ToString(Self.getCommand()));
                end else if (Self.getCommand().compareTo(Self.commonStrings.INSERT)) = (0) then begin
                    Self.setName('Add Inventory Item Validation View');
                    Self.setObjectFile('views.admin.inventory.AddFileValidationView');
                end else if (Self.getCommand().compareTo(Self.commonStrings.DELETE_)) = (0) then begin
                    Self.setName('Delete Inventory Item Validation View');
                    Self.setObjectFile('views.admin.inventory.DeleteFileValidationView');
                end else if (Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.EDIT)) = (0) then begin
                    Self.setName('Edit Inventory Item Validation View');
                    Self.setObjectFile('views.admin.inventory.EditValidationView');
                end else if (Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.NEW_)) = (0) then begin
                    Self.setName('New Inventory Item Validation View');
                    Self.setObjectFile('views.admin.inventory.NewValidationView');
                end else if (Self.getCommand().compareTo(Self.commonStrings.UPDATE)) = (0) then begin
                    Self.setName('Update Inventory Item Validation View');
                    Self.setObjectFile('views.admin.inventory.UpdateFileValidationView');
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

