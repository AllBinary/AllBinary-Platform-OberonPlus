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
// package org.allbinary.game.layer.waypoint
unit WaypointSelectedLogHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PathFindingLayerInterface, WaypointBehaviorBase, CollidableDestroyableDamageableLayer, LogUtil, CommonSeps, StringUtil, GeographicMapCellPosition, BasicArrayList, WaypointLogHelper;

type
  {AB:TYPES}
  TWaypointSelectedLogHelper = class(TWaypointLogHelper)
  public
    logUtil: TLogUtil;
    commonSeps: TCommonSeps;
    stringUtil: TStringUtil;
    class var instanceC: TWaypointSelectedLogHelper;
    procedure InitFields;
    constructor Create;
        class function getInstance: TWaypointSelectedLogHelper; static;
        procedure onWaypointEvent(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; advancedRTSGameLayer: IPathFindingLayerInterface); override;
        procedure addWaypointFromBuilding(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; advancedRTSGameLayer: IPathFindingLayerInterface); override;
        procedure addWaypointFromBuildingList(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; advancedRTSGameLayer: IPathFindingLayerInterface; list: TBasicArrayList); override;
        procedure insertWaypoint(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; index: Integer; rtsLayer: TCollidableDestroyableDamageableLayer; waypointName: string); override;
        procedure insertWaypointList(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; index: Integer; rtsLayer: TCollidableDestroyableDamageableLayer; waypointName: string; list: TBasicArrayList); override;
        procedure setRandomGeographicMapCellHistoryList(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; pathsList: TBasicArrayList); override;
        procedure moveAwayFromBuilding(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface); override;
        procedure needToMove(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; unitWaypointBehavior: TWaypointBehaviorBase); override;
        procedure setRandomGeographicMapCellHistory(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface); override;
        procedure setCurrentPathGeographicMapCellPosition(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; existingCurrentPathGeographicMapCellPosition: TGeographicMapCellPosition; currentPathGeographicMapCellPosition: TGeographicMapCellPosition); override;
        procedure setNextUnvisitedPathGeographicMapCellPosition(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; existingNextUnvisitedPathGeographicMapCellPosition: TGeographicMapCellPosition; nextUnvisitedPathGeographicMapCellPosition: TGeographicMapCellPosition); override;
  end;

implementation
uses
  CommonLabels, StringMaker;


{AB:CODE}

procedure TWaypointSelectedLogHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonSeps := TCommonSeps.getInstance();
  Self.stringUtil := TStringUtil.getInstance();
end;

constructor TWaypointSelectedLogHelper.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TWaypointSelectedLogHelper.getInstance: TWaypointSelectedLogHelper;
begin
        Exit(TWaypointSelectedLogHelper.instanceC);
end;
    

procedure TWaypointSelectedLogHelper.onWaypointEvent(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; advancedRTSGameLayer: IPathFindingLayerInterface);
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName());
        stringBuffer.append(' onWaypointEvent: ');
        stringBuffer.append(advancedRTSGameLayer.getName());
        if not TJava.IsNull(advancedRTSGameLayer.getParentLayer()) then begin
            stringBuffer.append(' With Parent: ');
            stringBuffer.append(advancedRTSGameLayer.getParentLayer().getName());
        end;
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'onWaypointEvent');
end;
    

procedure TWaypointSelectedLogHelper.addWaypointFromBuilding(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; advancedRTSGameLayer: IPathFindingLayerInterface);
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName());
        stringBuffer.append(' Adding Waypoint: ');
        stringBuffer.append(advancedRTSGameLayer.getName());
        if not TJava.IsNull(advancedRTSGameLayer.getParentLayer()) then begin
            stringBuffer.append(' With Parent: ');
            stringBuffer.append(advancedRTSGameLayer.getParentLayer().getName());
        end;
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'selected: onWaypointEvent');
end;
    

procedure TWaypointSelectedLogHelper.addWaypointFromBuildingList(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; advancedRTSGameLayer: IPathFindingLayerInterface; list: TBasicArrayList);
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName());
        stringBuffer.append(' Waypoints: ');
        stringBuffer.append(Self.stringUtil.toString(list));
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'selected: onWaypointEvent');
end;
    

