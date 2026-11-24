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
// package org.allbinary.logic.system.hardware.linux
unit LinuxHardware;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, HardwareInterface, BridgeInterface, CpuInterface, EthernetInterface, FireWireInterface, HardDriveControllerInterface, HardDriveInterface, HardwareComponentInterface, MachineAccessControlAddressInterface, MediaInterface, MonitorInterface, UsbInterface, VideoInterface, CommonStrings, ABHashtable, BasicArrayList;

type
  {AB:TYPES}
  TLinuxHardware = class(TInterfacedObject, IHardwareInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    componentInterfaceVector: TBasicArrayList;
    videoInterfaceVector: TBasicArrayList;
    hardDriveControllerInterfaceVector: TBasicArrayList;
    cpuInterfaceVector: TBasicArrayList;
    usbInterfaceVector: TBasicArrayList;
    ethernetInterfaceVector: TBasicArrayList;
    multimediaInterfaceVector: TBasicArrayList;
    fireWireInterfaceVector: TBasicArrayList;
    bridgeInterfaceVector: TBasicArrayList;
    hardDriveInterfaceVector: TBasicArrayList;
    macInterfaceVector: TBasicArrayList;
    monitorInterfaceVector: TBasicArrayList;
    NAME: string;
    MINHARDWARE: Integer;
    class var PCIFILE: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(path: string); overload;
        constructor Create; overload;
        procedure init(filePath: string); overload;
        procedure init(lineNumberReader_: TLineNumberReader; filePath: string); overload;
        function getMultimedia(index: Integer): IMediaInterface; virtual;
        function getBridge(index: Integer): IBridgeInterface; virtual;
        function getCpu(index: Integer): ICpuInterface; virtual;
        function getEthernet(index: Integer): IEthernetInterface; virtual;
        function getFireWire(index: Integer): IFireWireInterface; virtual;
        function getHardDriveController(index: Integer): IHardDriveControllerInterface; virtual;
        function getHardDrive(index: Integer): IHardDriveInterface; virtual;
        function getMachineAccessControlAddress(index: Integer): IMachineAccessControlAddressInterface; virtual;
        function getMonitor(index: Integer): IMonitorInterface; virtual;
        function getUsb(index: Integer): IUsbInterface; virtual;
        function getVideo(index: Integer): IVideoInterface; virtual;
        function getComponent(index: Integer): IHardwareComponentInterface; virtual;
        function toString: string; virtual;
        function compareTo(hardwareInterface_: IHardwareInterface): Boolean; virtual;
        function difference(hardwareInterface_: IHardwareInterface): TABHashtable<TObject, TObject>; virtual;
        function isNextHardware(nextLine: string): Boolean; virtual;
  end;

implementation
uses
  PCComponentFactory, BasicArrayListD, StdUtil, LogConfigTypeFactory, LogConfigTypes, AbFile, FilePathData, SubDirectory, StringMaker, Cpu, CommonSeps;


{AB:CODE}

procedure TLinuxHardware.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
  
  
  
  
  
  
  
  
  
  Self.NAME := 'Linux Hardware Profile';
  Self.MINHARDWARE := 5;
end;

function TLinuxHardware.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TLinuxHardware.Create(path: string);
begin
    inherited Create;
    InitFields;
        Self.init(path);
end;
    

constructor TLinuxHardware.Create;
var
  cpu_: TCpu;
begin
    inherited Create;
    InitFields;
        Self.init(TLinuxHardware.PCIFILE);
        if (Self.componentInterfaceVector.size()) < (Self.MINHARDWARE) then begin
            raise SysUtils.Exception.Create('Not Enough Data For A Valid License On Linux');
        end;
        cpu_ := TCpu.Create();
        if (cpu_) <> (nil) then begin
            Self.cpuInterfaceVector.add(TJava.Box(cpu_));
            Self.componentInterfaceVector.add(TJava.Box(cpu_));
        end;
        if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().OS) then begin
            Self.logUtil.putF('Hardware Data: ' + Self.toString(), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        end;
end;
    

// throws Exception
procedure TLinuxHardware.init(filePath: string);
var
  lineNumberReader_: TLineNumberReader;
begin
        lineNumberReader_ := nil;
        try
            Self.init(lineNumberReader_, filePath);
        except
            on e: SysUtils.Exception do begin
            if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().OS) then begin
                Self.logUtil.put('Hardware Data: ' + Self.toString(), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_, TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

// throws Exception
procedure TLinuxHardware.init(lineNumberReader_: TLineNumberReader; filePath: string);
var
  pciFile: TFileReader;
  fileVector: TBasicArrayList;
  file_: TAbFile;
  nextLine: string;
  componentData: TStringMaker;
  componentType: string;
  componentInterface: IHardwareComponentInterface;
begin
        try
        begin
            Self.componentInterfaceVector := TBasicArrayListD.Create();
            Self.videoInterfaceVector := TBasicArrayListD.Create();
            Self.hardDriveControllerInterfaceVector := TBasicArrayListD.Create();
            Self.cpuInterfaceVector := TBasicArrayListD.Create();
            Self.usbInterfaceVector := TBasicArrayListD.Create();
            Self.ethernetInterfaceVector := TBasicArrayListD.Create();
            Self.multimediaInterfaceVector := TBasicArrayListD.Create();
            Self.fireWireInterfaceVector := TBasicArrayListD.Create();
            Self.bridgeInterfaceVector := TBasicArrayListD.Create();
            Self.hardDriveInterfaceVector := TBasicArrayListD.Create();
            Self.macInterfaceVector := TBasicArrayListD.Create();
            Self.monitorInterfaceVector := TBasicArrayListD.Create();
            pciFile := TFileReader.Create(filePath);
            lineNumberReader_ := TLineNumberReader.Create(pciFile);
            if (lineNumberReader_) = (nil) then begin
                fileVector := TSubDirectory.getInstance().search(filePath, TAbFile.createAbFile(TFilePathData.getInstance().PATH_START));
                if not (fileVector.isEmpty()) then begin
                    file_ := TAbFile(TJava.ToObject(fileVector.get(0)));
                    lineNumberReader_ := TLineNumberReader.Create(TFileReader.Create(file_.getPath()));
                end;
                if (lineNumberReader_) = (nil) then begin
                    raise SysUtils.Exception.Create('No Linux File Data');
                end;
            end;
            if (lineNumberReader_) <> (nil) then begin
                if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().OS) then begin
                    Self.logUtil.putF('PCI File Found', TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
                end;
                nextLine := lineNumberReader_.readLine();
                while (nextLine) <> ('') do begin
                    if Self.isNextHardware(nextLine) then begin
                        Break;
                    end;
                    nextLine := lineNumberReader_.readLine();
                end;
                while Self.isNextHardware(nextLine) do begin
                    componentData := TStringMaker.Create();
                    if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().OS) then begin
                        Self.logUtil.putF('Found Hardware Device: ' + IntToStr(Self.componentInterfaceVector.size()), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
                    end;
                    componentData.append(nextLine);
                    componentData.append(TCommonSeps.getInstance().NEW_LINE);
                    nextLine := lineNumberReader_.readLine();
                    componentType := TPCComponentFactory.getInstance().getComponentType(nextLine);
                    while True do begin
                        componentData.append(nextLine);
                        componentData.append(TCommonSeps.getInstance().NEW_LINE);
                        nextLine := lineNumberReader_.readLine();
                        if ((nextLine) = ('')) or (Self.isNextHardware(nextLine)) then begin
                            Break;
                        end;
                    end;
                    componentInterface := TPCComponentFactory.getInstance().getInstance(componentType, componentData.toString());
                    if (componentInterface) <> (nil) then begin
                        Self.componentInterfaceVector.add(TJava.Box(componentInterface));
                    end;
                end;
            end else begin
                if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().OS) then begin
                    Self.logUtil.putF('Could not load PCI File', TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
                end;
            end;
            lineNumberReader_.close();
        end;
        finally
            if (lineNumberReader_) <> (nil) then begin
                lineNumberReader_.close();
            end;
        end;
end;
    

function TLinuxHardware.getMultimedia(index: Integer): IMediaInterface;
begin
        Exit((TJava.ToObject(Self.multimediaInterfaceVector.get(index)) as IMediaInterface));
end;
    

function TLinuxHardware.getBridge(index: Integer): IBridgeInterface;
begin
        Exit((TJava.ToObject(Self.bridgeInterfaceVector.get(index)) as IBridgeInterface));
end;
    

function TLinuxHardware.getCpu(index: Integer): ICpuInterface;
begin
        Exit((TJava.ToObject(Self.cpuInterfaceVector.get(index)) as ICpuInterface));
end;
    

function TLinuxHardware.getEthernet(index: Integer): IEthernetInterface;
begin
        Exit((TJava.ToObject(Self.ethernetInterfaceVector.get(index)) as IEthernetInterface));
end;
    

function TLinuxHardware.getFireWire(index: Integer): IFireWireInterface;
begin
        Exit((TJava.ToObject(Self.fireWireInterfaceVector.get(index)) as IFireWireInterface));
end;
    

function TLinuxHardware.getHardDriveController(index: Integer): IHardDriveControllerInterface;
begin
        Exit((TJava.ToObject(Self.hardDriveControllerInterfaceVector.get(index)) as IHardDriveControllerInterface));
end;
    

function TLinuxHardware.getHardDrive(index: Integer): IHardDriveInterface;
begin
        Exit((TJava.ToObject(Self.hardDriveInterfaceVector.get(index)) as IHardDriveInterface));
end;
    

function TLinuxHardware.getMachineAccessControlAddress(index: Integer): IMachineAccessControlAddressInterface;
begin
        Exit((TJava.ToObject(Self.macInterfaceVector.get(index)) as IMachineAccessControlAddressInterface));
end;
    

function TLinuxHardware.getMonitor(index: Integer): IMonitorInterface;
begin
        Exit((TJava.ToObject(Self.monitorInterfaceVector.get(index)) as IMonitorInterface));
end;
    

function TLinuxHardware.getUsb(index: Integer): IUsbInterface;
begin
        Exit((TJava.ToObject(Self.usbInterfaceVector.get(index)) as IUsbInterface));
end;
    

function TLinuxHardware.getVideo(index: Integer): IVideoInterface;
begin
        Exit((TJava.ToObject(Self.videoInterfaceVector.get(index)) as IVideoInterface));
end;
    

function TLinuxHardware.getComponent(index: Integer): IHardwareComponentInterface;
begin
        Exit((TJava.ToObject(Self.componentInterfaceVector.get(index)) as IHardwareComponentInterface));
end;
    

function TLinuxHardware.toString: string;
var
  hardwareBuffer: TStringMaker;
  size: Integer;
  componentInterface: IHardwareComponentInterface;
  index: Integer;
begin
        hardwareBuffer := TStringMaker.Create();
        size := Self.componentInterfaceVector.size();
        for index := 0 to size - 1 do begin
            componentInterface := (TJava.ToObject(Self.componentInterfaceVector.get(index)) as IHardwareComponentInterface);
            hardwareBuffer.append('Component ');
            hardwareBuffer.appendint(index);
            hardwareBuffer.append(': '#10'');
            hardwareBuffer.append(TJava.ToString(TJava.ToObject(componentInterface)));
            hardwareBuffer.append(TCommonSeps.getInstance().NEW_LINE);
        end;
        Exit(hardwareBuffer.toString());
end;
    

function TLinuxHardware.compareTo(hardwareInterface_: IHardwareInterface): Boolean;
begin
        Exit(True);
end;
    

function TLinuxHardware.difference(hardwareInterface_: IHardwareInterface): TABHashtable<TObject, TObject>;
begin
        Exit(TStdUtil.getInstance().NULL_TABLE);
end;
    

function TLinuxHardware.isNextHardware(nextLine: string): Boolean;
var
  index: Integer;
begin
        if (nextLine) <> ('') then begin
            index := (Pos(TJava.ToString('Bus'), nextLine) - 1);
            if ((index) >= (0)) and ((index) < (4)) then begin
                Exit(True);
            end;
        end;
        Exit(False);
end;

initialization
  {AB:INITIALIZATION}
  TLinuxHardware.PCIFILE := '/proc/pci';
  {AB:END}

end.

