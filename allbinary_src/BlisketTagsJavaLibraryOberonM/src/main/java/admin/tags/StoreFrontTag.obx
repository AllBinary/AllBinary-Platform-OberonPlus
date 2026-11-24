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
unit StoreFrontTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CustomTagSupport;

type
  {AB:TYPES}
  TStoreFrontTag = class(TCustomTagSupport)
  public
    logUtil: TLogUtil;
    command: string;
    storeName: string;
    propertiesHashMap: TJavaHashMap<TObject, TObject>;
    procedure InitFields;
        constructor Create;
        procedure setCommand(command: string); virtual;
        procedure setStoreName(value: string); virtual;
        function getCurrentLocation: string;
        function getCurrentHomeLocation: string;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  StoreFrontHelperFactory, StoreFrontData, StdUtil, AbResponseHandler, LicensingException;


{AB:CODE}

procedure TStoreFrontTag.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
end;
    

constructor TStoreFrontTag.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TStoreFrontTag.setCommand(command: string);
begin
        Self.command := command;
end;
    

procedure TStoreFrontTag.setStoreName(value: string);
begin
        Self.storeName := value;
end;
    

// throws LicensingException
function TStoreFrontTag.getCurrentLocation: string;
var
  anyType: TObject;
  method_: TMethod;
  result_: string;
  error: string;
begin
        try
            anyType := TJava.Box(TStoreFrontHelperFactory.Create().getInstance(Self.propertiesHashMap, Self.pageContext));
            method_ := TJava.ToObject(anyType).ClassType.getMethod('getCurrentLocation', nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(anyType, nil)));
            Exit(result_);
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            error := 'Failed to retrieve current location';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'getCurrentLocation()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

// throws LicensingException
function TStoreFrontTag.getCurrentHomeLocation: string;
var
  anyType: TObject;
  method_: TMethod;
  result_: string;
  error: string;
begin
        try
            anyType := TJava.Box(TStoreFrontHelperFactory.Create().getInstance(Self.propertiesHashMap, Self.pageContext));
            method_ := TJava.ToObject(anyType).ClassType.getMethod('getCurrentHomeLocation', nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(anyType, nil)));
            Exit(result_);
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            error := 'Failed to retrieve current home location';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'getCurrentHomeLocation()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

// throws JspTagException
function TStoreFrontTag.doStartTag: Integer;
begin
        try
            if (Self.command) <> ('') then begin
                Self.propertiesHashMap := TStdUtil.getInstance().createHashMap();
                Self.propertiesHashMap.put(TJava.Box(TStoreFrontData.getInstance().NAME), TJava.Box(Self.storeName));
                if (CompareStr(Self.command, Torg.allbinary.globals.GLOBALS2.GETCURRENTLOCATION)) = (0) then begin
                    Self.pageContext.getOut().print(Self.getCurrentLocation());
                end else if (CompareStr(Self.command, Torg.allbinary.globals.GLOBALS2.GETCURRENTHOMELOCATION)) = (0) then begin
                    Self.pageContext.getOut().print(Self.getCurrentHomeLocation());
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

