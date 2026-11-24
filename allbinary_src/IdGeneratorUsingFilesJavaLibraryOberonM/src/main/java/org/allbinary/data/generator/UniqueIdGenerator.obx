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
// package org.allbinary.data.generator
unit UniqueIdGenerator;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbFile, IdGeneratorInterface;

type
  {AB:TYPES}
  TUniqueIdGenerator = class(TInterfacedObject, IIdGeneratorInterface)
  public
    logUtil: TLogUtil;
    newFile: TAbFile;
    id: Int64;
    class var EXT: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure initialize(value: Integer); virtual;
        procedure setFile(filePathName: string; name: string); virtual;
        function getNext: string; virtual;
  end;

implementation
uses
  AbDataInputStream, AbDataOutputStream, AbFileInputStream, AbFileOutputStream, DataOutputStreamFactory, StreamUtil, CommonStrings;


{AB:CODE}

procedure TUniqueIdGenerator.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  Self.id := 0;
end;

function TUniqueIdGenerator.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TUniqueIdGenerator.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TUniqueIdGenerator.initialize(value: Integer);
var
  idData: TAbDataOutputStream;
  commonStrings_: TCommonStrings;
begin
        try
            Self.newFile.createNewFile();
            idData := TDataOutputStreamFactory.getInstance().getInstanceForAbFile(Self.newFile);
            idData.writeLong(value);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().IDLOGGING) then begin
                commonStrings_ := TCommonStrings.getInstance();
                Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'initialize', TJava.Box(e));
            end;
            end;
        end;
end;
    

// throws Exception
procedure TUniqueIdGenerator.setFile(filePathName: string; name: string);
begin
    TJava.MonitorEnter(Self);
    try
        Self.newFile := TAbFile.createAbFile(filePathName);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws IOException
function TUniqueIdGenerator.getNext: string;
var
  idData: TAbDataInputStream;
  idOutData: TAbDataOutputStream;
  idFile: TAbFileInputStream;
  idOutFile: TAbFileOutputStream;
  idLong: Int64;
  commonStrings_: TCommonStrings;
begin
    TJava.MonitorEnter(Self);
    try
        idData := nil;
        idOutData := nil;
        try
        try
            idFile := TAbFileInputStream.createFromAbFile(Self.newFile);
            idData := TAbDataInputStream.Create(idFile);
            Self.id := idData.readLong();
            idOutFile := TAbFileOutputStream.createFromAbFile(Self.newFile);
            idOutData := TAbDataOutputStream.Create(idOutFile);
            idOutData.writeLong((Self.id) + (1));
            idLong := Self.id;
            Exit(idLong.toString());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().IDLOGGING) then begin
                commonStrings_ := TCommonStrings.getInstance();
                Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), 'getNext', TJava.Box(e));
            end;
            Exit('Error');
            end;
        end;
        finally
            TStreamUtil.getInstance().close(idData);
            TStreamUtil.getInstance().close(idOutData);
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  TUniqueIdGenerator.EXT := '.unq';
  {AB:END}

end.

