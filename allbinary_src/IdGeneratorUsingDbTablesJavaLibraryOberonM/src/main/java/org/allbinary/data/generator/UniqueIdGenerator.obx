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
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, IdGeneratorEntity, LogUtil, IdGeneratorInterface;

type
  {AB:TYPES}
  TUniqueIdGenerator = class(TInterfacedObject, IIdGeneratorInterface)
  public
    logUtil: TLogUtil;
    idGeneratorEntity: TIdGeneratorEntity;
    name: string;
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
  BasicArrayList, BasicArrayListD, IdGeneratorEntityFactory, StdUtil, CommonStrings;


{AB:CODE}

procedure TUniqueIdGenerator.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
end;

function TUniqueIdGenerator.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TUniqueIdGenerator.Create;
begin
    inherited Create;
    InitFields;
        Self.idGeneratorEntity := TIdGeneratorEntity(TJava.ToObject(TIdGeneratorEntityFactory.getInstance()));
end;
    

procedure TUniqueIdGenerator.initialize(value: Integer);
var
  vector: TBasicArrayList;
  commonStrings_: TCommonStrings;
begin
        try
            vector := TBasicArrayListD.Create();
            vector.add(TJava.Box(Self.name));
            vector.add(TJava.Box(IntToStr(value).toString()));
            Self.idGeneratorEntity.insert(vector);
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
        Self.name := name;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws IOException
function TUniqueIdGenerator.getNext: string;
var
  idLong: Int64;
  newValue: Int64;
  commonStrings_: TCommonStrings;
begin
    TJava.MonitorEnter(Self);
    try
        try
            idLong := Self.idGeneratorEntity.get(Self.name);
            newValue := IntToStr(((idLong)) + (1));
            Self.idGeneratorEntity.update(Self.name, newValue);
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
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  TUniqueIdGenerator.EXT := '.unq';
  {AB:END}

end.

