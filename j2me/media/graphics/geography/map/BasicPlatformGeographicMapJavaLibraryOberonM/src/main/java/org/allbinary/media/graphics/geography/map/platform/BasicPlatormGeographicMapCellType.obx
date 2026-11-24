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
// package org.allbinary.media.graphics.geography.map.platform
unit BasicPlatormGeographicMapCellType;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GeographicMapCellType, BasicArrayList;

type
  {AB:TYPES}
  TBasicPlatormGeographicMapCellType = class(TObject)
  public
    types: TArray<Integer>;
    procedure InitFields;
        class function createType(type_: Integer): TBasicPlatormGeographicMapCellType; static;
        constructor Create(types: TBasicArrayList);
        function isType(type_: TGeographicMapCellType): Boolean; virtual;
        function hasType(type_: Integer): Boolean; virtual;
  end;

implementation
uses
  SmallIntegerSingletonFactory, BasicArrayListS;


{AB:CODE}

procedure TBasicPlatormGeographicMapCellType.InitFields;
begin
  
end;
    

class function TBasicPlatormGeographicMapCellType.createType(type_: Integer): TBasicPlatormGeographicMapCellType;
var
  types: TBasicArrayList;
  basicPlatormGeographicMapCellType_: TBasicPlatormGeographicMapCellType;
begin
        types := TBasicArrayListS.Create(1);
        types.add(TJava.Box(TSmallIntegerSingletonFactory.getInstance().getAt(type_)));
        basicPlatormGeographicMapCellType_ := TBasicPlatormGeographicMapCellType.Create(types);
        Exit(basicPlatormGeographicMapCellType_);
end;
    

constructor TBasicPlatormGeographicMapCellType.Create(types: TBasicArrayList);
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
            TGeographicMapCellType.Create(type_, 0);
            typeArray[index] := type_;
        end;
        Self.types := typeArray;
end;
    

function TBasicPlatormGeographicMapCellType.isType(type_: TGeographicMapCellType): Boolean;
begin
        Exit(Self.hasType(type_.getType()));
end;
    

function TBasicPlatormGeographicMapCellType.hasType(type_: Integer): Boolean;
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

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

