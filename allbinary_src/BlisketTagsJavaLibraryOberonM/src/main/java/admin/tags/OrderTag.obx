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
unit OrderTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CustomTagSupport;

type
  {AB:TYPES}
  TOrderTag = class(TCustomTagSupport)
  public
    logUtil: TLogUtil;
    command: string;
    storeName: string;
    propertiesHashMap: TJavaHashMap<TObject, TObject>;
    procedure InitFields;
        constructor Create;
        procedure setCommand(command: string); virtual;
        procedure setStoreName(value: string); virtual;
        function process: string;
        function setPaymentGateway: Boolean;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  OrderHelperFactory, StoreFrontData, PaymentGatewayData, StdUtil, AbResponseHandler, LicensingException;


{AB:CODE}

procedure TOrderTag.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
end;
    

constructor TOrderTag.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TOrderTag.setCommand(command: string);
begin
        Self.command := command;
end;
    

procedure TOrderTag.setStoreName(value: string);
begin
        Self.storeName := value;
end;
    

// throws LicensingException
function TOrderTag.process: string;
var
  anyType: TObject;
  helperClass: TClass;
  method_: TMethod;
  result_: string;
  error: string;
begin
        try
            anyType := TJava.Box(TOrderHelperFactory.Create().getInstance(Self.propertiesHashMap, Self.pageContext));
            helperClass := TJava.ToObject(anyType).ClassType;
            method_ := helperClass.getMethod(Self.commonStrings.PROCESS, nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(anyType, nil)));
            Exit(result_);
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            error := 'Failed to Process Order: ';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.PROCESS, TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

// throws LicensingException
function TOrderTag.setPaymentGateway: Boolean;
var
  anyType: TObject;
  addressHelperClass: TClass;
  method_: TMethod;
  result_: Boolean;
  error: string;
begin
        try
            anyType := TJava.Box(TOrderHelperFactory.Create().getInstance(Self.propertiesHashMap, Self.pageContext));
            addressHelperClass := TJava.ToObject(anyType).ClassType;
            method_ := addressHelperClass.getMethod('setPaymentGateway', nil);
            result_ := Boolean(method_.invoke(anyType, nil));
            Exit(result_);
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            error := 'Failed to setPaymentGateway for Order';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'setPaymentGateway()', TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

// throws JspTagException
function TOrderTag.doStartTag: Integer;
begin
        try
            if (Self.command) <> ('') then begin
                Self.propertiesHashMap := TStdUtil.getInstance().createHashMap();
                Self.propertiesHashMap.put(TJava.Box(TStoreFrontData.getInstance().NAME), TJava.Box(Self.storeName));
                if (CompareStr(Self.command, Torg.allbinary.globals.GLOBALS2.PROCESS)) = (0) then begin
                    Self.process();
                end else if (CompareStr(Self.command, TJava.ToString(TPaymentGatewayData.NAME))) = (0) then begin
                    if (Self.setPaymentGateway()) = (True) then begin
                        Exit(TTagSupport.EVAL_BODY_INCLUDE);
                    end;
                end;
            end;
            Exit(TTagSupport.SKIP_BODY);
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

