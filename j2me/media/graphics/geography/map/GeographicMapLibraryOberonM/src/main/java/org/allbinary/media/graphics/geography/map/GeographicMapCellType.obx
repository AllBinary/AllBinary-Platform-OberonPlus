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
unit GeographicMapCellType;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil;

type
  {AB:TYPES}
  TGeographicMapCellType = class(TObject)
  public
    logUtil: TLogUtil;
    type_: Integer;
    class var NULL_GEOGRAPHIC_MAP_CELL_TYPE_ARRAY: TArray<TGeographicMapCellType>;
    class var NULL_GEOGRAPHIC_MAP_CELL_TYPE: TGeographicMapCellType;
    procedure InitFields;
        constructor Create(type_: Integer; reset: Integer);
        function getType: Integer; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  GeographicMapCellTypeFactory, SmallIntegerSingletonFactory;


{AB:CODE}

procedure TGeographicMapCellType.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TGeographicMapCellType.Create(type_: Integer; reset: Integer);
var
  geographicMapCellTypeFactory_: TGeographicMapCellTypeFactory;
  geographicMapCellTypeArray: TArray<TGeographicMapCellType>;
begin
    inherited Create;
    InitFields;
        Self.type_ := type_;
        if (type_) <> (Low(Integer)) then begin
            geographicMapCellTypeFactory_ := TGeographicMapCellTypeFactory.getInstance();
            geographicMapCellTypeArray := geographicMapCellTypeFactory_.getGeographicMapCellTypeArray();
            if ((geographicMapCellTypeArray[type_]) = (nil)) or ((reset) = (1)) then begin
                geographicMapCellTypeArray[type_] := Self;
            end else begin
                if (reset) <> (-1) then begin
                    raise SysUtils.Exception.Create('');
                end;
            end;
        end;
end;
    

function TGeographicMapCellType.getType: Integer;
begin
        Exit(Self.type_);
end;
    

function TGeographicMapCellType.toString: string;
begin
        Exit(TSmallIntegerSingletonFactory.getInstance().getAt(Self.type_).toString());
end;

initialization
  {AB:INITIALIZATION}
  TGeographicMapCellType.NULL_GEOGRAPHIC_MAP_CELL_TYPE_ARRAY := nil;
  TGeographicMapCellType.NULL_GEOGRAPHIC_MAP_CELL_TYPE := TGeographicMapCellType.Create(Low(Integer), 0);
  {AB:END}

end.

