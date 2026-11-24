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
// package admin.tags
unit UserTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TableTag;

type
  {AB:TYPES}
  TUserTag = class(TTableTag)
  public
    role: string;
    enable: string;
    procedure InitFields;
        constructor Create;
        procedure setRole(value: string); virtual;
        procedure setEnable(value: string); virtual;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  UserHelperFactory, EntryData, UserRoleData, AbResponseHandler;


{AB:CODE}

procedure TUserTag.InitFields;
begin
  
  
end;
    

constructor TUserTag.Create;
begin
    inherited Create;
    InitFields;
        Self.setTagHelperFactory(TUserHelperFactory.Create());
        Self.setTagRequestHelperFactory(TUserHelperFactory.Create());
end;
    

procedure TUserTag.setRole(value: string);
begin
        Self.role := value;
        Self.getPropertiesHashMap().put(TUserRoleData.NAME, Self.role);
end;
    

procedure TUserTag.setEnable(value: string);
begin
        Self.enable := value;
        Self.getPropertiesHashMap().put(TEntryData.getInstance().ENABLE, Self.enable);
end;
    

// throws JspTagException
function TUserTag.doStartTag: Integer;
begin
        try
            if Self.isEnabled() then begin
                Exit(inherited doStartTag());
            end;
            Exit(SKIP_BODY);
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

