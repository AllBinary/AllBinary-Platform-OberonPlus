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
// package org.allbinary.game.behavior.topview.placement
unit AllAnimationsEverywhereTileMapPlacementVisitor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TiledMap, TileMapPlacementVisitor;

type
  {AB:TYPES}
  TAllAnimationsEverywhereTileMapPlacementVisitor = class(TTileMapPlacementVisitor)
  public
    constructor Create;
        procedure visit(lastMap: TTiledMap; mapData: TArray<TArray<Integer>>); override;
  end;

implementation

{AB:CODE}

constructor TAllAnimationsEverywhereTileMapPlacementVisitor.Create;
begin
  inherited Create;
end;
    

procedure TAllAnimationsEverywhereTileMapPlacementVisitor.visit(lastMap: TTiledMap; mapData: TArray<TArray<Integer>>);
var
  size: Integer;
  size2: Integer;
  index2: Integer;
  index: Integer;
begin
        size := System.Length(mapData);
        size2 := (System.Length(mapData[0])) - (7);
        for index := 0 to size - 1 do begin
            index2 := 0;
            while (index2) < (size2) do begin
                mapData[index][index2] := 1;
                mapData[index][(index2) + (1)] := 17;
                mapData[index][(index2) + (2)] := 33;
                mapData[index][(index2) + (3)] := 49;
                mapData[index][(index2) + (4)] := 65;
                mapData[index][(index2) + (5)] := 81;
                mapData[index][(index2) + (6)] := 97;
                index2 := (index2) + (7);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

