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
// package org.allbinary.game.layer
unit WaypointPathRunnableBase;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LayerDistanceUtil, PriorityRunnable, RunnableInterface, PathFindingLayerInterface;

type
  {AB:TYPES}
  TWaypointPathRunnableBase = class(TInterfacedObject, IRunnableInterface, IPriorityRunnable, IRunnable)
  public
    layerDistanceUtil: TLayerDistanceUtil;
    pathFindingLayer: IPathFindingLayerInterface;
    targetPathFindingLayer: IPathFindingLayerInterface;
    priorityP: Integer;
    runningP: Boolean;
    procedure InitFields;
    function JavaObject: TObject;
    constructor Create;
        function isRunning: Boolean; virtual;
        procedure setRunning(isRunning: Boolean); virtual;
        procedure setThread(thread: TThread); virtual;
        procedure setTargetLayer(waypointLayer: IPathFindingLayerInterface); virtual;
        procedure setPriority; virtual;
        function getTargetLayer: IPathFindingLayerInterface; virtual;
        procedure setUnitLayer(unitLayer: IPathFindingLayerInterface); virtual;
        function getPriority: Integer; virtual;
        function isDone: Boolean; virtual;
        procedure run; virtual;
        procedure reset; virtual;
  end;

implementation
uses
  NullPathFindingLayer, AllBinaryLayer;


{AB:CODE}

procedure TWaypointPathRunnableBase.InitFields;
begin
  Self.layerDistanceUtil := TLayerDistanceUtil.getInstance();
  Self.pathFindingLayer := TNullPathFindingLayer.NULL_PATH_FINDING_LAYER;
  Self.targetPathFindingLayer := TNullPathFindingLayer.NULL_PATH_FINDING_LAYER;
  Self.priorityP := High(Integer);
  
end;

function TWaypointPathRunnableBase.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TWaypointPathRunnableBase.Create;
begin
  inherited Create;
  InitFields;
end;
    

function TWaypointPathRunnableBase.isRunning: Boolean;
begin
        Exit(Self.runningP);
end;
    

procedure TWaypointPathRunnableBase.setRunning(isRunning: Boolean);
begin
        Self.runningP := isRunning;
end;
    

// throws Exception
procedure TWaypointPathRunnableBase.setThread(thread: TThread);
begin
end;
    

procedure TWaypointPathRunnableBase.setTargetLayer(waypointLayer: IPathFindingLayerInterface);
begin
        Self.targetPathFindingLayer := waypointLayer;
        Self.setPriority();
end;
    

procedure TWaypointPathRunnableBase.setPriority;
var
  pathFindingLayer: TAllBinaryLayer;
  targetLayer: TAllBinaryLayer;
  distance: Integer;
  distanceCategory: Integer;
begin
        pathFindingLayer := TAllBinaryLayer(TJava.ToObject(Self.pathFindingLayer));
        targetLayer := TAllBinaryLayer(TJava.ToObject(Self.targetPathFindingLayer));
        if (targetLayer) <> (nil) then begin
            distance := Self.layerDistanceUtil.getDistance(targetLayer, pathFindingLayer);
            distanceCategory := (distance) div (70);
            Self.priorityP := distanceCategory;
        end;
end;
    

function TWaypointPathRunnableBase.getTargetLayer: IPathFindingLayerInterface;
begin
        Exit(Self.targetPathFindingLayer);
end;
    

procedure TWaypointPathRunnableBase.setUnitLayer(unitLayer: IPathFindingLayerInterface);
begin
        Self.pathFindingLayer := unitLayer;
end;
    

function TWaypointPathRunnableBase.getPriority: Integer;
begin
        Exit(Self.priorityP);
end;
    

function TWaypointPathRunnableBase.isDone: Boolean;
begin
        Exit(True);
end;
    

procedure TWaypointPathRunnableBase.run;
begin
end;
    

procedure TWaypointPathRunnableBase.reset;
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

