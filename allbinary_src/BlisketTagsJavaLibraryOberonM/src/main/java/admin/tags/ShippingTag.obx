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
unit ShippingTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CustomTagSupport;

type
  {AB:TYPES}
  TShippingTag = class(TCustomTagSupport)
  public
    logUtil: TLogUtil;
    command: string;
    storeName: string;
    propertiesHashMap: TJavaHashMap<TObject, TObject>;
    procedure InitFields;
        constructor Create;
        procedure setCommand(command: string); virtual;
        procedure setStoreName(value: string); virtual;
        function setShippingType: string;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  ShippingHelperFactory, StoreFrontData, StdUtil, AbResponseHandler, LicensingException;


{AB:CODE}

procedure TShippingTag.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
end;
    

constructor TShippingTag.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TShippingTag.setCommand(command: string);
begin
        Self.command := command;
end;
    

procedure TShippingTag.setStoreName(value: string);
begin
        Self.storeName := value;
end;
    

// throws LicensingException
function TShippingTag.setShippingType: string;
var
  anyType: TObject;
  addressHelperClass: TClass;
  method_: TMethod;
  result_: string;
  error: string;
begin
        try
            anyType := TJava.Box(TShippingHelperFactory.Create().getInstance(Self.propertiesHashMap, Self.pageContext));
            addressHelperClass := TJava.ToObject(anyType).ClassType;
            method_ := addressHelperClass.getMethod('setShippingType', nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(anyType, nil)));
            Exit(result_);
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            error := 'Failed to view Shipping Type';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'setShippingType()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

// throws JspTagException
function TShippingTag.doStartTag: Integer;
begin
        try
            if (Self.command) <> ('') then begin
                Self.propertiesHashMap := TStdUtil.getInstance().createHashMap();
                Self.propertiesHashMap.put(TJava.Box(TStoreFrontData.getInstance().NAME), TJava.Box(Self.storeName));
                if (CompareStr(Self.command, Torg.allbinary.globals.GLOBALS2.SETSHIPPINGTYPE)) = (0) then begin
                    Self.setShippingType();
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

