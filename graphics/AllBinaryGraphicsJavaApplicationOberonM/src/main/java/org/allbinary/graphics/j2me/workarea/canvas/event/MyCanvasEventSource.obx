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
unit MyCanvasEventSource;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TMyCanvasEventSource = class(TObject)
  public
    command: string;
    treeNode: TMutableTreeNode;
    angle: Double;
    procedure InitFields;
        constructor Create(command: string; treeNode: TMutableTreeNode); overload;
        constructor Create(command: string; angle: Double; treeNode: TMutableTreeNode); overload;
        function getCommand: string; virtual;
        function getTreeNode: TMutableTreeNode; virtual;
        function getAngle: Double; virtual;
        procedure setAngle(angle: Double); virtual;
  end;

implementation

{AB:CODE}

procedure TMyCanvasEventSource.InitFields;
begin
  
  
  Self.angle := 0.0;
end;
    

constructor TMyCanvasEventSource.Create(command: string; treeNode: TMutableTreeNode);
begin
    inherited Create;
    InitFields;
        Self.command := command;
        Self.treeNode := treeNode;
end;
    

constructor TMyCanvasEventSource.Create(command: string; angle: Double; treeNode: TMutableTreeNode);
begin
    inherited Create;
    InitFields;
        Self.command := command;
        Self.treeNode := treeNode;
        Self.setAngle(angle);
end;
    

function TMyCanvasEventSource.getCommand: string;
begin
        Exit(Self.command);
end;
    

function TMyCanvasEventSource.getTreeNode: TMutableTreeNode;
begin
        Exit(Self.treeNode);
end;
    

function TMyCanvasEventSource.getAngle: Double;
begin
        Exit(Self.angle);
end;
    

procedure TMyCanvasEventSource.setAngle(angle: Double);
begin
        Self.angle := angle;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

