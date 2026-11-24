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
// package org.allbinary.logic.io.file.zip
unit ZipFileUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbFile, CommonStrings, BasicArrayList;

type
  {AB:TYPES}
  TZipFileUtil = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    class var instance: TZipFileUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TZipFileUtil; static;
        procedure create_(outFilename: string; fileBasicArrayList: TBasicArrayList); virtual;
        procedure unzip(path: string; zipFile: TAbFile; fileName: string); virtual;
  end;

implementation
uses
  AbDataOutputStream, AbFileInputStream, AbFileOutputStream, DataOutputStreamFactory, StreamUtil, FileUtil, StringMaker;


{AB:CODE}

procedure TZipFileUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
end;

constructor TZipFileUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TZipFileUtil.getInstance: TZipFileUtil;
begin
        Exit(TZipFileUtil.instance);
end;
    

procedure TZipFileUtil.create_(outFilename: string; fileBasicArrayList: TBasicArrayList);
var
  zipFile: TAbFile;
  outputStream: TZipOutputStream;
  streamUtil_: TStreamUtil;
  stringBuffer: TStringMaker;
  byteArray: TArray<ShortInt>;
  fileInputStream: TAbFileInputStream;
  size: Integer;
  current: Integer;
  file_: TAbFile;
  i: Integer;
begin
        try
            zipFile := TAbFile.createAbFile(outFilename);
            if zipFile.exists() then begin
                zipFile.delete_();
            end;
            zipFile.createNewFile();
            outputStream := TZipOutputStream.Create(TAbFileOutputStream.createFromAbFile(zipFile));
            streamUtil_ := TStreamUtil.getInstance();
            stringBuffer := TStringMaker.Create();
            byteArray := TJava.NewArray<ShortInt>(16384);
            
            size := fileBasicArrayList.size();
            current := 0;
            for i := 0 to size - 1 do begin
                file_ := TAbFile(TJava.ToObject(fileBasicArrayList.get(i)));
                if file_.isDirectory() then begin
                end else if file_.isFile() then begin
                    stringBuffer.delete_(0, stringBuffer.length());
                    stringBuffer.appendint(current);
                    stringBuffer.append(' Creating Zip File Entry: ');
                    stringBuffer.append(file_.getPath());
                    Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'create()');
                    try
                        fileInputStream := TAbFileInputStream.createFromAbFile(file_);
                        outputStream.putNextEntry(TZipEntry.Create(file_.getPath()));
                        streamUtil_.get(fileInputStream, outputStream, byteArray);
                        outputStream.closeEntry();
                        streamUtil_.close(fileInputStream);
                    except
                        on e: SysUtils.Exception do begin
                        Self.logUtil.putF('Skipping File (Probably Local): ' + TJava.ToString(file_.getPath()), TJava.Box(Self), 'create()');
                        end;
                    end;
                end;
                Inc(current);
            end;
            streamUtil_.close(outputStream);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'create', TJava.Box(e));
            end;
        end;
end;
    

// throws Exception
procedure TZipFileUtil.unzip(path: string; zipFile: TAbFile; fileName: string);
var
  buffer: TArray<ShortInt>;
  inputStream: TZipInputStream;
  zipEntry_: TZipEntry;
  stringBuffer: TStringMaker;
  fileUtil_: TFileUtil;
  entryName: string;
  entryFile: TAbFile;
  dataOutputStream: TAbDataOutputStream;
begin
        buffer := TJava.NewArray<ShortInt>(16384);
        inputStream := nil;
        try
        begin
            inputStream := TZipInputStream.Create(TAbFileInputStream.createFromAbFile(zipFile));
            
            stringBuffer := TStringMaker.Create();
            fileUtil_ := TFileUtil.getInstance();
            while ((TJava.Assign(zipEntry_, inputStream.getNextEntry()))) <> (nil) do begin
                entryName := zipEntry_.getName();
                if zipEntry_.isDirectory() then begin
                end else begin
                    entryFile := TAbFile.createAbFile(path + entryName);
                    stringBuffer.delete_(0, stringBuffer.length());
                    stringBuffer.append('ZipEntry Name: ');
                    stringBuffer.append(entryName);
                    stringBuffer.append(' isFile: ');
                    stringBuffer.appendboolean(entryFile.isFile());
                    stringBuffer.append(' isDirectory: ');
                    stringBuffer.appendboolean(entryFile.isDirectory());
                    stringBuffer.append(' getParent: ');
                    stringBuffer.append(entryFile.getParent());
                    Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'unzip');
                    dataOutputStream := TDataOutputStreamFactory.getInstance().getInstanceForAbFile(entryFile);
                    fileUtil_.write(inputStream, dataOutputStream, buffer);
                end;
                inputStream.closeEntry();
            end;
        end;
        finally
            TStreamUtil.getInstance().close(inputStream);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TZipFileUtil.instance := TZipFileUtil.Create();
  {AB:END}

end.

