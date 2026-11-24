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
// package tags.generic.order.history
unit OrderHistoryTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, StoreValidationTransformTag;

type
  {AB:TYPES}
  TOrderHistoryTag = class(TStoreValidationTransformTag)
  public
    logUtil: TLogUtil;
    status: string;
    procedure InitFields;
        constructor Create;
        procedure setStatus(value: string); virtual;
        function setOrderStatus: string;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  OrderHistoryData, AbResponseHandler, LicensingException, OrderHistoryHelperFactory;


{AB:CODE}

procedure TOrderHistoryTag.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TOrderHistoryTag.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TOrderHistoryTag.setStatus(value: string);
begin
        Self.status := value;
end;
    

// throws LicensingException
function TOrderHistoryTag.setOrderStatus: string;
var
  anyType: TObject;
  helperClass: TClass;
  method_: TMethod;
  result_: string;
  error: string;
begin
        try
            anyType := TJava.Box(TOrderHistoryHelperFactory.Create().getInstance(Self.getPropertiesHashMap(), Self.pageContext));
            helperClass := TJava.ToObject(anyType).ClassType;
            method_ := helperClass.getMethod('setOrderStatus', nil);
            result_ := TJava.UnboxString(TJava.ToObject(method_.invoke(anyType, nil)));
            Exit(result_);
        except
            on e: TLicensingException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            error := 'Failed to view order table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'setOrderStatus()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

// throws JspTagException
function TOrderHistoryTag.doStartTag: Integer;
begin
        try
            Self.setName('Basic Order History View');
            Self.setObjectFile('views.generic.order.history.ValidationView');
            if not TJava.IsNull(Self.getCommand()) then begin
                if (Self.getCommand().compareTo(TOrderHistoryData.SETSTATUS)) = (0) then begin
                    Self.getPropertiesHashMap().put(TOrderHistoryData.STATUS, Self.status);
                    Self.pageContext.getOut().print(Self.setOrderStatus());
                end else if (Self.getCommand().compareTo(Torg.allbinary.globals.GLOBALS2.VIEW)) = (0) then begin
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

