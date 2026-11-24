{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.media.graphics.geography.map
unit GeographicMapEventHandler;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryGameLayer, EventListenerInterface, BasicEventHandler, BasicArrayList;

type
  {AB:TYPES}
  TGeographicMapEventHandler = class(TBasicEventHandler)
  public
    list: TBasicArrayList;
    class var instance: TGeographicMapEventHandler;
    procedure InitFields;
        class function getInstance: TGeographicMapEventHandler; static;
        constructor Create;
        procedure addListener(gameLayer: TAllBinaryGameLayer); virtual;
        procedure removeAllListeners; override;
        procedure removeListener(eventListenerInterface_: IEventListenerInterface); override;
        procedure fireEvent; virtual;
  end;

implementation
uses
  EventStrings, BasicArrayListD;


{AB:CODE}

procedure TGeographicMapEventHandler.InitFields;
begin
  Self.list := TBasicArrayListD.Create();
end;
    

class function TGeographicMapEventHandler.getInstance: TGeographicMapEventHandler;
begin
        Exit(TGeographicMapEventHandler.instance);
end;
    

constructor TGeographicMapEventHandler.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TGeographicMapEventHandler.addListener(gameLayer: TAllBinaryGameLayer);
begin
        if not (Self.list.contains(TJava.Box(gameLayer))) then begin
            Self.list.add(TJava.Box(gameLayer));
        end;
end;
    

procedure TGeographicMapEventHandler.removeAllListeners;
begin
        Self.list.clear();
        inherited removeAllListeners();
end;
    

procedure TGeographicMapEventHandler.removeListener(eventListenerInterface_: IEventListenerInterface);
begin
        Self.list.remove(TJava.ToObject(eventListenerInterface_));
        inherited removeListener(eventListenerInterface_);
end;
    

procedure TGeographicMapEventHandler.fireEvent;
var
  gameLayer: TAllBinaryGameLayer;
  index: Integer;
begin
        index := Self.list.size();
        while (TJava.PreDec(index)) >= (0) do begin
            try
                gameLayer := TAllBinaryGameLayer(TJava.ToObject(Self.list.get(index)));
                gameLayer.move();
            except
                on e: SysUtils.Exception do begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), TEventStrings.getInstance().FIRE_EVENT, TJava.Box(e));
                end;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TGeographicMapEventHandler.instance := TGeographicMapEventHandler.Create();
  {AB:END}

end.

