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
// package tags.admin
unit UsersTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StoreValidationTransformTag;

type
  {AB:TYPES}
  TUsersTag = class(TStoreValidationTransformTag)
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

procedure TUsersTag.InitFields;
begin
  
end;
    

constructor TUsersTag.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TUsersTag.setRole(value: string);
begin
        Self.role := value;
end;
    

// throws JspTagException
function TUsersTag.doStartTag: Integer;
begin
        try
            Self.setName('Admin Users View');
            Self.setObjectFile('views.admin.user.UsersValidationView');
            if not TJava.IsNull(Self.getCommand()) then begin
                Self.getPropertiesHashMap().put(TUserRoleData.NAME, Self.role);
                if (Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.VIEW)) = (0) then begin
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

