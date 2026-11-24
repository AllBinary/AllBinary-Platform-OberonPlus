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
unit RTSLayerSelectedLogHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonSeps, AngleInfo, NamedAngle, PositionStrings, GeographicMapCellHistory, GeographicMapCellPosition, BasicArrayList, PathFindingLayerInterface, RTSLayerLogHelper;

type
  {AB:TYPES}
  TRTSLayerSelectedLogHelper = class(TRTSLayerLogHelper)
  public
    logUtil: TLogUtil;
    commonSeps: TCommonSeps;
    positionStrings: TPositionStrings;
    TRACKTO_TURNTO: string;
    class var instanceC: TRTSLayerSelectedLogHelper;
    procedure InitFields;
    constructor Create;
        class function getInstance: TRTSLayerSelectedLogHelper; static;
        procedure setClosestGeographicMapCellHistory(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; pathsList: TBasicArrayList); override;
        procedure trackTo(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; nextUnvisitedPathGeographicMapCellPosition: TGeographicMapCellPosition; dx: Integer; dy: Integer; reason: string); override;
        procedure turnTo(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; dx: Integer; dy: Integer; angleInfo_: TAngleInfo; angle: Integer; movementAngle: TNamedAngle; evading: Boolean; targetAngle: Integer); override;
        procedure doneMoving(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface); override;
        procedure closeEnough(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface); override;
        procedure movingLeft(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface); override;
        procedure movingRight(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface); override;
        procedure movingUp(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface); override;
        procedure movingDown(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface); override;
        procedure currentMoveEnded(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface); override;
        procedure evade(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface); override;
        procedure rotateLeft(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface); override;
        procedure rotateRight(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface); override;
        procedure handle(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; movementAngle: TNamedAngle); override;
        procedure noRotation(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface); override;
        procedure notOnPath(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; geographicMapCellHistory_: TGeographicMapCellHistory; currentGeographicMapCellPosition: TGeographicMapCellPosition; pathList: TBasicArrayList); override;
  end;

implementation
uses
  CommonLabels, StringMaker, StringUtil;


{AB:CODE}

procedure TRTSLayerSelectedLogHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonSeps := TCommonSeps.getInstance();
  Self.positionStrings := TPositionStrings.getInstance();
  Self.TRACKTO_TURNTO := 'trackTo:turnTo';
end;

constructor TRTSLayerSelectedLogHelper.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TRTSLayerSelectedLogHelper.getInstance: TRTSLayerSelectedLogHelper;
begin
        Exit(TRTSLayerSelectedLogHelper.instanceC);
end;
    

procedure TRTSLayerSelectedLogHelper.setClosestGeographicMapCellHistory(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; pathsList: TBasicArrayList);
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName());
        stringBuffer.append(Self.commonSeps.SPACE);
        stringBuffer.append(TCommonLabels.getInstance().START);
        stringBuffer.appendint(pathsList.size());
        stringBuffer.append(' -> ');
        stringBuffer.append(TStringUtil.getInstance().toString(pathsList));
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'selected: setClosestGeographicMapCellHistory');
end;
    

procedure TRTSLayerSelectedLogHelper.trackTo(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; nextUnvisitedPathGeographicMapCellPosition: TGeographicMapCellPosition; dx: Integer; dy: Integer; reason: string);
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName());
        stringBuffer.append(Self.commonSeps.SPACE);
        stringBuffer.append(TStringUtil.getInstance().toString(nextUnvisitedPathGeographicMapCellPosition));
        stringBuffer.append(Self.positionStrings.DX_LABEL);
        stringBuffer.appendint(dx);
        stringBuffer.append(Self.commonSeps.SPACE);
        stringBuffer.append(Self.positionStrings.DY_LABEL);
        stringBuffer.appendint(dy);
        stringBuffer.append(Self.commonSeps.SPACE);
        stringBuffer.append(reason);
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), 'selected: trackTo');
end;
    

procedure TRTSLayerSelectedLogHelper.turnTo(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; dx: Integer; dy: Integer; angleInfo_: TAngleInfo; angle: Integer; movementAngle: TNamedAngle; evading: Boolean; targetAngle: Integer);
var
  stringBuffer: TStringMaker;
  angleIncrement: SmallInt;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(associatedAdvancedRTSGameLayer.getName());
        stringBuffer.append(' steering - ');
        stringBuffer.append(Self.positionStrings.DX_LABEL);
        stringBuffer.appendint(dx);
        stringBuffer.append(Self.commonSeps.SPACE);
        stringBuffer.append(Self.positionStrings.DY_LABEL);
        stringBuffer.appendint(dy);
        stringBuffer.append(' angle: ');
        stringBuffer.appendint(angle);
        stringBuffer.append(' movementAngle: ');
        stringBuffer.append(movementAngle.name);
        stringBuffer.append(Self.commonSeps.FORWARD_SLASH);
        stringBuffer.appendshort(SmallInt(Trunc(movementAngle.getValue())));
        if (angleInfo_) <> (nil) then begin
            angleIncrement := angleInfo_.getAngleIncrementInfo().getAngleIncrement();
            stringBuffer.append(' angleIncrement: ');
            stringBuffer.appendshort(angleIncrement);
        end;
        stringBuffer.append(' Evading: ');
        stringBuffer.appendboolean(evading);
        Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.TRACKTO_TURNTO);
