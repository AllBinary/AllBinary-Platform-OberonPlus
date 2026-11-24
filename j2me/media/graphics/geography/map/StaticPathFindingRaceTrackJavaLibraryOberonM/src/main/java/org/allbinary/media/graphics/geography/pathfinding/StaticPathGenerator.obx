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
unit StaticPathGenerator;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, LogUtil, BasicGeographicMap, BasicGeographicMapCellPositionFactory, GeographicMapCellHistory, BasicArrayListUtil, PathFindingInfo, PathGeneratorInterface;

type
  {AB:TYPES}
  TStaticPathGenerator = class(TInterfacedObject, IPathGeneratorInterface)
  public
    logUtil: TLogUtil;
    basicArrayListUtil: TBasicArrayListUtil;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        procedure init(geographicMapInterface: TObject; totalPaths: Integer); virtual;
        function getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList(geographicMapCellPositionFactory: TBasicGeographicMapCellPositionFactory; pathList: TBasicArrayList): TBasicArrayList;
        function createList(geographicMapInterface: TBasicGeographicMap; geographicMapCellHistory_: TGeographicMapCellHistory; pathFindingInfo_: TPathFindingInfo; totalPaths: Integer): TBasicArrayList; virtual;
  end;

implementation
uses
  PathCacheFactory, BasicArrayListD, CommonStrings, PreLogUtil, CellPosition, StringMaker, SmallIntegerSingletonFactory, StringUtil, GeographicMapCellPosition, PathData;


{AB:CODE}

procedure TStaticPathGenerator.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.basicArrayListUtil := TBasicArrayListUtil.getInstance();
end;

function TStaticPathGenerator.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TStaticPathGenerator.Create;
begin
    inherited Create;
    InitFields;
        TPreLogUtil.put('Using Static Path Finding', TJava.Box(Self), TCommonStrings.getInstance().CONSTRUCTOR_);
end;
    

// throws Exception
procedure TStaticPathGenerator.init(geographicMapInterface: TObject; totalPaths: Integer);
begin
end;
    

// throws Exception
function TStaticPathGenerator.getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList(geographicMapCellPositionFactory: TBasicGeographicMapCellPositionFactory; pathList: TBasicArrayList): TBasicArrayList;
var
  list: TBasicArrayList;
  size: Integer;
  basicGeographicMapCellPosition: TCellPosition;
  geographicMapCellPosition_: TGeographicMapCellPosition;
  index: Integer;
begin
        list := TBasicArrayListD.Create();
        size := pathList.size();
        
        
        for index := 0 to size - 1 do begin
            basicGeographicMapCellPosition := TCellPosition(TJava.ToObject(pathList.get(index)));
            geographicMapCellPosition_ := geographicMapCellPositionFactory.getAt(basicGeographicMapCellPosition.getColumn(), basicGeographicMapCellPosition.getRow());
            list.add(TJava.Box(geographicMapCellPosition_));
        end;
        Exit(list);
end;
    

// throws Exception
function TStaticPathGenerator.createList(geographicMapInterface: TBasicGeographicMap; geographicMapCellHistory_: TGeographicMapCellHistory; pathFindingInfo_: TPathFindingInfo; totalPaths: Integer): TBasicArrayList;
var
  commonStrings_: TCommonStrings;
  pathCacheFactory_: TPathCacheFactory;
  mapIdInteger: Integer;
  list: TBasicArrayList;
  smallIntegerSingletonFactory_: TSmallIntegerSingletonFactory;
  geographicMapCellPositionFactory: TBasicGeographicMapCellPositionFactory;
  id: Integer;
  basicList: TBasicArrayList;
  size: Integer;
  pathList: TBasicArrayList;
  index: Integer;
begin
        commonStrings_ := TCommonStrings.getInstance();
        try
            pathCacheFactory_ := TPathCacheFactory.getInstance();
            mapIdInteger := geographicMapInterface.getAllBinaryTiledLayer().getDataId();
            list := pathCacheFactory_.getOrCreate(mapIdInteger);
            if (list) = (Self.basicArrayListUtil.getImmutableInstance()) then begin
                list := TBasicArrayListD.Create();
                smallIntegerSingletonFactory_ := TSmallIntegerSingletonFactory.getInstance();
                geographicMapCellPositionFactory := geographicMapInterface.getGeographicMapCellPositionFactory();
                id := (TPathData.getInstance().OFFSET) + ((mapIdInteger));
                basicList := pathCacheFactory_.getOrCreate(smallIntegerSingletonFactory_.getAt(id));
                size := basicList.size();
                
                for index := 0 to size - 1 do begin
                    pathList := Self.getGeographicMapCellPositionListFromBasicGeographicMapCellPositionList(geographicMapCellPositionFactory, TBasicArrayList(TJava.ToObject(basicList.get(index))));
                    list.add(TJava.Box(pathList));
                end;
                pathCacheFactory_.add(mapIdInteger, list);
                pathCacheFactory_.remove(smallIntegerSingletonFactory_.getAt(id));
            end;
            Self.logUtil.putF(TStringMaker.Create().append('Using Cached Path(s): ').append(TStringUtil.getInstance().toString(list)).toString(), TJava.Box(Self), commonStrings_.GET_INSTANCE);
            Exit(list);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.GET_INSTANCE, TJava.Box(e));
            Exit(TBasicArrayListD.Create());
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

