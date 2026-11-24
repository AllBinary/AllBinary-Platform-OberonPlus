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
unit CustomLoaderTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CustomTagSupport;

type
  {AB:TYPES}
  TCustomLoaderTag = class(TCustomTagSupport)
  public
    logUtil: TLogUtil;
    command: string;
    webappPath: string;
    procedure InitFields;
        constructor Create;
        procedure setCommand(command: string); virtual;
        procedure setWebappPath(value: string); virtual;
        procedure setCustomLoaderWebappPath;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  AppUrlGlobals, GLOBALS2, URLGLOBALS, AbResponseHandler, LicensingException;


{AB:CODE}

procedure TCustomLoaderTag.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
end;
    

constructor TCustomLoaderTag.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TCustomLoaderTag.setCommand(command: string);
begin
        Self.command := command;
end;
    

procedure TCustomLoaderTag.setWebappPath(value: string);
begin
        Self.webappPath := value;
end;
    

// throws LicensingException
procedure TCustomLoaderTag.setCustomLoaderWebappPath;
var
  urlGlobals_: TAppUrlGlobals;
begin
        try
            urlGlobals_ := TAppUrlGlobals.Create();
            urlGlobals_.setWebappPath(Self.webappPath);
            TURLGLOBALS.init(urlGlobals_);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAGERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'setCustomLoaderWebappPath()', TJava.Box(e));
            end;
            end;
        end;
end;
    

// throws JspTagException
function TCustomLoaderTag.doStartTag: Integer;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
                Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.tagStrings.DO_START_TAG);
            end;
            if (Self.command) <> ('') then begin
                if (CompareStr(Self.command, GLOBALS2.SET_)) = (0) then begin
                    Self.setCustomLoaderWebappPath();
                end;
            end;
            Exit(SKIP_BODY);
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

