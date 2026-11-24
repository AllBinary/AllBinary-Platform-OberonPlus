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
unit BasicTextEmailTag;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CustomTagSupport;

type
  {AB:TYPES}
  TBasicTextEmailTag = class(TCustomTagSupport)
  public
    logUtil: TLogUtil;
    subject: string;
    body: string;
    procedure InitFields;
        constructor Create;
        procedure setSubject(value: string); virtual;
        procedure setBody(value: string); virtual;
        function send: string; virtual;
        function doStartTag: Integer; virtual;
  end;

implementation
uses
  BasicTextEmailHelperFactory, StdUtil, AbResponseHandler;


{AB:CODE}

procedure TBasicTextEmailTag.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
end;
    

constructor TBasicTextEmailTag.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TBasicTextEmailTag.setSubject(value: string);
begin
        Self.subject := value;
end;
    

procedure TBasicTextEmailTag.setBody(value: string);
begin
        Self.body := value;
end;
    

function TBasicTextEmailTag.send: string;
var
  propertiesHashMap: TJavaHashMap<TObject, TObject>;
  anyType: TObject;
  method_: TMethod;
  error: string;
begin
        try
            propertiesHashMap := TStdUtil.getInstance().createHashMap();
            propertiesHashMap.put(TJava.Box('Subject'), TJava.Box(Self.subject));
            propertiesHashMap.put(TJava.Box('Body'), TJava.Box(Self.body));
            anyType := TJava.Box(TBasicTextEmailHelperFactory.Create().getInstance(propertiesHashMap, Self.pageContext));
            method_ := TJava.ToObject(anyType).ClassType.getMethod('send', nil);
            method_.invoke(anyType, nil);
            Exit('Email Sent');
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to Send Email.';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'send()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

// throws JspTagException
function TBasicTextEmailTag.doStartTag: Integer;
begin
        try
            Self.pageContext.getOut().print(Self.send());
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

