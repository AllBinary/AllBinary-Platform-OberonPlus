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
// package org.allbinary.game.ai.path
unit BasicAIProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, AllBinaryLayerManager, AngleInfo, GeographicMapCellHistory, GeographicMapCellPosition, GeographicMapDirectionUtil, GeographicMapCellPathHistoryInfo, BasicDirectionAIHelper;

type
  {AB:TYPES}
  TBasicAIProcessor = class(TObject)
  public
    name: string;
    geographicMapCellHistory: TGeographicMapCellHistory;
    geographicMapCellPositionBasicArrayList: TBasicArrayList;
    geographicMapCellPathHistoryInfo: TGeographicMapCellPathHistoryInfo;
    basicAI: TBasicDirectionAIHelper;
    geographicMapDirectionUtil: TGeographicMapDirectionUtil;
    procedure InitFields;
        constructor Create(name: string; geographicMapCellHistory_: TGeographicMapCellHistory; geographicMapCellPathHistoryInfo_: TGeographicMapCellPathHistoryInfo; chosenPathList: TBasicArrayList; angleInfo_: TAngleInfo; seed: Integer);
        procedure setNewPath(geographicMapCellHistory_: TGeographicMapCellHistory; chosenPathList: TBasicArrayList);
        procedure init; virtual;
        function goTowardNextChosenOnPathPosition(currentGeographicMapCellPosition: TGeographicMapCellPosition): Integer;
        procedure update;
        function processAI(myManager: TAllBinaryLayerManager; currentGeographicMapCellPosition: TGeographicMapCellPosition): Integer; virtual;
        function getName: string; virtual;
        procedure setName(name: string); virtual;
        function getGeographicMapCellPathHistoryInfo: TGeographicMapCellPathHistoryInfo; virtual;
        procedure setGeographicMapCellPathHistoryInfo(geographicMapCellPathHistoryInfo_: TGeographicMapCellPathHistoryInfo); virtual;
        function getGeographicMapCellHistory: TGeographicMapCellHistory; virtual;
        procedure setGeographicMapCellHistory(geographicMapCellHistory_: TGeographicMapCellHistory); virtual;
  end;

implementation
uses
  Direction, DirectionFactory;


{AB:CODE}

procedure TBasicAIProcessor.InitFields;
begin
  
  
  
  
  
  Self.geographicMapDirectionUtil := TGeographicMapDirectionUtil.getInstance();
end;
    

constructor TBasicAIProcessor.Create(name: string; geographicMapCellHistory_: TGeographicMapCellHistory; geographicMapCellPathHistoryInfo_: TGeographicMapCellPathHistoryInfo; chosenPathList: TBasicArrayList; angleInfo_: TAngleInfo; seed: Integer);
begin
    inherited Create;
    InitFields;
        Self.name := name;
        Self.geographicMapCellHistory := geographicMapCellHistory_;
        Self.geographicMapCellPositionBasicArrayList := chosenPathList;
        Self.geographicMapCellPathHistoryInfo := geographicMapCellPathHistoryInfo_;
        Self.setName(name);
        Self.setNewPath(geographicMapCellHistory_, chosenPathList);
        Self.basicAI := TBasicDirectionAIHelper.Create(Self.getName(), angleInfo_);
end;
    

procedure TBasicAIProcessor.setNewPath(geographicMapCellHistory_: TGeographicMapCellHistory; chosenPathList: TBasicArrayList);
begin
        Self.setGeographicMapCellHistory(geographicMapCellHistory_);
        Self.geographicMapCellPositionBasicArrayList := chosenPathList;
        Self.init();
end;
    

