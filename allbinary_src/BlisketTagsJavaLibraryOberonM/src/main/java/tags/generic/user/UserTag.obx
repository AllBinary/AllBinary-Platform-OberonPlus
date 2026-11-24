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
// package tags.generic.user
unit UserTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StoreValidationTransformTag;

type
  {AB:TYPES}
  TUserTag = class(TStoreValidationTransformTag)
  public
    role: string;
    procedure InitFields;
        constructor Create;
        procedure setRole(value: string); virtual;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  UserRoleData, AbResponseHandler;


{AB:CODE}

procedure TUserTag.InitFields;
begin
  
end;
    

constructor TUserTag.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TUserTag.setRole(value: string);
begin
        Self.role := value;
        Self.getPropertiesHashMap().put(TUserRoleData.NAME, Self.role);
end;
    

// throws JspTagException
function TUserTag.doStartTag: Integer;
begin
        try
            if not TJava.IsNull(Self.getCommand()) then begin
                if (Self.getCommand().compareTo((Torg.allbinary.globals.GLOBALS2.EDIT) + (Torg.allbinary.globals.GLOBALS2.EDIT))) = (0) then begin
                    Self.setName('Edit Session Validation User View - i.e. User Profile Edit');
                    Self.setObjectFile('views.generic.user.EditValidationView');
                end;
                if (Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.NEW_)) = (0) then begin
                    Self.setName('New User View');
                    Self.setObjectFile('views.generic.user.NewUserView');
                end else if (Self.getCommand().compareTo(Self.commonStrings.INSERT)) = (0) then begin
                    Self.setName('Add Validation User View');
                    Self.setObjectFile('views.generic.user.AddValidationUserView');
                end else if (Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.VIEW)) = (0) then begin
                    Self.setName('Validation User View');
                    Self.setObjectFile('views.generic.user.ViewValidationUserView');
                end else if (Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.EDIT)) = (0) then begin
                    Self.setName('Validation User View');
                    Self.setObjectFile('views.generic.user.EditValidationUserView');
                end else if (Self.getCommand().compareTo(Self.commonStrings.UPDATE)) = (0) then begin
                    Self.setName('Update Validation User View');
                    Self.setObjectFile('views.generic.user.UpdateValidationUserView');
                end else if (Self.getCommand().compareTo(Self.commonStrings.DELETE_)) = (0) then begin
                    Self.setName('Delete Validation User View');
                    Self.setObjectFile('views.generic.user.DeleteValidationUserView');
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

