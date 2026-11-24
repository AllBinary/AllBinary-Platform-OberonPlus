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
// package org.allbinary.logic.system.hardware.components.linux
unit Cpu;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CpuInterface, HardwareComponentInterface, CommonStrings;

type
  {AB:TYPES}
  TCpu = class(TInterfacedObject, ICpuInterface, IHardwareComponentInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    CPUFILE: string;
    cpuHashMap: TJavaHashMap<TObject, TObject>;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(filePath: string); overload;
        constructor Create; overload;
        procedure init(filePath: string); overload;
        procedure init(lineNumberReader_: TLineNumberReader; filePath: string); overload;
        function getProcessor: string; virtual;
        function getVendorId: string; virtual;
        function getCpuFamily: string; virtual;
        function getModel: string; virtual;
        function getModelName: string; virtual;
        function getStepping: string; virtual;
        function getCpuSpeed: string; virtual;
        function getCacheSize: string; virtual;
        function compareTo(cpuInterface_: ICpuInterface): Boolean; overload; virtual;
        function compareTo(componentInterface: IHardwareComponentInterface): Boolean; overload; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  CpuInfo, StdUtil, LogConfigTypeFactory, LogConfigTypes, AbFile, FilePathData, SubDirectory, StringMaker, CommonLabels, CommonSeps, BasicArrayList;


{AB:CODE}

procedure TCpu.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.CPUFILE := '/proc/cpuinfo';
  
end;

function TCpu.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCpu.Create(filePath: string);
begin
    inherited Create;
    InitFields;
        Self.init(filePath);
end;
    

constructor TCpu.Create;
begin
    inherited Create;
    InitFields;
        Self.init(Self.CPUFILE);
end;
    

// throws Exception
procedure TCpu.init(filePath: string);
var
  lineNumberReader_: TLineNumberReader;
begin
        lineNumberReader_ := nil;
        try
            Self.init(lineNumberReader_, filePath);
        except
            on e: SysUtils.Exception do begin
            if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().OS) then begin
                Self.logUtil.put(TStringMaker.Create().append('Cpu Data: ').append(Self.toString()).toString(), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_, TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

// throws Exception
procedure TCpu.init(lineNumberReader_: TLineNumberReader; filePath: string);
var
  fileReader_: TFileReader;
  fileVector: TBasicArrayList;
  file_: TAbFile;
  nextLine: string;
  index: Integer;
  key: string;
  valueIndex: Integer;
  value: string;
begin
        try
        begin
            fileReader_ := TFileReader.Create(filePath);
            lineNumberReader_ := TLineNumberReader.Create(fileReader_);
            Self.cpuHashMap := TStdUtil.getInstance().createHashMap();
            if (lineNumberReader_) = (nil) then begin
                fileVector := TSubDirectory.getInstance().search(filePath, TAbFile.createAbFile(TFilePathData.getInstance().PATH_START));
                if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().OS) then begin
                    Self.logUtil.putF(TStringMaker.Create().append('Cpu File BasicArrayList Size: ').appendint(fileVector.size()).toString(), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
                end;
                if not (fileVector.isEmpty()) then begin
                    file_ := TAbFile(TJava.ToObject(fileVector.get(0)));
                    lineNumberReader_ := TLineNumberReader.Create(TFileReader.Create(file_.getPath()));
                end;
            end;
            if (lineNumberReader_) <> (nil) then begin
                nextLine := lineNumberReader_.readLine();
                while (nextLine) <> ('') do begin
                    index := (Pos(TJava.ToString(':'), nextLine) - 1);
                    if (index) >= (0) then begin
                        key := Copy(nextLine, (0) + 1, (index) - (0));
                        valueIndex := (index) + (1);
                        value := Copy(nextLine, (valueIndex) + 1, (System.Length(nextLine)) - (valueIndex));
                        if ((Pos(TJava.ToString(TJava.ToString(TCpuInfo.PROCESSOR)), key) - 1)) >= (0) then begin
                            Self.cpuHashMap.put(TJava.Box(TCpuInfo.PROCESSOR), TJava.Box(value));
                        end;
                        if ((Pos(TJava.ToString(TJava.ToString(TCpuInfo.VENDORID)), key) - 1)) >= (0) then begin
                            Self.cpuHashMap.put(TJava.Box(TCpuInfo.VENDORID), TJava.Box(value));
                        end;
                        if ((Pos(TJava.ToString(TJava.ToString(TCpuInfo.CPUFAMILY)), key) - 1)) >= (0) then begin
                            Self.cpuHashMap.put(TJava.Box(TCpuInfo.CPUFAMILY), TJava.Box(value));
                        end;
                        if ((Pos(TJava.ToString(TJava.ToString(TCpuInfo.MODEL)), key) - 1)) >= (0) then begin
                            Self.cpuHashMap.put(TJava.Box(TCpuInfo.MODEL), TJava.Box(value));
                        end;
                        if ((Pos(TJava.ToString(TJava.ToString(TCpuInfo.MODELNAME)), key) - 1)) >= (0) then begin
                            Self.cpuHashMap.put(TJava.Box(TCpuInfo.MODELNAME), TJava.Box(value));
                        end;
                        if ((Pos(TJava.ToString(TJava.ToString(TCpuInfo.STEPPING)), key) - 1)) >= (0) then begin
                            Self.cpuHashMap.put(TJava.Box(TCpuInfo.STEPPING), TJava.Box(value));
                        end;
                        if ((Pos(TJava.ToString(TJava.ToString(TCpuInfo.CPUMHZ)), key) - 1)) >= (0) then begin
                            Self.cpuHashMap.put(TJava.Box(TCpuInfo.CPUMHZ), TJava.Box(value));
                        end;
                        if ((Pos(TJava.ToString(TJava.ToString(TCpuInfo.CACHESIZE)), key) - 1)) >= (0) then begin
                            Self.cpuHashMap.put(TJava.Box(TCpuInfo.CACHESIZE), TJava.Box(value));
                        end;
                    end;
                    nextLine := lineNumberReader_.readLine();
                end;
            end;
        end;
        finally
            if (lineNumberReader_) <> (nil) then begin
                lineNumberReader_.close();
            end;
        end;
end;
    

function TCpu.getProcessor: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.cpuHashMap.get(TJava.Box(TCpuInfo.PROCESSOR)))));
end;
    

