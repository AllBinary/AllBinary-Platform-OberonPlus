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
// package org.allbinary.media.graphics.geography.map.racetrack
unit BasePathFindingInfoFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, BasicGeographicMap, GeographicMapCellPosition, PathFindingInfo;

type
  {AB:TYPES}
  TBasePathFindingInfoFactory = class(TObject)
  public
    logUtil: TLogUtil;
    procedure InitFields;
    constructor Create;
        procedure init(geographicMapInterface: TBasicGeographicMap; pathFindingInfo_: TPathFindingInfo; mapArray: TArray<TArray<Integer>>); virtual;
        procedure addStartPathFindingNode(pathFindingInfo_: TPathFindingInfo; startGeographicMapCellPosition: TGeographicMapCellPosition);
        procedure addEndPathFindingNode(pathFindingInfo_: TPathFindingInfo; endGeographicMapCellPosition: TGeographicMapCellPosition);
        function getInstancePathFindingInfo(geographicMapInterface: TBasicGeographicMap; graphArray: TArray<TArray<Integer>>): TPathFindingInfo; virtual;
  end;

implementation
uses
  RaceTrackRoadsGeographicMapCellHistoryFactory, AllBinaryTiledLayer, NullUtil, StringMaker, GeographicMapCellTypeFactory, PathFindingNode, GeographicMapCellPositionFactoryInitVisitorInterface, CommonSeps;


{AB:CODE}

procedure TBasePathFindingInfoFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

constructor TBasePathFindingInfoFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

// throws Exception
procedure TBasePathFindingInfoFactory.init(geographicMapInterface: TBasicGeographicMap; pathFindingInfo_: TPathFindingInfo; mapArray: TArray<TArray<Integer>>);
begin
        { Java local class RaceTrackGeographicMapCellPositionFactoryInitVisitor: move it to the unit }
        geographicMapInterface.getGeographicMapCellPositionFactory().visit(TRaceTrackGeographicMapCellPositionFactoryInitVisitor.Create(Self));
end;
    

// throws Exception
procedure TBasePathFindingInfoFactory.addStartPathFindingNode(pathFindingInfo_: TPathFindingInfo; startGeographicMapCellPosition: TGeographicMapCellPosition);
begin
        pathFindingInfo_.addStartPathFindingNode(TPathFindingNode.Create(TNullUtil.getInstance().NULL_OBJECT, startGeographicMapCellPosition));
end;
    

// throws Exception
procedure TBasePathFindingInfoFactory.addEndPathFindingNode(pathFindingInfo_: TPathFindingInfo; endGeographicMapCellPosition: TGeographicMapCellPosition);
begin
        pathFindingInfo_.addEndPathFindingNode(TPathFindingNode.Create(TNullUtil.getInstance().NULL_OBJECT, endGeographicMapCellPosition));
end;
    

// throws Exception
function TBasePathFindingInfoFactory.getInstancePathFindingInfo(geographicMapInterface: TBasicGeographicMap; graphArray: TArray<TArray<Integer>>): TPathFindingInfo;
begin
        raise SysUtils.Exception.Create('');
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

