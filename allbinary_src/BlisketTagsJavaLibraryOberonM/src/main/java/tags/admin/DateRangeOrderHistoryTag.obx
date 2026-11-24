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
unit DateRangeOrderHistoryTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, StoreValidationTransformTag;

type
  {AB:TYPES}
  TDateRangeOrderHistoryTag = class(TStoreValidationTransformTag)
  public
    logUtil: TLogUtil;
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

procedure TDateRangeOrderHistoryTag.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TDateRangeOrderHistoryTag.Create;
begin
        inherited Create();
        InitFields;
end;
    

procedure TDateRangeOrderHistoryTag.setStatus(value: string);
begin
        Self.status := value;
end;
    

// throws JspTagException
function TDateRangeOrderHistoryTag.doStartTag: Integer;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
                Self.logUtil.putF('Tag Start', TJava.Box(Self), Self.tagStrings.DO_START_TAG);
            end;
            Self.setName('Range Order History View');
            Self.setObjectFile('views.admin.orderhistory.DateRangeOrderHistoryView');
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

