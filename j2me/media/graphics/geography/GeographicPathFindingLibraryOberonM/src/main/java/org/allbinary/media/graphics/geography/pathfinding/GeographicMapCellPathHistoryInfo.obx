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
// package org.allbinary.media.graphics.geography.pathfinding
unit GeographicMapCellPathHistoryInfo;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GeographicMapCellPosition;

type
  {AB:TYPES}
  TGeographicMapCellPathHistoryInfo = class(TObject)
  public
    previousGeographicMapCellPosition: TGeographicMapCellPosition;
    previousOnPathGeographicMapCellPosition: TGeographicMapCellPosition;
    nextUnvisitedOnPathGeographicMapCellPosition: TGeographicMapCellPosition;
    nextOnPathGeographicMapCellPosition: TGeographicMapCellPosition;
    nextChosenOnPathGeographicMapCellPosition: TGeographicMapCellPosition;
    procedure InitFields;
    constructor Create;
        function getPreviousGeographicMapCellPosition: TGeographicMapCellPosition; virtual;
        procedure setPreviousGeographicMapCellPosition(previousGeographicMapCellPosition: TGeographicMapCellPosition); virtual;
        function getPreviousOnPathGeographicMapCellPosition: TGeographicMapCellPosition; virtual;
        procedure setPreviousOnPathGeographicMapCellPosition(previousOnPathGeographicMapCellPosition: TGeographicMapCellPosition); virtual;
        function getNextUnvisitedOnPathGeographicMapCellPosition: TGeographicMapCellPosition; virtual;
        procedure setNextUnvisitedOnPathGeographicMapCellPosition(nextUnvisitedOnPathGeographicMapCellPosition: TGeographicMapCellPosition); virtual;
        function getNextOnPathGeographicMapCellPosition: TGeographicMapCellPosition; virtual;
        procedure setNextOnPathGeographicMapCellPosition(nextOnPathGeographicMapCellPosition: TGeographicMapCellPosition); virtual;
        function getNextChosenOnPathGeographicMapCellPosition: TGeographicMapCellPosition; virtual;
        procedure setNextChosenOnPathGeographicMapCellPosition(nextChosenOnPathGeographicMapCellPosition: TGeographicMapCellPosition); virtual;
  end;

implementation
uses
  SimpleGeographicMapCellPositionFactory;


{AB:CODE}

procedure TGeographicMapCellPathHistoryInfo.InitFields;
begin
  Self.previousGeographicMapCellPosition := TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
  Self.previousOnPathGeographicMapCellPosition := TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
  Self.nextUnvisitedOnPathGeographicMapCellPosition := TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
  Self.nextOnPathGeographicMapCellPosition := TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
  Self.nextChosenOnPathGeographicMapCellPosition := TSimpleGeographicMapCellPositionFactory.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
end;

constructor TGeographicMapCellPathHistoryInfo.Create;
begin
  inherited Create;
  InitFields;
end;
    

function TGeographicMapCellPathHistoryInfo.getPreviousGeographicMapCellPosition: TGeographicMapCellPosition;
begin
        Exit(Self.previousGeographicMapCellPosition);
end;
    

procedure TGeographicMapCellPathHistoryInfo.setPreviousGeographicMapCellPosition(previousGeographicMapCellPosition: TGeographicMapCellPosition);
begin
        Self.previousGeographicMapCellPosition := previousGeographicMapCellPosition;
end;
    

function TGeographicMapCellPathHistoryInfo.getPreviousOnPathGeographicMapCellPosition: TGeographicMapCellPosition;
begin
        Exit(Self.previousOnPathGeographicMapCellPosition);
end;
    

procedure TGeographicMapCellPathHistoryInfo.setPreviousOnPathGeographicMapCellPosition(previousOnPathGeographicMapCellPosition: TGeographicMapCellPosition);
begin
        Self.previousOnPathGeographicMapCellPosition := previousOnPathGeographicMapCellPosition;
end;
    

function TGeographicMapCellPathHistoryInfo.getNextUnvisitedOnPathGeographicMapCellPosition: TGeographicMapCellPosition;
begin
        Exit(Self.nextUnvisitedOnPathGeographicMapCellPosition);
end;
    

procedure TGeographicMapCellPathHistoryInfo.setNextUnvisitedOnPathGeographicMapCellPosition(nextUnvisitedOnPathGeographicMapCellPosition: TGeographicMapCellPosition);
begin
        Self.nextUnvisitedOnPathGeographicMapCellPosition := nextUnvisitedOnPathGeographicMapCellPosition;
end;
    

function TGeographicMapCellPathHistoryInfo.getNextOnPathGeographicMapCellPosition: TGeographicMapCellPosition;
begin
        Exit(Self.nextOnPathGeographicMapCellPosition);
end;
    

procedure TGeographicMapCellPathHistoryInfo.setNextOnPathGeographicMapCellPosition(nextOnPathGeographicMapCellPosition: TGeographicMapCellPosition);
begin
        Self.nextOnPathGeographicMapCellPosition := nextOnPathGeographicMapCellPosition;
end;
    

function TGeographicMapCellPathHistoryInfo.getNextChosenOnPathGeographicMapCellPosition: TGeographicMapCellPosition;
begin
        Exit(Self.nextChosenOnPathGeographicMapCellPosition);
end;
    

procedure TGeographicMapCellPathHistoryInfo.setNextChosenOnPathGeographicMapCellPosition(nextChosenOnPathGeographicMapCellPosition: TGeographicMapCellPosition);
begin
        Self.nextChosenOnPathGeographicMapCellPosition := nextChosenOnPathGeographicMapCellPosition;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

