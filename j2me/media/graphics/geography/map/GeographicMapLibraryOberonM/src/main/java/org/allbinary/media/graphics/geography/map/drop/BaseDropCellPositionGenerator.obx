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
unit BaseDropCellPositionGenerator;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryGameLayerManager, AllBinaryLayerManager, GeographicMapCellPosition, BasicGeographicMap, DropCellPositionGeneratorInterface;

type
  {AB:TYPES}
  TBaseDropCellPositionGenerator = class(TInterfacedObject, IDropCellPositionGeneratorInterface)
  public
    function JavaObject: TObject;
    constructor Create;
        function getName: string; virtual;
        procedure update(allBinaryGameLayerManager_: TAllBinaryGameLayerManager; geographicMapInterface: TBasicGeographicMap); virtual;
        function isDropAllowedAt(geographicMapCellPosition_: TGeographicMapCellPosition): Boolean; virtual;
        procedure processTick(allBinaryLayerManager_: TAllBinaryLayerManager); virtual;
  end;

implementation

{AB:CODE}

function TBaseDropCellPositionGenerator.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TBaseDropCellPositionGenerator.Create;
begin
  inherited Create;
end;
    

function TBaseDropCellPositionGenerator.getName: string;
begin
        Exit(Self.ClassType.ClassName);
end;
    

// throws Exception
procedure TBaseDropCellPositionGenerator.update(allBinaryGameLayerManager_: TAllBinaryGameLayerManager; geographicMapInterface: TBasicGeographicMap);
begin
end;
    

// throws Exception
function TBaseDropCellPositionGenerator.isDropAllowedAt(geographicMapCellPosition_: TGeographicMapCellPosition): Boolean;
begin
        Exit(True);
end;
    

// throws Exception
procedure TBaseDropCellPositionGenerator.processTick(allBinaryLayerManager_: TAllBinaryLayerManager);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