procedure TWaypointSelectedLogHelper.insertWaypoint(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; index: Integer; rtsLayer: TCollidableDestroyableDamageableLayer; waypointName: string);
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName());
        stringBuffer.append(Self.commonSeps.SPACE);
        stringBuffer.append(waypointName);
        stringBuffer.append(' Insert: ');
        stringBuffer.append(rtsLayer.getName());
        stringBuffer.append(' for Waypoint: ');
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'selected: insertWaypoint');
end;
    

procedure TWaypointSelectedLogHelper.insertWaypointList(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; index: Integer; rtsLayer: TCollidableDestroyableDamageableLayer; waypointName: string; list: TBasicArrayList);
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName());
        stringBuffer.append(Self.commonSeps.SPACE);
        stringBuffer.append(waypointName);
        stringBuffer.append(' Insert: ');
        stringBuffer.append(rtsLayer.getName());
        stringBuffer.append(' Waypoints: ');
        stringBuffer.append(Self.stringUtil.toString(list));
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'selected: insertWaypoint');
end;
    

procedure TWaypointSelectedLogHelper.setRandomGeographicMapCellHistoryList(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; pathsList: TBasicArrayList);
var
  size: Integer;
  stringBuffer: TStringMaker;
begin
        size := pathsList.size();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName());
        stringBuffer.append(Self.commonSeps.SPACE);
        stringBuffer.append(TCommonLabels.getInstance().START);
        stringBuffer.appendint(size);
        stringBuffer.append(' -> ');
        stringBuffer.append(Self.stringUtil.toString(pathsList));
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'selected: setRandomGeographicMapCellHistory');
end;
    

procedure TWaypointSelectedLogHelper.moveAwayFromBuilding(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface);
begin
        Self.logUtil.putF(TStringMaker.Create().append(associatedAdvancedRTSGameLayer.getName()).append(' Trying to move away from building').toString(), TJava.Box(Self), 'selected: moveAwayFromBuilding');
end;
    

procedure TWaypointSelectedLogHelper.needToMove(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; unitWaypointBehavior: TWaypointBehaviorBase);
begin
        Self.logUtil.putF(TStringMaker.Create().append(associatedAdvancedRTSGameLayer.getName()).append(unitWaypointBehavior.getMovementLogicAsString()).toString(), TJava.Box(Self), 'needToMove');
end;
    

procedure TWaypointSelectedLogHelper.setRandomGeographicMapCellHistory(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface);
begin
        Self.logUtil.putF(TStringMaker.Create().append(associatedAdvancedRTSGameLayer.getName()).append(' pathsList is null').toString(), TJava.Box(Self), 'setRandomGeographicMapCellHistory');
end;
    

procedure TWaypointSelectedLogHelper.setCurrentPathGeographicMapCellPosition(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; existingCurrentPathGeographicMapCellPosition: TGeographicMapCellPosition; currentPathGeographicMapCellPosition: TGeographicMapCellPosition);
begin
        if (existingCurrentPathGeographicMapCellPosition) = (nil) then begin
            Self.logUtil.putF(TStringMaker.Create().append(associatedAdvancedRTSGameLayer.getName()).append(' currentPathGeographicMapCellPosition: ').append(Self.stringUtil.toString(currentPathGeographicMapCellPosition)).toString(), TJava.Box(Self), 'setCurrentPathGeographicMapCellPosition');
        end;
end;
    

procedure TWaypointSelectedLogHelper.setNextUnvisitedPathGeographicMapCellPosition(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; existingNextUnvisitedPathGeographicMapCellPosition: TGeographicMapCellPosition; nextUnvisitedPathGeographicMapCellPosition: TGeographicMapCellPosition);
begin
        if (existingNextUnvisitedPathGeographicMapCellPosition) <> (nextUnvisitedPathGeographicMapCellPosition) then begin
            Self.logUtil.putF(TStringMaker.Create().append(associatedAdvancedRTSGameLayer.getName()).append(' nextUnvisitedPathGeographicMapCellPosition: ').append(Self.stringUtil.toString(nextUnvisitedPathGeographicMapCellPosition)).toString(), TJava.Box(Self), 'setNextUnvisitedPathGeographicMapCellPosition');
        end;
end;

initialization
  {AB:INITIALIZATION}
  TWaypointSelectedLogHelper.instanceC := TWaypointSelectedLogHelper.Create();
  {AB:END}

end.

