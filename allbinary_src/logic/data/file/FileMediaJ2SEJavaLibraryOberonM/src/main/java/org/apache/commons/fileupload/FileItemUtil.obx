// Generated Code Do Not Modify
// package org.apache.commons.fileupload
unit FileItemUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbFile, FileItemStream, FileItem;

type
  {AB:TYPES}
  TFileItemUtil = class(TObject)
  public
    logUtil: TLogUtil;
    DEFAULT_CHARSET: string;
    class var instance: TFileItemUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TFileItemUtil; static;
        function getString(byteArray: TArray<ShortInt>): string; overload; virtual;
        function getString(fileItem_: TFileItemStream): string; overload; virtual;
        function getBytes(fileItem_: TFileItemStream): TArray<ShortInt>; virtual;
        procedure write(fileItem_: TFileItem; file_: TAbFile); virtual;
  end;

implementation
uses
  StreamUtil, AbFileNativeUtil, StringMaker;


{AB:CODE}

procedure TFileItemUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.DEFAULT_CHARSET := 'ISO-8859-1';
end;

constructor TFileItemUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TFileItemUtil.getInstance: TFileItemUtil;
begin
        Exit(TFileItemUtil.instance);
end;
    

// throws Exception
function TFileItemUtil.getString(byteArray: TArray<ShortInt>): string;
begin
        Exit(TJava.NewString(byteArray, Self.DEFAULT_CHARSET));
end;
    

// throws Exception
function TFileItemUtil.getString(fileItem_: TFileItemStream): string;
begin
        Exit(TJava.NewString(Self.getBytes(fileItem_), Self.DEFAULT_CHARSET));
end;
    

// throws Exception
function TFileItemUtil.getBytes(fileItem_: TFileItemStream): TArray<ShortInt>;
var
  streamUtil_: TStreamUtil;
  inputStream_: TInputStream;
  outputStream: TByteArrayOutputStream;
  stringBuffer: TStringMaker;
begin
        streamUtil_ := TStreamUtil.getInstance();
        inputStream_ := nil;
        outputStream := nil;
        try
        begin
            inputStream_ := fileItem_.openStream();
            outputStream := TByteArrayOutputStream.Create;
            if fileItem_.isFormField() then begin
                Self.logUtil.putF('FileItemStream FieldName: ' + TJava.ToString(fileItem_.getFieldName()), TJava.Box(Self), 'write()');
            end else begin
                stringBuffer := TStringMaker.Create();
                stringBuffer.append('Uploaded File FieldName: ');
                stringBuffer.append(fileItem_.getFieldName());
                stringBuffer.append(' name = ');
                stringBuffer.append(fileItem_.getName());
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'write()');
            end;
            outputStream := TByteArrayOutputStream(TJava.ToObject(streamUtil_.get(inputStream_, outputStream, TJava.NewArray<ShortInt>(16384))));
            Exit(outputStream.toByteArray());
        end;
        finally
            streamUtil_.close(outputStream);
            streamUtil_.close(inputStream_);
        end;
end;
    

// throws Exception
procedure TFileItemUtil.write(fileItem_: TFileItem; file_: TAbFile);
begin
        fileItem_.write(TAbFileNativeUtil.get(file_));
end;

initialization
  {AB:INITIALIZATION}
  TFileItemUtil.instance := TFileItemUtil.Create();
  {AB:END}

end.

