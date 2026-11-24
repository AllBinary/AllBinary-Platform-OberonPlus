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
unit UploadFileServlet;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings;

type
  {AB:TYPES}
  TUploadFileServlet = class(THttpServlet)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    requestHashMap: TJavaHashMap<TObject, TObject>;
    fileName: string;
    procedure InitFields;
    constructor Create;
        procedure processRequest(request: THttpServletRequest; response: THttpServletResponse); virtual;
        procedure saveFile(filePath: string);
        procedure doGet(request: THttpServletRequest; response: THttpServletResponse); virtual;
        procedure doPost(request: THttpServletRequest; response: THttpServletResponse); virtual;
        function getServletInfo: string; virtual;
  end;

implementation
uses
  AuthenticationHelper, AuthenticationHelperFactory, AuthenticationHelperUtil, URLGLOBALS, StdUtil, FileUploadData, HttpFileUploadUtil, HttpRequestUtil, MultipartRequestParams, AbFileOutputStream, StreamUtil, AbFile, StringMaker, BlisketServletUtil, FileItem;


{AB:CODE}

procedure TUploadFileServlet.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
end;

constructor TUploadFileServlet.Create;
begin
  inherited Create;
  InitFields;
end;
    

// throws ServletException, IOException
procedure TUploadFileServlet.processRequest(request: THttpServletRequest; response: THttpServletResponse);
var
  isError: Boolean;
  inputStream_: TInputStream;
  filePath: string;
  hashMap_: TJavaHashMap<TObject, TObject>;
  authenticationHelper_: TAuthenticationHelper;
begin
        isError := False;
        inputStream_ := nil;
        try
        try
            TBlisketServletUtil.getInstance().init(request);
            Self.requestHashMap := TMultipartRequestParams.Create(request).toHashMap();
            filePath := TJava.UnboxString(TJava.ToObject(Self.requestHashMap.get(TJava.Box(TFileUploadData.getInstance().UPLOAD_TO_FILE_PATH))));
            if (filePath) = ('') then begin
                isError := True;
                response.sendError(THttpServletResponse.SC_NOT_FOUND);
                Exit;
            end;
            hashMap_ := TStdUtil.getInstance().createHashMap();
            authenticationHelper_ := TAuthenticationHelper(TJava.ToObject(TAuthenticationHelperFactory.Create().getInstance(hashMap_, request)));
            if authenticationHelper_.isAuthenticated() then begin
                if TAuthenticationHelperUtil.getInstance().isAuthorized(authenticationHelper_, filePath) then begin
                    Self.saveFile(filePath);
                    response.setContentType('text/plain');
                    response.getOutputStream().write(TJava.GetBytes('OK!'));
                end else begin
                    isError := True;
                    response.sendError(THttpServletResponse.SC_UNAUTHORIZED, 'You are not Authorized');
                end;
            end else begin
                isError := True;
                response.sendError(THttpServletResponse.SC_UNAUTHORIZED, 'Please Login');
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'processRequest()', TJava.Box(e));
            end;
            isError := True;
            response.sendError(THttpServletResponse.SC_NOT_FOUND);
            end;
        end;
        finally
            if not (isError) then begin
                TStreamUtil.getInstance().close(response.getOutputStream());
            end;
            if not (TStreamUtil.getInstance().close(inputStream_)) then begin
            end;
        end;
end;
    

// throws Exception
procedure TUploadFileServlet.saveFile(filePath: string);
var
  fileOutputStream: TAbFileOutputStream;
  fileItem_: TFileItem;
  file_: TAbFile;
  stringBuffer: TStringMaker;
  byteArray: TArray<ShortInt>;
begin
        fileOutputStream := nil;
        try
        begin
            fileItem_ := TFileItem(TJava.ToObject(Self.requestHashMap.get(TJava.Box(TFileUploadData.getInstance().FILE_DATA))));
            if ((fileItem_) <> (nil)) and ((fileItem_.getSize()) > (1)) then begin
                Self.fileName := THttpRequestUtil.getInstance().generateFileName(fileItem_.getName());
                if (filePath.EndsWith('/')) or (filePath.EndsWith('\')) then begin
                    filePath := filePath + Self.fileName;
                end;
                file_ := TAbFile.createAbFile(TJava.ToString(TURLGLOBALS.getWebappPath()) + filePath);
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
                    stringBuffer := TStringMaker.Create();
                    stringBuffer.append('Uploaded File: ');
                    stringBuffer.append(Self.fileName);
                    stringBuffer.append(' New File: ');
                    stringBuffer.append(file_.getPath());
                    Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'saveFile()');
                end;
                THttpFileUploadUtil.log(fileItem_);
                byteArray := fileItem_.get();
                if file_.isFile() then begin
                    file_.delete_();
                    file_.createNewFile();
                end;
                fileOutputStream := TAbFileOutputStream.createFromAbFile(file_);
                fileOutputStream.write(byteArray);
            end;
        end;
        finally
            if (fileOutputStream) <> (nil) then begin
                fileOutputStream.close();
            end;
        end;
end;
    

// throws ServletException, IOException
procedure TUploadFileServlet.doGet(request: THttpServletRequest; response: THttpServletResponse);
begin
        Self.processRequest(request, response);
end;
    

// throws ServletException, IOException
procedure TUploadFileServlet.doPost(request: THttpServletRequest; response: THttpServletResponse);
begin
        Self.processRequest(request, response);
end;
    

function TUploadFileServlet.getServletInfo: string;
begin
        Exit('Upload Cloud Files');
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

