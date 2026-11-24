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
// package tags
unit StoreWorkFlowTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, HelperTag;

type
  {AB:TYPES}
  // and hidden field removal
  TStoreWorkFlowTag = class(THelperTag)
  public
    logUtil: TLogUtil;
    viewName: string;
    viewFile: string;
    procedure InitFields;
        constructor Create;
        procedure setName(value: string); virtual;
        function process: Integer;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  AbResponseHandler, LicensingException, TransformInfoData, StoreTagWorkFlowHelperFactory;


{AB:CODE}

procedure TStoreWorkFlowTag.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
end;
    

constructor TStoreWorkFlowTag.Create;
begin
        inherited Create(TStoreTagWorkFlowHelperFactory.Create());
        InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
end;
    

procedure TStoreWorkFlowTag.setName(value: string);
begin
        Self.viewName := value;
        Self.getPropertiesHashMap().put(TTransformInfoData.getInstance().NAME, Self.viewName);
end;
    

// throws Exception
function TStoreWorkFlowTag.process: Integer;
var
  helperClass: TClass;
  method_: TMethod;
  result_: Integer;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
                Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.PROCESS);
            end;
            helperClass := TJava.ToObject(Self.getHelper()).ClassType;
            method_ := helperClass.getMethod(Self.commonStrings.PROCESS, nil);
            result_ := Integer(method_.invoke(Self.getHelper(), nil));
            Exit((result_));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.PROCESS, TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

// throws JspTagException
function TStoreWorkFlowTag.doStartTag: Integer;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().JSPTAG) then begin
                Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.tagStrings.DO_START_TAG);
            end;
            Self.setHelper();
            Exit(Self.process());
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

