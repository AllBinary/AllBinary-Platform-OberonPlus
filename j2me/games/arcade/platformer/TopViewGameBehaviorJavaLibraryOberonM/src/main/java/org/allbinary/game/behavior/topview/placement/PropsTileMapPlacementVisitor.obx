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
unit PropsTileMapPlacementVisitor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MyRandomFactory, LogUtil, TiledMap, TileMapPlacementVisitor;

type
  {AB:TYPES}
  TPropsTileMapPlacementVisitor = class(TTileMapPlacementVisitor)
  public
    logUtil: TLogUtil;
    randomFactory: TMyRandomFactory;
    procedure InitFields;
    constructor Create;
        procedure visit(lastMap: TTiledMap; mapData: TArray<TArray<Integer>>); override;
        procedure visit2(mapArray: TArray<TArray<Integer>>; mapData: TArray<TArray<Integer>>; index: Integer; index2: Integer); virtual;
  end;

implementation
uses
  CommonStrings, TileLayer;


{AB:CODE}

procedure TPropsTileMapPlacementVisitor.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.randomFactory := TMyRandomFactory.getInstance();
end;

constructor TPropsTileMapPlacementVisitor.Create;
begin
  inherited Create;
  InitFields;
end;
    

procedure TPropsTileMapPlacementVisitor.visit(lastMap: TTiledMap; mapData: TArray<TArray<Integer>>);
var
  layerIndex: Integer;
  tileLayer_: TTileLayer;
  mapArray: TArray<TArray<Integer>>;
  size: Integer;
  size2: Integer;
  randomInt: Integer;
  index2: Integer;
  index: Integer;
begin
        layerIndex := 0;
        tileLayer_ := (TTileLayer(TJava.ToObject(lastMap.getLayer(layerIndex))));
        mapArray := tileLayer_.getMapArray();
        size := System.Length(mapData);
        size2 := System.Length(mapData[0]);
        for index := 0 to size - 1 do begin
            for index2 := 0 to size2 - 1 do begin
                if (mapArray[index][index2]) = (14) then begin
                end else begin
                    Self.visit2(mapArray, mapData, index, index2);
                end;
                if ((index) mod (7)) = (0) then begin
                    if (mapArray[index][index2]) = (19) then begin
                        randomInt := Self.randomFactory.getAbsoluteNextIntAllowZero(3);
                        if (randomInt) = (0) then begin
                            mapData[index][index2] := 1;
                        end else if (randomInt) = (1) then begin
                            mapData[index][index2] := 81;
                        end else if (randomInt) = (2) then begin
                            mapData[index][index2] := 97;
                        end;
                    end else if (mapArray[index][index2]) = (17) then begin
                        randomInt := Self.randomFactory.getAbsoluteNextIntAllowZero(3);
                        if (randomInt) = (0) then begin
                            mapData[index][index2] := 17;
                        end else if (randomInt) = (1) then begin
                            mapData[index][index2] := 81;
                        end else if (randomInt) = (2) then begin
                            mapData[index][index2] := 97;
                        end;
                    end;
                end;
                if ((index2) mod (7)) = (0) then begin
                    if (mapArray[index][index2]) = (34) then begin
                        randomInt := Self.randomFactory.getAbsoluteNextIntAllowZero(4);
                        if (randomInt) = (0) then begin
                            mapData[index][index2] := 33;
                        end else if (randomInt) = (1) then begin
                            mapData[index][index2] := 65;
                        end else if (randomInt) = (2) then begin
                            mapData[index][index2] := 81;
                        end else if (randomInt) = (3) then begin
                            mapData[index][index2] := 97;
                        end;
                    end;
                end;
            end;
        end;
end;
    

procedure TPropsTileMapPlacementVisitor.visit2(mapArray: TArray<TArray<Integer>>; mapData: TArray<TArray<Integer>>; index: Integer; index2: Integer);
var
  commonStrings_: TCommonStrings;
  countX: Integer;
  countY: Integer;
  index3: Integer;
  index6: Integer;
  index5: Integer;
  x: Integer;
  y: Integer;
  index4: Integer;
begin
        commonStrings_ := TCommonStrings.getInstance();
        countX := 0;
        countY := 0;
        index3 := (index) - (1);
        for index4 := (index2) - (1) downto 0 + 1 do begin
            Dec(index3);
            if ((index3) < (0)) or ((index4) < (0)) then begin
                Exit;
            end;
            if ((mapArray[index3][index4]) <> (14)) or ((mapData[index3][index4]) <> (0)) then begin
                if ((countX) > (10)) and ((countY) > (10)) then begin
                    for index5 := (index3) + (1) to (index) - (1) - 1 do begin
                        for index6 := (index4) + (1) to (index2) - (1) - 1 do begin
                            if ((mapArray[index5][index6]) <> (14)) or ((mapData[index5][index6]) <> (0)) then begin
                                Exit;
                            end;
                        end;
                    end;
                    x := (index) - (((countX) div (2)));
                    y := (index2) - (((countY) div (2)));
                    if ((((x) >= (0)) and ((y) >= (0))) and ((x) < (System.Length(mapData)))) and ((y) < (System.Length(mapData[0]))) then begin
                    end;
                end;
                Exit;
            end;
            Inc(countY);
            Inc(countX);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

