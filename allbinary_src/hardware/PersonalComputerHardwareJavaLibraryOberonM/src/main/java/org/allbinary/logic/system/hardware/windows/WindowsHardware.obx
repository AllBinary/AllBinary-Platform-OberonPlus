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
// package org.allbinary.logic.system.hardware.windows
unit WindowsHardware;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, HardwareInterface, ComponentFactory, BridgeInterface, CpuInterface, EthernetInterface, FireWireInterface, HardDriveControllerInterface, HardDriveInterface, HardwareComponentInterface, MachineAccessControlAddressInterface, MediaInterface, MonitorInterface, UsbInterface, VideoInterface, ABHashtable;

type
  {AB:TYPES}
  TWindowsHardware = class(TInterfacedObject, IHardwareInterface)
  public
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
    componentFactory: TComponentFactory;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        function getComponentType(component: string): string;
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
  end;

implementation
uses
  BasicArrayListD, StdUtil, StringMaker, CommonSeps;


{AB:CODE}

procedure TWindowsHardware.InitFields;
begin
  
  
  
  
  
  
  
  
  
  
  
  
  Self.NAME := 'Windows Hardware Profile';
  Self.MINHARDWARE := 0;
  Self.componentFactory := TComponentFactory.getInstance();
end;

function TWindowsHardware.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TWindowsHardware.Create;
begin
    inherited Create;
    InitFields;
        try
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
            if (Self.componentInterfaceVector.size()) < (Self.MINHARDWARE) then begin
                raise SysUtils.Exception.Create('Not Enough Data For A Valid License On Windows');
            end;
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
end;
    

function TWindowsHardware.getComponentType(component: string): string;
begin
        if ((Pos(TJava.ToString(Self.componentFactory.ETHERNET.toString()), component) - 1)) >= (0) then begin
            Exit(Self.componentFactory.ETHERNET.toString());
        end else if ((Pos(TJava.ToString(Self.componentFactory.BRIDGE.toString()), component) - 1)) >= (0) then begin
            Exit(Self.componentFactory.BRIDGE.toString());
        end else if ((Pos(TJava.ToString(Self.componentFactory.IDE.toString()), component) - 1)) >= (0) then begin
            Exit(Self.componentFactory.IDE.toString());
        end else if ((Pos(TJava.ToString(Self.componentFactory.MULTIMEDIA.toString()), component) - 1)) >= (0) then begin
            Exit(Self.componentFactory.MULTIMEDIA.toString());
        end else if ((Pos(TJava.ToString(Self.componentFactory.SCSI.toString()), component) - 1)) >= (0) then begin
            Exit(Self.componentFactory.SCSI.toString());
        end else if ((Pos(TJava.ToString(Self.componentFactory.USB.toString()), component) - 1)) >= (0) then begin
            Exit(Self.componentFactory.USB.toString());
        end else if ((Pos(TJava.ToString(Self.componentFactory.VGA.toString()), component) - 1)) >= (0) then begin
            Exit(Self.componentFactory.VGA.toString());
        end else begin
            Exit(nil);
        end;
end;
    

function TWindowsHardware.getMultimedia(index: Integer): IMediaInterface;
begin
        Exit((TJava.ToObject(Self.multimediaInterfaceVector.get(index)) as IMediaInterface));
end;
    

function TWindowsHardware.getBridge(index: Integer): IBridgeInterface;
begin
        Exit((TJava.ToObject(Self.bridgeInterfaceVector.get(index)) as IBridgeInterface));
end;
    

function TWindowsHardware.getCpu(index: Integer): ICpuInterface;
begin
        Exit((TJava.ToObject(Self.cpuInterfaceVector.get(index)) as ICpuInterface));
end;
    

function TWindowsHardware.getEthernet(index: Integer): IEthernetInterface;
begin
        Exit((TJava.ToObject(Self.ethernetInterfaceVector.get(index)) as IEthernetInterface));
end;
    

function TWindowsHardware.getFireWire(index: Integer): IFireWireInterface;
begin
        Exit((TJava.ToObject(Self.fireWireInterfaceVector.get(index)) as IFireWireInterface));
end;
    

function TWindowsHardware.getHardDriveController(index: Integer): IHardDriveControllerInterface;
begin
        Exit((TJava.ToObject(Self.hardDriveControllerInterfaceVector.get(index)) as IHardDriveControllerInterface));
end;
    

function TWindowsHardware.getHardDrive(index: Integer): IHardDriveInterface;
begin
        Exit((TJava.ToObject(Self.hardDriveInterfaceVector.get(index)) as IHardDriveInterface));
end;
    

function TWindowsHardware.getMachineAccessControlAddress(index: Integer): IMachineAccessControlAddressInterface;
begin
        Exit((TJava.ToObject(Self.macInterfaceVector.get(index)) as IMachineAccessControlAddressInterface));
end;
    

function TWindowsHardware.getMonitor(index: Integer): IMonitorInterface;
begin
        Exit((TJava.ToObject(Self.monitorInterfaceVector.get(index)) as IMonitorInterface));
end;
    

function TWindowsHardware.getUsb(index: Integer): IUsbInterface;
begin
        Exit((TJava.ToObject(Self.usbInterfaceVector.get(index)) as IUsbInterface));
end;
    

function TWindowsHardware.getVideo(index: Integer): IVideoInterface;
begin
        Exit((TJava.ToObject(Self.videoInterfaceVector.get(index)) as IVideoInterface));
end;
    

function TWindowsHardware.getComponent(index: Integer): IHardwareComponentInterface;
begin
        Exit((TJava.ToObject(Self.componentInterfaceVector.get(index)) as IHardwareComponentInterface));
end;
    

function TWindowsHardware.toString: string;
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
            hardwareBuffer.append(TJava.ToString(TJava.ToObject(componentInterface)));
            hardwareBuffer.append(TCommonSeps.getInstance().NEW_LINE);
        end;
        Exit(hardwareBuffer.toString());
end;
    

function TWindowsHardware.compareTo(hardwareInterface_: IHardwareInterface): Boolean;
begin
        Exit(True);
end;
    

function TWindowsHardware.difference(hardwareInterface_: IHardwareInterface): TABHashtable<TObject, TObject>;
begin
        Exit(TStdUtil.getInstance().NULL_TABLE);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

