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
// package org.allbinary.servlet.file
unit DownloadFileServlet;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings;

type
  {AB:TYPES}
  TDownloadFileServlet = class(THttpServlet)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    DOWNLOAD: string;
    DEFAULT_BUFFER_SIZE: Integer;
    procedure InitFields;
    constructor Create;
        procedure processRequest(request: THttpServletRequest; response: THttpServletResponse); virtual;
        procedure doGet(request: THttpServletRequest; response: THttpServletResponse); virtual;
        procedure doPost(request: THttpServletRequest; response: THttpServletResponse); virtual;
        function getServletInfo: string; virtual;
  end;

implementation
uses
  AuthenticationHelper, AuthenticationHelperFactory, AuthenticationHelperUtil, URLGLOBALS, StdUtil, CloudStreamUtil, StreamUtil, AbFile, StringMaker, StringUtil, BlisketServletUtil, CommonSeps;


{AB:CODE}

procedure TDownloadFileServlet.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.DOWNLOAD := 'download';
  Self.DEFAULT_BUFFER_SIZE := 16384;
end;

constructor TDownloadFileServlet.Create;
begin
  inherited Create;
  InitFields;
end;
    

// throws ServletException, IOException
procedure TDownloadFileServlet.processRequest(request: THttpServletRequest; response: THttpServletResponse);
var
  inputStream_: TInputStream;
  requestPath: string;
  beginIndex: Integer;
  filePath: string;
  file_: TAbFile;
  hashMap_: TJavaHashMap<TObject, TObject>;
  authenticationHelper_: TAuthenticationHelper;
  contentType: string;
  stringBuffer: TStringMaker;
begin
        inputStream_ := nil;
        try
        try
            TBlisketServletUtil.getInstance().init(request);
            requestPath := request.getRequestURI();
            if (requestPath) = ('') then begin
                response.sendError(THttpServletResponse.SC_NOT_FOUND);
                Exit;
            end;
            beginIndex := (Pos(TJava.ToString(Self.DOWNLOAD), requestPath) - 1);
            filePath := TStringUtil.getInstance().EMPTY_STRING;
            if (beginIndex) >= (0) then begin
                filePath := Copy(requestPath, ((beginIndex) + (System.Length(Self.DOWNLOAD))) + 1, MaxInt);
            end else begin
                response.sendError(THttpServletResponse.SC_NOT_FOUND);
            end;
            file_ := TAbFile.createAbFile(TJava.ToString(TURLGLOBALS.getWebappPath()) + filePath);
            if not (file_.exists()) then begin
                response.sendError(THttpServletResponse.SC_NOT_FOUND);
                Exit;
            end;
            hashMap_ := TStdUtil.getInstance().createHashMap();
            authenticationHelper_ := TAuthenticationHelper(TJava.ToObject(TAuthenticationHelperFactory.Create().getInstance(hashMap_, request)));
            if authenticationHelper_.isAuthenticated() then begin
                if TAuthenticationHelperUtil.getInstance().isAuthorized(authenticationHelper_, filePath) then begin
                    inputStream_ := TCloudStreamUtil.getInstance().getFile(file_);
                    contentType := Self.getServletContext().getMimeType(file_.getName());
                    if (contentType) = ('') then begin
                        contentType := 'application/octet-stream';
                    end;
                    response.reset();
                    response.setBufferSize(Self.DEFAULT_BUFFER_SIZE);
                    response.setContentType(contentType);
                    response.setHeader('Content-Length', TJava.ToString(file_.length()));
                    stringBuffer := TStringMaker.Create();
                    stringBuffer.append('attachment; filename="');
                    stringBuffer.append(file_.getName());
                    stringBuffer.append(TCommonSeps.getInstance().QUOTE);
                    response.setHeader('Content-Disposition', stringBuffer.toString());
                    TStreamUtil.getInstance().get(inputStream_, response.getOutputStream(), TJava.NewArray<ShortInt>(16348));
                end else begin
                    response.sendError(THttpServletResponse.SC_UNAUTHORIZED, 'You are not Authorized');
                end;
            end else begin
                response.sendError(THttpServletResponse.SC_UNAUTHORIZED, 'Please Login');
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'processRequest()', TJava.Box(e));
            end;
            response.sendError(THttpServletResponse.SC_NOT_FOUND);
            end;
        end;
        finally
            TStreamUtil.getInstance().close(response.getOutputStream());
            if not (TStreamUtil.getInstance().close(inputStream_)) then begin
            end;
        end;
end;
    

// throws ServletException, IOException
procedure TDownloadFileServlet.doGet(request: THttpServletRequest; response: THttpServletResponse);
begin
        Self.processRequest(request, response);
end;
    

// throws ServletException, IOException
procedure TDownloadFileServlet.doPost(request: THttpServletRequest; response: THttpServletResponse);
begin
        Self.processRequest(request, response);
end;
    

function TDownloadFileServlet.getServletInfo: string;
begin
        Exit('Serves Up Cloud Files');
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

