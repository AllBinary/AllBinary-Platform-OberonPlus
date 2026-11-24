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
// package org.allbinary.graphics.j2me.workarea.tools.event
unit MyGraphicItemEventService;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, EventListenerList, MyGraphicItemEventListener, MyGraphicItemEvent;

type
  {AB:TYPES}
  TMyGraphicItemEventService = class(TObject)
  public
    class var listenerList: TEventListenerList;
    class var DELETE_: string;
    class var DESELECT: string;
    class var SELECT: string;
    class var DUPLICATE: string;
    class var ROTATE: string;
        constructor Create;
        class procedure addListener(listener: TMyGraphicItemEventListener); static;
        class procedure removeListener(listener: TMyGraphicItemEventListener); static;
        class procedure fire(evt: TMyGraphicItemEvent); static;
  end;

implementation
uses
  EventListener;


{AB:CODE}
    

constructor TMyGraphicItemEventService.Create;
begin
    inherited Create;
end;
    

class procedure TMyGraphicItemEventService.addListener(listener: TMyGraphicItemEventListener);
begin
    TJava.MonitorEnter(nil);
    try
        TMyGraphicItemEventService.listenerList.add(TClass(TJava.ToObject(TJava.ToObject(listener).ClassType)), TEventListener(TJava.ToObject(listener)));
    finally
    TJava.MonitorExit(nil);
    end;
end;
    

class procedure TMyGraphicItemEventService.removeListener(listener: TMyGraphicItemEventListener);
begin
    TJava.MonitorEnter(nil);
    try
        TMyGraphicItemEventService.listenerList.remove(TClass(TJava.ToObject(TJava.ToObject(listener).ClassType)), TEventListener(TJava.ToObject(listener)));
    finally
    TJava.MonitorExit(nil);
    end;
end;
    

// throws Exception
class procedure TMyGraphicItemEventService.fire(evt: TMyGraphicItemEvent);
var
  listeners: TArray<TObject>;
  i: Integer;
begin
    TJava.MonitorEnter(nil);
    try
        listeners := TMyGraphicItemEventService.listenerList.getListenerList();
        i := 0;
        while (i) < (System.Length(listeners)) do begin
            if (listeners[i]) = (TJava.ToObject(listeners[(i) + (1)]).ClassType) then begin
                if (evt.getCommand().compareTo(TMyGraphicItemEventService.SELECT)) = (0) then begin
                    (TMyGraphicItemEventListener(TJava.ToObject(listeners[(i) + (1)]))).highlight(evt);
                end else if (evt.getCommand().compareTo(TMyGraphicItemEventService.DESELECT)) = (0) then begin
                    (TMyGraphicItemEventListener(TJava.ToObject(listeners[(i) + (1)]))).deselect(evt);
                end else if (evt.getCommand().compareTo(TMyGraphicItemEventService.DELETE_)) = (0) then begin
                    (TMyGraphicItemEventListener(TJava.ToObject(listeners[(i) + (1)]))).delete_(evt);
                end else if (evt.getCommand().compareTo(TMyGraphicItemEventService.DUPLICATE)) = (0) then begin
                    (TMyGraphicItemEventListener(TJava.ToObject(listeners[(i) + (1)]))).duplicate(evt);
                end else if (evt.getCommand().compareTo(TMyGraphicItemEventService.ROTATE)) = (0) then begin
                    (TMyGraphicItemEventListener(TJava.ToObject(listeners[(i) + (1)]))).rotate(evt);
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
  TMyGraphicItemEventService.listenerList := TEventListenerList.Create();
  TMyGraphicItemEventService.DELETE_ := 'delete';
  TMyGraphicItemEventService.DESELECT := 'deselect';
  TMyGraphicItemEventService.SELECT := 'select';
  TMyGraphicItemEventService.DUPLICATE := 'duplicate';
  TMyGraphicItemEventService.ROTATE := 'rotate';
  {AB:END}

end.

