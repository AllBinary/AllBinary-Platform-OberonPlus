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
// package org.allbinary.logic.communication.http.request
unit AbResponseHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil;

type
  {AB:TYPES}
  TAbResponseHandler = class(TObject)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create;
        class procedure sendJspTagRedirect(pageContext_: TPageContext; e: SysUtils.Exception); static;
        class procedure sendServletRedirect(pageContext_: TPageContext; e: SysUtils.Exception); static;
        class procedure sendJspTagLicensingRedirect(pageContext_: TPageContext; e: SysUtils.Exception); static;
        class procedure sendServletLicensingRedirect(pageContext_: TPageContext; e: SysUtils.Exception); static;
        class procedure sendRedirect(pageContext_: TPageContext; page: string); static;
  end;

implementation
uses
  FREEBLISKET_PATH_GLOBALS, LogConfigTypeFactory, LogConfigTypes;


{AB:CODE}

procedure TAbResponseHandler.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TAbResponseHandler.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws JspTagException
class procedure TAbResponseHandler.sendJspTagRedirect(pageContext_: TPageContext; e: SysUtils.Exception);
var
  logUtil_: TLogUtil;
begin
        logUtil_ := TLogUtil.getInstance();
        try
            if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().JSPTAGERROR) then begin
                logUtil_.put('Jsp Tag Exception', TJava.Box('AbResponseHandler'), 'sendJspRedirect()', TJava.Box(e));
            end;
            TAbResponseHandler.sendRedirect(pageContext_, FREEBLISKET_PATH_GLOBALS.getInstance().ERRORPAGE);
        except
            on e2: SysUtils.Exception do begin
            if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().LICENSINGERROR) then begin
                logUtil_.put('Exception in Redirect Handling', TJava.Box('AbResponseHandler'), 'sendJspRedirect', TJava.Box(e));
            end;
            raise TJspTagException.Create();
            end;
        end;
end;
    

// throws ServletException
class procedure TAbResponseHandler.sendServletRedirect(pageContext_: TPageContext; e: SysUtils.Exception);
var
  logUtil_: TLogUtil;
begin
        logUtil_ := TLogUtil.getInstance();
        try
            if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().JSPTAGERROR) then begin
                logUtil_.put('Jsp Tag Exception', TJava.Box('AbResponseHandler'), 'sendJspRedirect()', TJava.Box(e));
            end;
            TAbResponseHandler.sendRedirect(pageContext_, FREEBLISKET_PATH_GLOBALS.getInstance().ERRORPAGE);
        except
            on e2: SysUtils.Exception do begin
            if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().LICENSINGERROR) then begin
                logUtil_.put('Exception in Redirect Handling', TJava.Box('AbResponseHandler'), 'sendJspRedirect', TJava.Box(e));
            end;
            raise TServletException.Create();
            end;
        end;
end;
    

// throws JspTagException
class procedure TAbResponseHandler.sendJspTagLicensingRedirect(pageContext_: TPageContext; e: SysUtils.Exception);
var
  logUtil_: TLogUtil;
begin
        logUtil_ := TLogUtil.getInstance();
        try
            if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().JSPTAGERROR) then begin
                logUtil_.put('Licensing Exception', TJava.Box('AbResponseHandler'), 'sendJspTagLicensingRedirect()', TJava.Box(e));
            end;
            TAbResponseHandler.sendRedirect(pageContext_, FREEBLISKET_PATH_GLOBALS.getInstance().LICENSEERRORPAGE);
        except
            on e2: SysUtils.Exception do begin
            if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().LICENSINGERROR) then begin
                logUtil_.put('Exception in Redirect Handling', TJava.Box('AbResponseHandler'), 'sendJspTagLicensingRedirect', TJava.Box(e));
            end;
            raise TJspTagException.Create();
            end;
        end;
end;
    

// throws ServletException
class procedure TAbResponseHandler.sendServletLicensingRedirect(pageContext_: TPageContext; e: SysUtils.Exception);
var
  logUtil_: TLogUtil;
begin
        logUtil_ := TLogUtil.getInstance();
        try
            if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().JSPTAGERROR) then begin
                logUtil_.put('Licensing Exception', TJava.Box('AbResponseHandler'), 'sendServletLicensingRedirect()', TJava.Box(e));
            end;
            TAbResponseHandler.sendRedirect(pageContext_, FREEBLISKET_PATH_GLOBALS.getInstance().LICENSEERRORPAGE);
        except
            on e2: SysUtils.Exception do begin
            if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().LICENSINGERROR) then begin
                logUtil_.put('Exception in Redirect Handling', TJava.Box('AbResponseHandler'), 'sendServletLicensingRedirect', TJava.Box(e));
            end;
            raise TServletException.Create();
            end;
        end;
end;
    

// throws Exception
class procedure TAbResponseHandler.sendRedirect(pageContext_: TPageContext; page: string);
var
  request: THttpServletRequest;
  response: THttpServletResponse;
  requestDispatcher_: TRequestDispatcher;
begin
        request := THttpServletRequest(TJava.ToObject(pageContext_.getRequest()));
        response := THttpServletResponse(TJava.ToObject(pageContext_.getResponse()));
        requestDispatcher_ := request.getRequestDispatcher(page);
        if response.isCommitted() then begin
            response.sendRedirect(page);
        end else begin
            try
                requestDispatcher_.forward(request, response);
            except
                on e: SysUtils.Exception do begin
                pageContext_.getOut().print('Error: ' + page);
                end;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