procedure TBasicAIProcessor.init;
begin
        Self.geographicMapCellPathHistoryInfo := TGeographicMapCellPathHistoryInfo.Create();
        Self.geographicMapCellPathHistoryInfo.setPreviousOnPathGeographicMapCellPosition(TGeographicMapCellPosition(TJava.ToObject(Self.geographicMapCellPositionBasicArrayList.get((Self.geographicMapCellPositionBasicArrayList.size()) - (1)))));
        Self.geographicMapCellPathHistoryInfo.setNextOnPathGeographicMapCellPosition(TGeographicMapCellPosition(TJava.ToObject(Self.geographicMapCellPositionBasicArrayList.get((Self.geographicMapCellPositionBasicArrayList.size()) - (1)))));
        Self.update();
end;
    

// throws Exception
function TBasicAIProcessor.goTowardNextChosenOnPathPosition(currentGeographicMapCellPosition: TGeographicMapCellPosition): Integer;
var
  keyDirection: Integer;
  goToGeographicMapCellPosition: TGeographicMapCellPosition;
  geographicMapDirectionData: TDirection;
begin
        keyDirection := -1;
        goToGeographicMapCellPosition := Self.geographicMapCellPathHistoryInfo.getNextChosenOnPathGeographicMapCellPosition();
        geographicMapDirectionData := Self.geographicMapDirectionUtil.getDirectionFromCellPositionToAdjacentCellPosition(currentGeographicMapCellPosition, goToGeographicMapCellPosition);
        if (geographicMapDirectionData) = (TDirectionFactory.getInstance().NOT_BORDERED_WITH) then begin
            geographicMapDirectionData := Self.geographicMapDirectionUtil.getDirectionFromCellPositionToCellPosition(currentGeographicMapCellPosition, goToGeographicMapCellPosition);
        end;
        keyDirection := Self.basicAI.getAIKeyPressedFromDirection(geographicMapDirectionData);
        Exit(keyDirection);
end;
    

procedure TBasicAIProcessor.update;
begin
        Self.geographicMapCellPathHistoryInfo.setNextUnvisitedOnPathGeographicMapCellPosition(Self.getGeographicMapCellHistory().getFirstUnvisited());
        Self.geographicMapCellPathHistoryInfo.setNextChosenOnPathGeographicMapCellPosition(Self.geographicMapCellPathHistoryInfo.getNextUnvisitedOnPathGeographicMapCellPosition());
end;
    

// throws Exception
function TBasicAIProcessor.processAI(myManager: TAllBinaryLayerManager; currentGeographicMapCellPosition: TGeographicMapCellPosition): Integer;
var
  keyDirection: Integer;
begin
        keyDirection := -1;
        if Self.geographicMapCellPositionBasicArrayList.contains(TJava.Box(currentGeographicMapCellPosition)) then begin
            Self.update();
            keyDirection := Self.goTowardNextChosenOnPathPosition(currentGeographicMapCellPosition);
            Self.geographicMapCellPathHistoryInfo.setPreviousOnPathGeographicMapCellPosition(currentGeographicMapCellPosition);
        end else begin
            keyDirection := Self.goTowardNextChosenOnPathPosition(currentGeographicMapCellPosition);
        end;
        Exit(keyDirection);
end;
    

function TBasicAIProcessor.getName: string;
begin
        Exit(Self.name);
end;
    

procedure TBasicAIProcessor.setName(name: string);
begin
        Self.name := name;
end;
    

function TBasicAIProcessor.getGeographicMapCellPathHistoryInfo: TGeographicMapCellPathHistoryInfo;
begin
        Exit(Self.geographicMapCellPathHistoryInfo);
end;
    

procedure TBasicAIProcessor.setGeographicMapCellPathHistoryInfo(geographicMapCellPathHistoryInfo_: TGeographicMapCellPathHistoryInfo);
begin
        Self.geographicMapCellPathHistoryInfo := geographicMapCellPathHistoryInfo_;
end;
    

function TBasicAIProcessor.getGeographicMapCellHistory: TGeographicMapCellHistory;
begin
        Exit(Self.geographicMapCellHistory);
end;
    

procedure TBasicAIProcessor.setGeographicMapCellHistory(geographicMapCellHistory_: TGeographicMapCellHistory);
begin
        Self.geographicMapCellHistory := geographicMapCellHistory_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

