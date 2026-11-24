{
 
  AllBinary Open License Version 1 
  Copyright (c) 2002 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot  
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer
unit FakeLayerManager;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GameInfo, BasicGeographicMap, GeographicMapCellType, GeographicMapCompositeInterface, AllBinaryGameLayerManager;

type
  {AB:TYPES}
  TFakeLayerManager = class(TAllBinaryGameLayerManager, IGeographicMapCompositeInterface)
  public
    geographicMapInterfaceArray: TArray<TBasicGeographicMap>;
    geographicMapCellTypeArray_: TArray<TGeographicMapCellType>;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(gameInfo_: TGameInfo);
        function getGeographicMapInterface: TArray<TBasicGeographicMap>; virtual;
        procedure setGeographicMapInterface(geographicMapInterfaceArray: TArray<TBasicGeographicMap>); virtual;
        function geographicMapCellTypeArray: TArray<TGeographicMapCellType>; virtual;
  end;

implementation
uses
  BasicColorFactory;


{AB:CODE}

procedure TFakeLayerManager.InitFields;
begin
  Self.geographicMapInterfaceArray := TBasicGeographicMap.NULL_BASIC_GEOGRAPHIC_MAP_ARRAY;
  Self.geographicMapCellTypeArray_ := TGeographicMapCellType.NULL_GEOGRAPHIC_MAP_CELL_TYPE_ARRAY;
end;

function TFakeLayerManager.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TFakeLayerManager.Create(gameInfo_: TGameInfo);
begin
        inherited Create(TBasicColorFactory.getInstance().BLACK, TBasicColorFactory.getInstance().WHITE, gameInfo_);
        InitFields;
end;
    

function TFakeLayerManager.getGeographicMapInterface: TArray<TBasicGeographicMap>;
begin
        Exit(Self.geographicMapInterfaceArray);
end;
    

procedure TFakeLayerManager.setGeographicMapInterface(geographicMapInterfaceArray: TArray<TBasicGeographicMap>);
begin
        Self.geographicMapInterfaceArray := geographicMapInterfaceArray;
        Self.geographicMapCellTypeArray_ := TJava.NewArray<TGeographicMapCellType>(System.Length(Self.geographicMapInterfaceArray));
end;
    

function TFakeLayerManager.geographicMapCellTypeArray: TArray<TGeographicMapCellType>;
begin
        Exit(Self.geographicMapCellTypeArray_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

