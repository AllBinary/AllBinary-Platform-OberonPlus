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
// package servlet.request
unit RequestHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ServletConfig, HttpServletRequest, HttpServletResponse, HttpServlet;

type
  {AB:TYPES}
  TRequestHandler = class(THttpServlet)
  public
    logUtil: TLogUtil;
    procedure InitFields;
    constructor Create;
        procedure init(config: TServletConfig); virtual;
        procedure destroy; virtual;
        procedure processRequest(request: THttpServletRequest; response: THttpServletResponse); virtual;
        procedure doGet(request: THttpServletRequest; response: THttpServletResponse); virtual;
        procedure doPost(request: THttpServletRequest; response: THttpServletResponse); virtual;
        function getServletInfo: string; virtual;
  end;

implementation
uses
  PrintWriter, ServletRequest, ServletResponse, LicensingException, WorkFlowInterface, RequestWorkFlowFactory;


{AB:CODE}

procedure TRequestHandler.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

constructor TRequestHandler.Create;
begin
  inherited Create;
  InitFields;
end;
    

// throws ServletException
procedure TRequestHandler.init(config: TServletConfig);
begin
        inherited init(config);
end;
    

procedure TRequestHandler.destroy;
begin
end;
    

// throws ServletException, IOException
procedure TRequestHandler.processRequest(request: THttpServletRequest; response: THttpServletResponse);
var
  out_: TPrintWriter;
  workflowInterface_: IWorkFlowInterface;
begin
        try
            response.setContentType('text/html');
            out_ := response.getWriter();
            workflowInterface_ := TRequestWorkFlowFactory.getInstance(TServletRequest(TJava.ToObject(request)), TServletResponse(TJava.ToObject(response)), Self.getServletConfig(), Self.getServletContext());
            if (workflowInterface_) <> (nil) then begin
                out_.print(workflowInterface_.process());
            end;
            out_.flush();
            out_.close();
        except
            on e: TLicensingException do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SERVLETERROR) then begin
                Self.logUtil.put('Servlet LicensingException', TJava.Box(Self), 'processRequest()', TJava.Box(e));
            end;
            response.sendRedirect(Self.abcs.globals.URLGLOBALS.LICENSEERRORPAGE);
            end;
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SERVLETERROR) then begin
                Self.logUtil.put('Servlet Exception', TJava.Box(Self), 'processRequest()', TJava.Box(e));
            end;
            response.sendRedirect(Self.abcs.globals.URLGLOBALS.ERRORPAGE);
            end;
        end;
end;
    

// throws ServletException, IOException
procedure TRequestHandler.doGet(request: THttpServletRequest; response: THttpServletResponse);
begin
        Self.processRequest(request, response);
end;
    

// throws ServletException, IOException
procedure TRequestHandler.doPost(request: THttpServletRequest; response: THttpServletResponse);
begin
        Self.processRequest(request, response);
end;
    

function TRequestHandler.getServletInfo: string;
begin
        Exit('WorkFlow Request Handler');
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

