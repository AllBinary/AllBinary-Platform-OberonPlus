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
// package org.allbinary.logic.system.hardware.android
unit AndroidHardware;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, HardwareInterface, HardwareComponentInterface, CommonStrings, ABHashtable, BasicArrayList;

type
  {AB:TYPES}
  TAndroidHardware = class(TInterfacedObject, IHardwareInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    componentInterfaceVector: TBasicArrayList;
    PROC_BUS_INPUT_DIRECTORY: string;
    DEVICES: string;
    MINHARDWARE: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure init(filePath: string);
        function get(filePath: string): TLineNumberReader;
        function getComponent(index: Integer): IHardwareComponentInterface; virtual;
        function toString: string; virtual;
        function compareTo(hardwareInterface_: IHardwareInterface): Boolean; virtual;
        function difference(hardwareInterface_: IHardwareInterface): TABHashtable<TObject, TObject>; virtual;
  end;

implementation
uses
  NullCloseable, StdUtil, StringMaker, UnknownHardware, CommonSeps, BasicArrayListD;


{AB:CODE}

procedure TAndroidHardware.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.componentInterfaceVector := TBasicArrayListD.Create();
  Self.PROC_BUS_INPUT_DIRECTORY := '/proc/bus/input/';
  Self.DEVICES := Self.PROC_BUS_INPUT_DIRECTORY + 'devices/';
  Self.MINHARDWARE := 3;
end;

function TAndroidHardware.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAndroidHardware.Create;
var
  size: Integer;
begin
    inherited Create;
    InitFields;
        Self.init(Self.DEVICES);
        size := Self.componentInterfaceVector.size();
        if (size) < (Self.MINHARDWARE) then begin
            raise SysUtils.Exception.Create('Not Enough Data For A Valid License On Linux');
        end;
end;
    

// throws Exception
procedure TAndroidHardware.init(filePath: string);
var
  lineNumberReader_: ICloseable;
begin
        lineNumberReader_ := TNullCloseable.NULL_CLOSEABLE;
        try
        try
            lineNumberReader_ := Self.get(filePath);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put('Hardware Data: ' + Self.toString(), TJava.Box(Self), Self.commonStrings.INIT, TJava.Box(e));
            raise e;
            end;
        end;
        finally
            if (lineNumberReader_) <> (nil) then begin
                lineNumberReader_.close();
            end;
        end;
end;
    

// throws Exception
function TAndroidHardware.get(filePath: string): TLineNumberReader;
var
  pciFile: TFileReader;
  lineNumberReader_: TLineNumberReader;
  nextLine: string;
begin
        Self.componentInterfaceVector := TBasicArrayListD.Create();
        pciFile := TFileReader.Create(filePath);
        lineNumberReader_ := TLineNumberReader.Create(pciFile);
        Self.logUtil.putF('File Found', TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        nextLine := lineNumberReader_.readLine();
        while (nextLine) <> ('') do begin
            nextLine := lineNumberReader_.readLine();
            Self.componentInterfaceVector.add(TJava.Box(TUnknownHardware.Create(nextLine)));
        end;
        Exit(lineNumberReader_);
end;
    

function TAndroidHardware.getComponent(index: Integer): IHardwareComponentInterface;
begin
        Exit((TJava.ToObject(Self.componentInterfaceVector.get(index)) as IHardwareComponentInterface));
end;
    

function TAndroidHardware.toString: string;
var
  stringBuilder: TStringMaker;
  size: Integer;
  componentInterface: IHardwareComponentInterface;
  index: Integer;
begin
        stringBuilder := TStringMaker.Create();
        size := Self.componentInterfaceVector.size();
        for index := 0 to size - 1 do begin
            componentInterface := (TJava.ToObject(Self.componentInterfaceVector.get(index)) as IHardwareComponentInterface);
            stringBuilder.append(TJava.ToString(TJava.ToObject(componentInterface)));
            stringBuilder.append(TCommonSeps.getInstance().NEW_LINE);
        end;
        Exit(stringBuilder.toString());
end;
    

function TAndroidHardware.compareTo(hardwareInterface_: IHardwareInterface): Boolean;
begin
        Exit(True);
end;
    

function TAndroidHardware.difference(hardwareInterface_: IHardwareInterface): TABHashtable<TObject, TObject>;
begin
        Exit(TStdUtil.getInstance().NULL_TABLE);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

