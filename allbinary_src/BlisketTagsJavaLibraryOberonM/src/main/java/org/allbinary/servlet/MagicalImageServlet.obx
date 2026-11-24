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
// package org.allbinary.servlet
unit MagicalImageServlet;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings;

type
  {AB:TYPES}
  TMagicalImageServlet = class(THttpServlet)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    procedure InitFields;
    constructor Create;
        procedure processRequest(request: THttpServletRequest; response: THttpServletResponse); virtual;
        procedure doGet(request: THttpServletRequest; response: THttpServletResponse); virtual;
        procedure doPost(request: THttpServletRequest; response: THttpServletResponse); virtual;
        function getServletInfo: string; virtual;
  end;

implementation
uses
  BlisketServletUtil, URLGLOBALS, CloudStreamUtil, StreamUtil, AbFile;


{AB:CODE}

procedure TMagicalImageServlet.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
end;

constructor TMagicalImageServlet.Create;
begin
  inherited Create;
  InitFields;
end;
    

// throws ServletException, IOException
procedure TMagicalImageServlet.processRequest(request: THttpServletRequest; response: THttpServletResponse);
var
  inputStream_: TInputStream;
  requestURI: string;
  file_: TAbFile;
  outputStream: TByteArrayOutputStream;
  byteArray: TArray<ShortInt>;
begin
        inputStream_ := nil;
        try
        try
            TBlisketServletUtil.getInstance().init(request);
            requestURI := request.getRequestURI();
            file_ := TAbFile.createAbFile(TJava.ToString(TURLGLOBALS.getWebappPath()) + requestURI);
            inputStream_ := TCloudStreamUtil.getInstance().getFileAnyWhere(file_);
            outputStream := TByteArrayOutputStream.Create;
            byteArray := TStreamUtil.getInstance().getByteArray(inputStream_, outputStream, TJava.NewArray<ShortInt>(16384));
            response.setContentType('image/jpeg;charset=utf-8');
            response.getOutputStream().write(byteArray);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'processRequest()', TJava.Box(e));
            end;
            end;
        end;
        finally
            TStreamUtil.getInstance().close(response.getOutputStream());
            if not (TStreamUtil.getInstance().close(inputStream_)) then begin
                response.sendError(THttpServletResponse.SC_NOT_FOUND);
            end;
        end;
end;
    

// throws ServletException, IOException
procedure TMagicalImageServlet.doGet(request: THttpServletRequest; response: THttpServletResponse);
begin
        Self.processRequest(request, response);
end;
    

// throws ServletException, IOException
procedure TMagicalImageServlet.doPost(request: THttpServletRequest; response: THttpServletResponse);
begin
        Self.processRequest(request, response);
end;
    

function TMagicalImageServlet.getServletInfo: string;
begin
        Exit('Serves Up Image From Local or Cloud');
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

