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
// package org.allbinary.logic.communication.http.file.upload
unit HttpFileUploadUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, FileItem, FileItemStream;

type
  {AB:TYPES}
  THttpFileUploadUtil = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: THttpFileUploadUtil;
    procedure InitFields;
        class function getInstance: THttpFileUploadUtil; static;
        constructor Create;
        function isValid(anyType: TObject): Boolean; virtual;
        class procedure log(fileItem_: TFileItemStream); overload; static;
        class procedure log(fileItem_: TFileItem); overload; static;
  end;

implementation
uses
  ClassUtil, StringMaker, CommonSeps;


{AB:CODE}

procedure THttpFileUploadUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function THttpFileUploadUtil.getInstance: THttpFileUploadUtil;
begin
        Exit(THttpFileUploadUtil.instance);
end;
    

constructor THttpFileUploadUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function THttpFileUploadUtil.isValid(anyType: TObject): Boolean;
begin
        if ((anyType) <> (nil)) and (not (((TJava.ToObject(anyType) is string)))) then begin
            if (TJava.ToObject(anyType) is TFileItem) then begin
                Exit(True);
            end else begin
                raise SysUtils.Exception.Create('Object Not Instance Of FileItem but is: ' + TJava.ToString(TClassUtil.viewAll(anyType, TCommonSeps.getInstance().NEW_LINE)));
            end;
        end;
        Exit(False);
end;
    

// throws Exception
class procedure THttpFileUploadUtil.log(fileItem_: TFileItemStream);
var
  logUtil_: TLogUtil;
  stringBuffer: TStringMaker;
  commonSeps_: TCommonSeps;
begin
        logUtil_ := TLogUtil.getInstance();
        stringBuffer := TStringMaker.Create();
        commonSeps_ := TCommonSeps.getInstance();
        stringBuffer.append('FileItem Log:');
        stringBuffer.append(commonSeps_.NEW_LINE);
        stringBuffer.append('Content Type:');
        stringBuffer.append(fileItem_.getContentType());
        stringBuffer.append(commonSeps_.NEW_LINE);
        stringBuffer.append('Field Name:');
        stringBuffer.append(fileItem_.getFieldName());
        stringBuffer.append(commonSeps_.NEW_LINE);
        stringBuffer.append('Name:');
        stringBuffer.append(fileItem_.getName());
        stringBuffer.append(commonSeps_.NEW_LINE);
        stringBuffer.append('Size:');
        stringBuffer.append(' Not Calculated Yet');
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTP) then begin
            logUtil_.putF(stringBuffer.toString(), TJava.Box(THttpFileUploadUtil.getInstance()), 'log()');
        end;
end;
    

class procedure THttpFileUploadUtil.log(fileItem_: TFileItem);
var
  logUtil_: TLogUtil;
  stringBuffer: TStringMaker;
  commonSeps_: TCommonSeps;
begin
        logUtil_ := TLogUtil.getInstance();
        stringBuffer := TStringMaker.Create();
        commonSeps_ := TCommonSeps.getInstance();
        stringBuffer.append('FileItem Log:');
        stringBuffer.append(commonSeps_.NEW_LINE);
        stringBuffer.append('Content Type:');
        stringBuffer.append(fileItem_.getContentType());
        stringBuffer.append(commonSeps_.NEW_LINE);
        stringBuffer.append('Field Name:');
        stringBuffer.append(fileItem_.getFieldName());
        stringBuffer.append(commonSeps_.NEW_LINE);
        stringBuffer.append('Name:');
        stringBuffer.append(fileItem_.getName());
        stringBuffer.append(commonSeps_.NEW_LINE);
        stringBuffer.append('Size:');
        stringBuffer.appendlong(Int64(Trunc(fileItem_.getSize())));
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().HTTPREQUEST) then begin
            logUtil_.putF(stringBuffer.toString(), TJava.Box(THttpFileUploadUtil.getInstance()), 'log()');
        end;
end;

initialization
  {AB:INITIALIZATION}
  THttpFileUploadUtil.instance := THttpFileUploadUtil.Create();
  {AB:END}

end.

