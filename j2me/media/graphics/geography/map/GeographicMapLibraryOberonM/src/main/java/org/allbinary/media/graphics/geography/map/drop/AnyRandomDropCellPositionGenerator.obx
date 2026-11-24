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
// package org.allbinary.media.graphics.geography.map.drop
unit AnyRandomDropCellPositionGenerator;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, AllBinaryGameLayerManager, AllBinaryLayerManager, BasicGeographicMap, BaseDropCellPositionGenerator;

type
  {AB:TYPES}
  TAnyRandomDropCellPositionGenerator = class(TBaseDropCellPositionGenerator)
  public
    list: TBasicArrayList;
    geographicMapInterface: TObject;
    procedure InitFields;
    constructor Create;
        procedure update(allBinaryGameLayerManager_: TAllBinaryGameLayerManager; geographicMapInterface: TBasicGeographicMap); override;
        procedure processTick(allBinaryLayerManager_: TAllBinaryLayerManager); override;
  end;

implementation
uses
  BasicArrayListD, AllBinaryTiledLayer, MyRandomFactory, NullUtil, BasicGeographicMapCellPositionFactory, GeographicMapCellPosition;


{AB:CODE}

procedure TAnyRandomDropCellPositionGenerator.InitFields;
begin
  Self.list := TBasicArrayListD.Create();
  Self.geographicMapInterface := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
end;

constructor TAnyRandomDropCellPositionGenerator.Create;
begin
  inherited Create;
  InitFields;
end;
    

// throws Exception
procedure TAnyRandomDropCellPositionGenerator.update(allBinaryGameLayerManager_: TAllBinaryGameLayerManager; geographicMapInterface: TBasicGeographicMap);
var
  basicGeographicMapCellPositionFactory_: TBasicGeographicMapCellPositionFactory;
  randomFactory: TMyRandomFactory;
  tiledLayer: TAllBinaryTiledLayer;
  total: Integer;
  randomColumn: Integer;
  randomRow: Integer;
  geographicMapCellPosition_: TGeographicMapCellPosition;
  index: Integer;
begin
        Self.geographicMapInterface := TJava.Box(geographicMapInterface);
        basicGeographicMapCellPositionFactory_ := geographicMapInterface.getGeographicMapCellPositionFactory();
        randomFactory := TMyRandomFactory.getInstance();
        tiledLayer := geographicMapInterface.getAllBinaryTiledLayer();
        total := (tiledLayer.getColumns()) * (tiledLayer.getRows());
        
        
        
        index := total;
        while (TJava.PreDec(index)) >= (0) do begin
            randomColumn := randomFactory.getAbsoluteNextInt(tiledLayer.getColumns());
            randomRow := randomFactory.getAbsoluteNextInt(tiledLayer.getRows());
            geographicMapCellPosition_ := basicGeographicMapCellPositionFactory_.getAt(randomColumn, randomRow);
            if Self.isDropAllowedAt(geographicMapCellPosition_) then begin
                Self.list.add(TJava.Box(geographicMapCellPosition_));
            end;
        end;
end;
    

// throws Exception
procedure TAnyRandomDropCellPositionGenerator.processTick(allBinaryLayerManager_: TAllBinaryLayerManager);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

