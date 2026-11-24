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
unit PCComponentFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ComponentFactory, HardwareComponentInterface;

type
  {AB:TYPES}
  TPCComponentFactory = class(TObject)
  public
    logUtil: TLogUtil;
    componentFactory: TComponentFactory;
    class var instance: TPCComponentFactory;
    procedure InitFields;
        class function getInstance: TPCComponentFactory; overload; static;
        constructor Create;
        function getInstance(component: string; componentData: string): IHardwareComponentInterface; overload; virtual;
        function getComponentType(component: string): string; virtual;
  end;

implementation
uses
  LogConfigTypeFactory, LogConfigTypes, Bridge, Ethernet, HardDriveController, Media, PCI, Unknown, Usb, Video, CommonStrings;


{AB:CODE}

procedure TPCComponentFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.componentFactory := TComponentFactory.getInstance();
end;
    

class function TPCComponentFactory.getInstance: TPCComponentFactory;
begin
        Exit(TPCComponentFactory.instance);
end;
    

constructor TPCComponentFactory.Create;
begin
    inherited Create;
    InitFields;
end;
    

function TPCComponentFactory.getInstance(component: string; componentData: string): IHardwareComponentInterface;
var
  commonStrings_: TCommonStrings;
begin
        try
            if (component) <> ('') then begin
                if (CompareStr(component, Self.componentFactory.ETHERNET.toString())) = (0) then begin
                    Exit((TJava.ToObject(TEthernet.Create(componentData)) as IHardwareComponentInterface));
                end else if (CompareStr(component, Self.componentFactory.BRIDGE.toString())) = (0) then begin
                    Exit((TJava.ToObject(TBridge.Create(componentData)) as IHardwareComponentInterface));
                end else if (CompareStr(component, Self.componentFactory.IDE.toString())) = (0) then begin
                    Exit((TJava.ToObject(THardDriveController.Create(componentData)) as IHardwareComponentInterface));
                end else if (CompareStr(component, Self.componentFactory.MULTIMEDIA.toString())) = (0) then begin
                    Exit((TJava.ToObject(TMedia.Create(componentData)) as IHardwareComponentInterface));
                end else if (CompareStr(component, Self.componentFactory.SCSI.toString())) = (0) then begin
                    Exit((TJava.ToObject(THardDriveController.Create(componentData)) as IHardwareComponentInterface));
                end else if (CompareStr(component, Self.componentFactory.USB.toString())) = (0) then begin
                    Exit((TJava.ToObject(TUsb.Create(componentData)) as IHardwareComponentInterface));
                end else if (CompareStr(component, Self.componentFactory.VGA.toString())) = (0) then begin
                    Exit((TJava.ToObject(TVideo.Create(componentData)) as IHardwareComponentInterface));
                end else if (CompareStr(component, Self.componentFactory.PCI.toString())) = (0) then begin
                    Exit((TJava.ToObject(TPCI.Create(componentData)) as IHardwareComponentInterface));
                end;
            end;
            Exit((TJava.ToObject(TUnknown.Create(componentData)) as IHardwareComponentInterface));
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            if TLogConfigTypes.LOGGING.contains(TLogConfigTypeFactory.getInstance().FACTORYERROR) then begin
                Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.GET_INSTANCE, TJava.Box(e));
            end;
            Exit(TUnknown.Create(commonStrings_.EXCEPTION));
            end;
        end;
end;
    

function TPCComponentFactory.getComponentType(component: string): string;
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
        end else if (CompareStr(component, Self.componentFactory.PCI.toString())) = (0) then begin
            Exit(Self.componentFactory.PCI.toString());
        end;
        Exit(Self.componentFactory.UNKNOWN.toString());
end;

initialization
  {AB:INITIALIZATION}
  TPCComponentFactory.instance := TPCComponentFactory.Create();
  {AB:END}

end.

