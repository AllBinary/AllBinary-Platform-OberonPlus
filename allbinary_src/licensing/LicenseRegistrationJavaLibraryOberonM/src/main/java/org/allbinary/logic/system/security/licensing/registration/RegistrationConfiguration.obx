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
// package org.allbinary.logic.system.security.licensing.registration
unit RegistrationConfiguration;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil;

type
  {AB:TYPES}
  TRegistrationConfiguration = class(TObject)
  public
    logUtil: TLogUtil;
    registrationCode: string;
    NAME: string;
    FILE_: string;
    class var SINGLETON: TRegistrationConfiguration;
    procedure InitFields;
        constructor Create;
        class function getInstance: TRegistrationConfiguration; static;
        procedure read;
        procedure write; virtual;
        function toString: string; virtual;
        procedure setRegistrationCode(registrationCode: string); virtual;
        function getRegistrationCode: string; virtual;
  end;

implementation
uses
  AbDataOutputStream, FileStreamFactory, StreamUtil, FileFactory, CommonStrings, StringMaker, StringUtil, PreLogUtil;


{AB:CODE}

procedure TRegistrationConfiguration.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.registrationCode := 'No Registration Code';
  Self.NAME := 'registrationid';
  Self.FILE_ := 'Registration.dat';
end;
    

constructor TRegistrationConfiguration.Create;
var
  commonStrings_: TCommonStrings;
begin
    inherited Create;
    InitFields;
        try
            if TFileFactory.getInstance().isFile(Self.FILE_) then begin
                Self.read();
            end else begin
                Self.write();
            end;
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.CONSTRUCTOR_, TJava.Box(e));
            end;
        end;
end;
    

class function TRegistrationConfiguration.getInstance: TRegistrationConfiguration;
begin
        Exit(TRegistrationConfiguration.SINGLETON);
end;
    

// throws Exception
procedure TRegistrationConfiguration.read;
var
  fileInputStreamFactory: TFileStreamFactory;
  fileInputStream: TInputStream;
  dataInputStream_: TDataInputStream;
begin
        fileInputStreamFactory := TFileStreamFactory.getInstance();
        fileInputStream := fileInputStreamFactory.getFileInputStreamInstance(TStringUtil.getInstance().EMPTY_STRING, Self.FILE_);
        dataInputStream_ := TDataInputStream.Create(fileInputStream);
        Self.setRegistrationCode(dataInputStream_.readUTF());
        TPreLogUtil.put(TStringMaker.Create().append('Read Configuration: ').append(Self.toString()).toString(), TJava.Box(Self), 'read');
end;
    

// throws Exception
procedure TRegistrationConfiguration.write;
var
  dataOutputStream: TAbDataOutputStream;
  fileInputStreamFactory: TFileStreamFactory;
  fileOutputStream: TOutputStream;
begin
        dataOutputStream := nil;
        try
        begin
            Self.logUtil.putF(TStringMaker.Create().append('Write Configuration: ').append(Self.toString()).toString(), TJava.Box(Self), 'write');
            fileInputStreamFactory := TFileStreamFactory.getInstance();
            fileOutputStream := fileInputStreamFactory.getFileOutputStreamInstance(TStringUtil.getInstance().EMPTY_STRING, Self.FILE_);
            dataOutputStream := TAbDataOutputStream.Create(fileOutputStream);
            dataOutputStream.writeUTF(Self.getRegistrationCode());
            dataOutputStream.flush();
        end;
        finally
            TStreamUtil.getInstance().close(dataOutputStream);
        end;
end;
    

function TRegistrationConfiguration.toString: string;
begin
        Exit(TStringMaker.Create().append('Registration Code: ').append(Self.getRegistrationCode()).toString());
end;
    

procedure TRegistrationConfiguration.setRegistrationCode(registrationCode: string);
begin
        Self.registrationCode := registrationCode;
end;
    

function TRegistrationConfiguration.getRegistrationCode: string;
begin
        Exit(Self.registrationCode);
end;

initialization
  {AB:INITIALIZATION}
  TRegistrationConfiguration.SINGLETON := TRegistrationConfiguration.Create();
  {AB:END}

end.

