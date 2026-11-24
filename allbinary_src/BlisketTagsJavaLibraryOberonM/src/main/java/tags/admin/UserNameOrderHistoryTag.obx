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
unit UserNameOrderHistoryTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StoreValidationTransformTag;

type
  {AB:TYPES}
  TUserNameOrderHistoryTag = class(TStoreValidationTransformTag)
  public
    status: string;
    procedure InitFields;
        constructor Create;
        procedure setStatus(value: string); virtual;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  AbResponseHandler;


{AB:CODE}

procedure TUserNameOrderHistoryTag.InitFields;
begin
  
end;
    

constructor TUserNameOrderHistoryTag.Create;
begin
        inherited Create();
        InitFields;
end;
    

procedure TUserNameOrderHistoryTag.setStatus(value: string);
begin
        Self.status := value;
end;
    

// throws JspTagException
function TUserNameOrderHistoryTag.doStartTag: Integer;
begin
        try
            Self.setName('Range Order History View');
            Self.setObjectFile('views.admin.orderhistory.UserNameOrderHistoryView');
            if not TJava.IsNull(Self.getCommand()) then begin
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

