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
// package org.allbinary.media.graphics.geography.map.event
unit GeographicMapCellPositionEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, MiniMapLayer, AllBinaryEventObject, EventListenerInterface, BasicEventHandler;

type
  {AB:TYPES}
  TGeographicMapCellPositionEventHandler = class(TBasicEventHandler)
  public
    list: TBasicArrayList;
    class var instance: TGeographicMapCellPositionEventHandler;
    procedure InitFields;
        class function getInstance: TGeographicMapCellPositionEventHandler; static;
        constructor Create;
        procedure addListener(miniMapLayer_: TMiniMapLayer); virtual;
        procedure removeAllListeners; override;
        procedure removeListener(eventListenerInterface_: IEventListenerInterface); override;
        procedure fireEvent(eventObject: TAllBinaryEventObject); override;
        procedure fireRemoveEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface); override;
  end;

implementation
uses
  GeographicMapCellPositionEvent, GeographicMapCellPositionEventListenerInterface, BasicArrayListD, EventStrings;


{AB:CODE}

procedure TGeographicMapCellPositionEventHandler.InitFields;
begin
  Self.list := TBasicArrayListD.Create();
end;
    

class function TGeographicMapCellPositionEventHandler.getInstance: TGeographicMapCellPositionEventHandler;
begin
        Exit(TGeographicMapCellPositionEventHandler.instance);
end;
    

constructor TGeographicMapCellPositionEventHandler.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TGeographicMapCellPositionEventHandler.addListener(miniMapLayer_: TMiniMapLayer);
begin
        if not (Self.list.contains(TJava.Box(miniMapLayer_))) then begin
            Self.list.add(TJava.Box(miniMapLayer_));
        end;
end;
    

procedure TGeographicMapCellPositionEventHandler.removeAllListeners;
begin
        Self.list.clear();
        inherited removeAllListeners();
end;
    

procedure TGeographicMapCellPositionEventHandler.removeListener(eventListenerInterface_: IEventListenerInterface);
begin
        Self.list.remove(TJava.ToObject(eventListenerInterface_));
        inherited removeListener(eventListenerInterface_);
end;
    

// throws Exception
procedure TGeographicMapCellPositionEventHandler.fireEvent(eventObject: TAllBinaryEventObject);
var
  miniMapLayer_: TMiniMapLayer;
  index: Integer;
begin
        index := Self.list.size();
        while (TJava.PreDec(index)) >= (0) do begin
            try
                miniMapLayer_ := TMiniMapLayer(TJava.ToObject(Self.list.get(index)));
                miniMapLayer_.onGeographicMapCellPositionEvent(TGeographicMapCellPositionEvent(TJava.ToObject(eventObject)));
            except
                on e: SysUtils.Exception do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), TEventStrings.getInstance().FIRE_EVENT, TJava.Box(e));
                end;
            end;
        end;
        inherited fireEvent(eventObject);
end;
    

// throws Exception
procedure TGeographicMapCellPositionEventHandler.fireRemoveEvent(eventObject: TAllBinaryEventObject);
var
  list: TBasicArrayList;
  miniMapLayer_: TMiniMapLayer;
  index: Integer;
  eventListenerInterface_: IEventListenerInterface;
  geographicMapCellPositionEventListenerInterface_: IGeographicMapCellPositionEventListenerInterface;
  size: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        list := Self.eventListenerInterfaceList;
        index := Self.list.size();
        while (TJava.PreDec(index)) >= (0) do begin
            try
                miniMapLayer_ := TMiniMapLayer(TJava.ToObject(Self.list.get(index)));
                miniMapLayer_.onRemoveGeographicMapCellPositionEvent(TGeographicMapCellPositionEvent(TJava.ToObject(eventObject)));
            except
                on e: SysUtils.Exception do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), TEventStrings.getInstance().FIRE_EVENT, TJava.Box(e));
                end;
            end;
        end;
        
        
        size := list.size();
        for index := 0 to size - 1 do begin
            try
                eventListenerInterface_ := (TJava.ToObject(list.get(index)) as IEventListenerInterface);
                geographicMapCellPositionEventListenerInterface_ := ((TJava.ToObject(eventListenerInterface_) as IGeographicMapCellPositionEventListenerInterface));
                geographicMapCellPositionEventListenerInterface_.onRemoveGeographicMapCellPositionEvent(TGeographicMapCellPositionEvent(TJava.ToObject(eventObject)));
            except
                on e: SysUtils.Exception do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), TEventStrings.getInstance().FIRE_EVENT, TJava.Box(e));
                end;
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
procedure TGeographicMapCellPositionEventHandler.process(eventObject: TAllBinaryEventObject; eventListenerInterface_: IEventListenerInterface);
var
  geographicMapCellPositionEventListenerInterface_: IGeographicMapCellPositionEventListenerInterface;
begin
        geographicMapCellPositionEventListenerInterface_ := ((TJava.ToObject(eventListenerInterface_) as IGeographicMapCellPositionEventListenerInterface));
        geographicMapCellPositionEventListenerInterface_.onGeographicMapCellPositionEvent(TGeographicMapCellPositionEvent(TJava.ToObject(eventObject)));
end;

initialization
  {AB:INITIALIZATION}
  TGeographicMapCellPositionEventHandler.instance := TGeographicMapCellPositionEventHandler.Create();
  {AB:END}

end.

