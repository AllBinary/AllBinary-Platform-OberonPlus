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
// package org.allbinary.media.graphics.geography.map.event
unit GeographicMapCellPositionEvent;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CellPosition, AllBinaryEventObject, GeographicMapCellPosition;

type
  {AB:TYPES}
  TGeographicMapCellPositionEvent = class(TAllBinaryEventObject)
  public
    geographicMapCellPosition: TCellPosition;
    procedure InitFields;
        constructor Create(anyType: TObject; geographicMapCellPosition_: TCellPosition);
        procedure init(anyType: TObject); virtual;
        procedure setGeographicMapCellPosition(geographicMapCellPosition_: TGeographicMapCellPosition); virtual;
        function getGeographicMapCellPosition: TGeographicMapCellPosition; virtual;
        function toString: string; override;
  end;

implementation
uses
  CellPositionFactory, StringMaker, StringUtil;


{AB:CODE}

procedure TGeographicMapCellPositionEvent.InitFields;
begin
  Self.geographicMapCellPosition := TCellPositionFactory.getInstance().NONE;
end;
    

constructor TGeographicMapCellPositionEvent.Create(anyType: TObject; geographicMapCellPosition_: TCellPosition);
begin
        inherited Create(anyType);
        InitFields;
        Self.geographicMapCellPosition := geographicMapCellPosition_;
end;
    

procedure TGeographicMapCellPositionEvent.init(anyType: TObject);
begin
        Self.setSource(TJava.Box(anyType));
end;
    

procedure TGeographicMapCellPositionEvent.setGeographicMapCellPosition(geographicMapCellPosition_: TGeographicMapCellPosition);
begin
        Self.geographicMapCellPosition := geographicMapCellPosition_;
end;
    

function TGeographicMapCellPositionEvent.getGeographicMapCellPosition: TGeographicMapCellPosition;
begin
        Exit(TGeographicMapCellPosition(TJava.ToObject(Self.geographicMapCellPosition)));
end;
    

function TGeographicMapCellPositionEvent.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('CellPositionEvent: ');
        stringBuffer.append(''#10'GeographicMapCellPosition: ');
        stringBuffer.append(TStringUtil.getInstance().toString(Self.getGeographicMapCellPosition()));
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

