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
unit MyGraphicItemEvent;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, EventObject;

type
  {AB:TYPES}
  TMyGraphicItemEvent = class(TEventObject)
  public
        constructor Create(source: TObject);
        function getSource: TObject; virtual;
        function toString: string; override;
        function getCommand: string; virtual;
        function getTreeNode: TMutableTreeNode; virtual;
        function getAngle: Double; virtual;
  end;

implementation
uses
  MyGraphicItemEventSource;


{AB:CODE}
    

constructor TMyGraphicItemEvent.Create(source: TObject);
begin
        inherited Create(source);
end;
    

function TMyGraphicItemEvent.getSource: TObject;
begin
        Exit(TJava.Box(inherited getSource()));
end;
    

function TMyGraphicItemEvent.toString: string;
begin
        Exit(inherited toString());
end;
    

function TMyGraphicItemEvent.getCommand: string;
var
  myEventSource: TMyGraphicItemEventSource;
begin
        myEventSource := TMyGraphicItemEventSource(TJava.ToObject(Self.getSource()));
        Exit(myEventSource.getCommand());
end;
    

function TMyGraphicItemEvent.getTreeNode: TMutableTreeNode;
var
  myEventSource: TMyGraphicItemEventSource;
begin
        myEventSource := TMyGraphicItemEventSource(TJava.ToObject(Self.getSource()));
        Exit(myEventSource.getTreeNode());
end;
    

function TMyGraphicItemEvent.getAngle: Double;
var
  myEventSource: TMyGraphicItemEventSource;
begin
        myEventSource := TMyGraphicItemEventSource(TJava.ToObject(Self.getSource()));
        Exit(myEventSource.getAngle());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