end;
    

procedure TRTSLayerSelectedLogHelper.doneMoving(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface);
begin
        Self.logUtil.putF(TStringMaker.Create().append(associatedAdvancedRTSGameLayer.getName()).append(' steering - done moving 0,0').toString(), TJava.Box(Self), Self.TRACKTO_TURNTO);
end;
    

procedure TRTSLayerSelectedLogHelper.closeEnough(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface);
begin
        Self.logUtil.putF(TStringMaker.Create().append(associatedAdvancedRTSGameLayer.getName()).append(' steering - close enough').toString(), TJava.Box(Self), Self.TRACKTO_TURNTO);
end;
    

procedure TRTSLayerSelectedLogHelper.movingLeft(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface);
begin
        Self.logUtil.putF(TStringMaker.Create().append(associatedAdvancedRTSGameLayer.getName()).append(' steering - allow movingLeft').toString(), TJava.Box(Self), Self.TRACKTO_TURNTO);
end;
    

procedure TRTSLayerSelectedLogHelper.movingRight(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface);
begin
        Self.logUtil.putF(TStringMaker.Create().append(associatedAdvancedRTSGameLayer.getName()).append(' steering - allow movingRight').toString(), TJava.Box(Self), Self.TRACKTO_TURNTO);
end;
    

procedure TRTSLayerSelectedLogHelper.movingUp(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface);
begin
        Self.logUtil.putF(TStringMaker.Create().append(associatedAdvancedRTSGameLayer.getName()).append(' steering - allow movingUp').toString(), TJava.Box(Self), Self.TRACKTO_TURNTO);
end;
    

procedure TRTSLayerSelectedLogHelper.movingDown(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface);
begin
        Self.logUtil.putF(TStringMaker.Create().append(associatedAdvancedRTSGameLayer.getName()).append(' steering - allow movingDown').toString(), TJava.Box(Self), Self.TRACKTO_TURNTO);
end;
    

procedure TRTSLayerSelectedLogHelper.currentMoveEnded(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface);
begin
        Self.logUtil.putF(TStringMaker.Create().append(associatedAdvancedRTSGameLayer.getName()).append(' steering - correct angle, but movement not needed for current deltas so reseting movement angle').toString(), TJava.Box(Self), Self.TRACKTO_TURNTO);
end;
    

procedure TRTSLayerSelectedLogHelper.evade(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface);
begin
        Self.logUtil.putF(TStringMaker.Create().append(associatedAdvancedRTSGameLayer.getName()).append(' steering - evade').toString(), TJava.Box(Self), Self.TRACKTO_TURNTO);
end;
    

procedure TRTSLayerSelectedLogHelper.rotateLeft(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface);
begin
        Self.logUtil.putF(TStringMaker.Create().append(associatedAdvancedRTSGameLayer.getName()).append(' steering - rotating left').toString(), TJava.Box(Self), Self.TRACKTO_TURNTO);
end;
    

procedure TRTSLayerSelectedLogHelper.rotateRight(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface);
begin
        Self.logUtil.putF(TStringMaker.Create().append(associatedAdvancedRTSGameLayer.getName()).append(' steering - rotating right').toString(), TJava.Box(Self), Self.TRACKTO_TURNTO);
end;
    

procedure TRTSLayerSelectedLogHelper.handle(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; movementAngle: TNamedAngle);
begin
        Self.logUtil.putF(TStringMaker.Create().append(associatedAdvancedRTSGameLayer.getName()).append(' steering - movementAngle: ').append(movementAngle.name).append(Self.commonSeps.FORWARD_SLASH).appendshort(SmallInt(Trunc(movementAngle.getValue()))).toString(), TJava.Box(Self), Self.TRACKTO_TURNTO);
end;
    

procedure TRTSLayerSelectedLogHelper.noRotation(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface);
begin
        Self.logUtil.putF(TStringMaker.Create().append(associatedAdvancedRTSGameLayer.getName()).append(' steering - Do not rotate').toString(), TJava.Box(Self), Self.TRACKTO_TURNTO);
end;
    

procedure TRTSLayerSelectedLogHelper.notOnPath(associatedAdvancedRTSGameLayer: IPathFindingLayerInterface; geographicMapCellHistory_: TGeographicMapCellHistory; currentGeographicMapCellPosition: TGeographicMapCellPosition; pathList: TBasicArrayList);
var
  stringUtil_: TStringUtil;
begin
        stringUtil_ := TStringUtil.getInstance();
        Self.logUtil.putF(TStringMaker.Create().append(associatedAdvancedRTSGameLayer.getName()).append(TCommonSeps.getInstance().SPACE).appendint(Integer(Trunc(geographicMapCellHistory_.getTotalVisited()))).append(TCommonSeps.getInstance().SPACE).append(stringUtil_.toString(currentGeographicMapCellPosition)).append(' - trying to move but not on path: ').append(stringUtil_.toString(pathList)).toString(), TJava.Box(Self), 'turnTo');
end;

initialization
  {AB:INITIALIZATION}
  TRTSLayerSelectedLogHelper.instanceC := TRTSLayerSelectedLogHelper.Create();
  {AB:END}

end.

