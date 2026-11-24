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
// package org.allbinary.graphics.j2me.workarea.canvas.event
unit MyCanvasEventService;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, EventListenerList, MyCanvasEventListener, MyCanvasEvent;

type
  {AB:TYPES}
  TMyCanvasEventService = class(TObject)
  public
    class var listenerList: TEventListenerList;
    class var DELETE_: string;
    class var DUPLICATE: string;
    class var SELECT: string;
    class var ROTATE: string;
    class var EXPLODE: string;
    class var AUTOEXPLODE: string;
    class var CENTER: string;
        constructor Create;
        class procedure addListener(listener: TMyCanvasEventListener); static;
        class procedure removeListener(listener: TMyCanvasEventListener); static;
        class procedure fire(evt: TMyCanvasEvent); static;
  end;

implementation
uses
  EventListener;


{AB:CODE}
    

constructor TMyCanvasEventService.Create;
begin
    inherited Create;
end;
    

class procedure TMyCanvasEventService.addListener(listener: TMyCanvasEventListener);
begin
    TJava.MonitorEnter(nil);
    try
        TMyCanvasEventService.listenerList.add(TClass(TJava.ToObject(TJava.ToObject(listener).ClassType)), TEventListener(TJava.ToObject(listener)));
    finally
    TJava.MonitorExit(nil);
    end;
end;
    

class procedure TMyCanvasEventService.removeListener(listener: TMyCanvasEventListener);
begin
    TJava.MonitorEnter(nil);
    try
        TMyCanvasEventService.listenerList.remove(TClass(TJava.ToObject(TJava.ToObject(listener).ClassType)), TEventListener(TJava.ToObject(listener)));
    finally
    TJava.MonitorExit(nil);
    end;
end;
    

// throws Exception
class procedure TMyCanvasEventService.fire(evt: TMyCanvasEvent);
var
  listeners: TArray<TObject>;
  i: Integer;
begin
    TJava.MonitorEnter(nil);
    try
        listeners := TMyCanvasEventService.listenerList.getListenerList();
        i := 0;
        while (i) < (System.Length(listeners)) do begin
            if (listeners[i]) = (TJava.ToObject(listeners[(i) + (1)]).ClassType) then begin
                if (evt.getCommand().compareTo(TMyCanvasEventService.DELETE_)) = (0) then begin
                    (TMyCanvasEventListener(TJava.ToObject(listeners[(i) + (1)]))).delete_(evt);
                end else if (evt.getCommand().compareTo(TMyCanvasEventService.DUPLICATE)) = (0) then begin
                    (TMyCanvasEventListener(TJava.ToObject(listeners[(i) + (1)]))).duplicate(evt);
                end else if (evt.getCommand().compareTo(TMyCanvasEventService.SELECT)) = (0) then begin
                    (TMyCanvasEventListener(TJava.ToObject(listeners[(i) + (1)]))).select(evt);
                end else if (evt.getCommand().compareTo(TMyCanvasEventService.ROTATE)) = (0) then begin
                    (TMyCanvasEventListener(TJava.ToObject(listeners[(i) + (1)]))).rotate(evt);
                end else if (evt.getCommand().compareTo(TMyCanvasEventService.EXPLODE)) = (0) then begin
                    (TMyCanvasEventListener(TJava.ToObject(listeners[(i) + (1)]))).explode(evt);
                end else if (evt.getCommand().compareTo(TMyCanvasEventService.AUTOEXPLODE)) = (0) then begin
                    (TMyCanvasEventListener(TJava.ToObject(listeners[(i) + (1)]))).autoExplode(evt);
                end else if (evt.getCommand().compareTo(TMyCanvasEventService.CENTER)) = (0) then begin
                    (TMyCanvasEventListener(TJava.ToObject(listeners[(i) + (1)]))).center(evt);
                end;
            end;
            i := (i) + (2);
        end;
    finally
    TJava.MonitorExit(nil);
    end;
end;

initialization
  {AB:INITIALIZATION}
  TMyCanvasEventService.listenerList := TEventListenerList.Create();
  TMyCanvasEventService.DELETE_ := 'delete';
  TMyCanvasEventService.DUPLICATE := 'duplicate';
  TMyCanvasEventService.SELECT := 'select';
  TMyCanvasEventService.ROTATE := 'rotate';
  TMyCanvasEventService.EXPLODE := 'explode';
  TMyCanvasEventService.AUTOEXPLODE := 'autoExplode';
  TMyCanvasEventService.CENTER := 'center';
  {AB:END}

end.

