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
// package org.allbinary.game.media.graphics.geography.map.racetrack
unit PathFindingInfoFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicGeographicMap, BasePathFindingInfoFactory, PathFindingInfo;

type
  {AB:TYPES}
  TPathFindingInfoFactory = class(TBasePathFindingInfoFactory)
  public
    class var instance: TPathFindingInfoFactory;
        class function getInstance: TPathFindingInfoFactory; static;
        constructor Create;
        function getInstancePathFindingInfo(geographicMapInterface: TBasicGeographicMap; graphArray: TArray<TArray<Integer>>): TPathFindingInfo; override;
  end;

implementation
uses
  CommonStrings, PreLogUtil, RaceTrackRoadsGeographicMapCellHistoryFactory, PathFindingNodeCostInfoFactoryBase, BasicArrayListS;


{AB:CODE}
    

class function TPathFindingInfoFactory.getInstance: TPathFindingInfoFactory;
begin
        Exit(TPathFindingInfoFactory.instance);
end;
    

constructor TPathFindingInfoFactory.Create;
begin
    inherited Create;
end;
    

// throws Exception
function TPathFindingInfoFactory.getInstancePathFindingInfo(geographicMapInterface: TBasicGeographicMap; graphArray: TArray<TArray<Integer>>): TPathFindingInfo;
var
  commonStrings_: TCommonStrings;
  pathFindingInfo_: TPathFindingInfo;
begin
        commonStrings_ := TCommonStrings.getInstance();
        TPreLogUtil.put(commonStrings_.START, TJava.Box(Self), commonStrings_.GET_INSTANCE);
        pathFindingInfo_ := TPathFindingInfo.Create(TPathFindingNodeCostInfoFactoryBase.Create(), TBasicArrayListS.Create(1), TBasicArrayListS.Create(1));
        TRaceTrackRoadsGeographicMapCellHistoryFactory.getInstance().init();
        Self.init(geographicMapInterface, pathFindingInfo_, graphArray);
        Exit(pathFindingInfo_);
end;

initialization
  {AB:INITIALIZATION}
  TPathFindingInfoFactory.instance := TPathFindingInfoFactory.Create();
  {AB:END}

end.