function TCpu.getVendorId: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.cpuHashMap.get(TJava.Box(TCpuInfo.VENDORID)))));
end;
    

function TCpu.getCpuFamily: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.cpuHashMap.get(TJava.Box(TCpuInfo.CPUFAMILY)))));
end;
    

function TCpu.getModel: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.cpuHashMap.get(TJava.Box(TCpuInfo.MODEL)))));
end;
    

function TCpu.getModelName: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.cpuHashMap.get(TJava.Box(TCpuInfo.MODELNAME)))));
end;
    

function TCpu.getStepping: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.cpuHashMap.get(TJava.Box(TCpuInfo.STEPPING)))));
end;
    

function TCpu.getCpuSpeed: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.cpuHashMap.get(TJava.Box(TCpuInfo.CPUMHZ)))));
end;
    

function TCpu.getCacheSize: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.cpuHashMap.get(TJava.Box(TCpuInfo.CACHESIZE)))));
end;
    

function TCpu.compareTo(cpuInterface_: ICpuInterface): Boolean;
begin
        Exit(True);
end;
    

function TCpu.compareTo(componentInterface: IHardwareComponentInterface): Boolean;
begin
        Exit(True);
end;
    

function TCpu.toString: string;
var
  commonLabels_: TCommonLabels;
  commonSeps_: TCommonSeps;
  stringMaker_: TStringMaker;
begin
        commonLabels_ := TCommonLabels.getInstance();
        commonSeps_ := TCommonSeps.getInstance();
        stringMaker_ := TStringMaker.Create();
        stringMaker_.append(TJava.ToString(TCpuInfo.PROCESSOR)).append(commonLabels_.COLON_SEP).append(Self.getProcessor());
        stringMaker_.append(commonSeps_.NEW_LINE);
        stringMaker_.append(TJava.ToString(TCpuInfo.VENDORID)).append(commonLabels_.COLON_SEP).append(Self.getVendorId());
        stringMaker_.append(commonSeps_.NEW_LINE);
        stringMaker_.append(TJava.ToString(TCpuInfo.CPUFAMILY)).append(commonLabels_.COLON_SEP).append(Self.getCpuFamily());
        stringMaker_.append(commonSeps_.NEW_LINE);
        stringMaker_.append(TJava.ToString(TCpuInfo.MODEL)).append(commonLabels_.COLON_SEP).append(Self.getModel());
        stringMaker_.append(commonSeps_.NEW_LINE);
        stringMaker_.append(TJava.ToString(TCpuInfo.MODELNAME)).append(commonLabels_.COLON_SEP).append(Self.getModelName());
        stringMaker_.append(commonSeps_.NEW_LINE);
        stringMaker_.append(TJava.ToString(TCpuInfo.STEPPING)).append(commonLabels_.COLON_SEP).append(Self.getStepping());
        stringMaker_.append(commonSeps_.NEW_LINE);
        stringMaker_.append(TJava.ToString(TCpuInfo.CPUMHZ)).append(commonLabels_.COLON_SEP).append(Self.getCpuSpeed());
        stringMaker_.append(commonSeps_.NEW_LINE);
        stringMaker_.append(TJava.ToString(TCpuInfo.CACHESIZE)).append(commonLabels_.COLON_SEP).append(Self.getCacheSize());
        Exit(stringMaker_.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

