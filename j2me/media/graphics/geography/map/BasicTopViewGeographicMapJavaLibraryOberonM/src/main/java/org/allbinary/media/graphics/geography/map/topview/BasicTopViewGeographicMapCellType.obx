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
// package org.allbinary.media.graphics.geography.map.topview
unit BasicTopViewGeographicMapCellType;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, GeographicMapCellType, BasicArrayList;

type
  {AB:TYPES}
  TBasicTopViewGeographicMapCellType = class(TObject)
  public
    logUtil: TLogUtil;
    name: string;
    cost: Integer;
    types: TArray<Integer>;
    procedure InitFields;
        class function createType(name: string; type_: Integer; cost: Integer): TBasicTopViewGeographicMapCellType; static;
        constructor Create(name: string; types: TBasicArrayList; cost: Integer);
        function isType(type_: TGeographicMapCellType): Boolean; virtual;
        function hasType(type_: Integer): Boolean; virtual;
        function getTypes: TArray<Integer>; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  StringMaker, GeographicMapCellTypeFactory, RaceTrackGeographicMapCellType, CommonSeps, BasicArrayListS;


{AB:CODE}

procedure TBasicTopViewGeographicMapCellType.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
end;
    

class function TBasicTopViewGeographicMapCellType.createType(name: string; type_: Integer; cost: Integer): TBasicTopViewGeographicMapCellType;
var
  types: TBasicArrayList;
begin
        types := TBasicArrayListS.Create(1);
        types.add(TJava.Box(type_));
        Exit(TBasicTopViewGeographicMapCellType.Create(name, types, cost));
end;
    

constructor TBasicTopViewGeographicMapCellType.Create(name: string; types: TBasicArrayList; cost: Integer);
var
  size: Integer;
  typeArray: TArray<Integer>;
  typeAsInteger: Integer;
  type_: Integer;
  index: Integer;
begin
    inherited Create;
    InitFields;
        size := types.size();
        typeArray := TJava.NewArray<Integer>(size);
        
        
        for index := 0 to size - 1 do begin
            typeAsInteger := (Integer(types.get(index)));
            type_ := (typeAsInteger);
            if (TGeographicMapCellTypeFactory.getInstance().getGeographicMapCellTypeArray()[type_]) = (nil) then begin
                TRaceTrackGeographicMapCellType.Create(name, type_, cost, 0);
            end else begin
            end;
            typeArray[index] := type_;
        end;
        Self.name := name;
        Self.cost := cost;
        Self.types := typeArray;
end;
    

function TBasicTopViewGeographicMapCellType.isType(type_: TGeographicMapCellType): Boolean;
begin
        Exit(Self.hasType(type_.getType()));
end;
    

function TBasicTopViewGeographicMapCellType.hasType(type_: Integer): Boolean;
var
  size: Integer;
  index: Integer;
begin
        size := System.Length(Self.types);
        for index := 0 to size - 1 do begin
            if (Self.types[index]) = (type_) then begin
                Exit(True);
            end;
        end;
        Exit(False);
end;
    

function TBasicTopViewGeographicMapCellType.getTypes: TArray<Integer>;
begin
        Exit(Self.types);
end;
    

function TBasicTopViewGeographicMapCellType.toString: string;
var
  stringMaker_: TStringMaker;
  size: Integer;
  index: Integer;
begin
        stringMaker_ := TStringMaker.Create();
        size := System.Length(Self.types);
        for index := 0 to size - 1 do begin
            stringMaker_.appendint(Self.types[index]).append(TCommonSeps.getInstance().COMMA);
        end;
        Exit(stringMaker_.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

