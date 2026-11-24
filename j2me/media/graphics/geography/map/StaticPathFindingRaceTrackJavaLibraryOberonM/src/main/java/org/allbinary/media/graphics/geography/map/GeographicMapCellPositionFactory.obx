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
// package org.allbinary.media.graphics.geography.map
unit GeographicMapCellPositionFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ABHashtable, BasicGeographicMapCellPositionFactory, BasicGeographicMap, GeographicMapCellPositionBaseFactory;

type
  {AB:TYPES}
  TGeographicMapCellPositionFactory = class(TGeographicMapCellPositionBaseFactory)
  public
    logUtil: TLogUtil;
    class var hashtable: TABHashtable<TObject, TObject>;
    procedure InitFields;
    constructor Create;
        function getInstance(geographicMapInterface: TBasicGeographicMap): TBasicGeographicMapCellPositionFactory; override;
        class function getHashtable: TABHashtable<TObject, TObject>; static;
  end;

implementation
uses
  CommonStrings, AllBinaryTiledLayer, StdUtil, StringMaker;


{AB:CODE}

procedure TGeographicMapCellPositionFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

constructor TGeographicMapCellPositionFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

// throws Exception
function TGeographicMapCellPositionFactory.getInstance(geographicMapInterface: TBasicGeographicMap): TBasicGeographicMapCellPositionFactory;
var
  commonStrings_: TCommonStrings;
  allBinaryTiledLayer_: TAllBinaryTiledLayer;
  geographicMapCellPositionFactoryCanBeNull: TObject;
begin
        commonStrings_ := TCommonStrings.getInstance();
        allBinaryTiledLayer_ := geographicMapInterface.getAllBinaryTiledLayer();
        geographicMapCellPositionFactoryCanBeNull := TJava.Box(TGeographicMapCellPositionFactory.hashtable.get(TJava.Box(allBinaryTiledLayer_.getDataId())));
        if (geographicMapCellPositionFactoryCanBeNull) = (nil) then begin
            Self.logUtil.putF(TStringMaker.Create().append('Creating GeographicMapCellPositionFactory for TileLayer: ').appendint(allBinaryTiledLayer_.getDataId().intValue()).toString(), TJava.Box(Self), commonStrings_.GET_INSTANCE);
            geographicMapCellPositionFactoryCanBeNull := TJava.Box(TBasicGeographicMapCellPositionFactory.Create(geographicMapInterface));
            TGeographicMapCellPositionFactory.hashtable.put(TJava.Box(allBinaryTiledLayer_.getDataId()), TJava.Box(geographicMapCellPositionFactoryCanBeNull));
            Exit(TBasicGeographicMapCellPositionFactory(TJava.ToObject(geographicMapCellPositionFactoryCanBeNull)));
        end else begin
            Self.logUtil.putF(TStringMaker.Create().append('Reusing GeographicMapCellPositionFactory for TileLayer: ').appendint(allBinaryTiledLayer_.getDataId().intValue()).toString(), TJava.Box(Self), commonStrings_.GET_INSTANCE);
            Exit(TBasicGeographicMapCellPositionFactory(TJava.ToObject(geographicMapCellPositionFactoryCanBeNull)));
        end;
end;
    

class function TGeographicMapCellPositionFactory.getHashtable: TABHashtable<TObject, TObject>;
begin
        Exit(TGeographicMapCellPositionFactory.hashtable);
end;

initialization
  {AB:INITIALIZATION}
  TGeographicMapCellPositionFactory.hashtable := TStdUtil.getInstance().createHashtable();
  {AB:END}

end.

