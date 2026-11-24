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
unit GeographicMapCellPositionEventUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GeographicMapCellPositionTracking, GeographicMapCellPositionEvent, GeographicMapCellPositionEventHandler;

type
  {AB:TYPES}
  TGeographicMapCellPositionEventUtil = class(TObject)
  public
    geographicMapCellPositionEvent: TGeographicMapCellPositionEvent;
    geographicMapCellPositionEventHandler: TGeographicMapCellPositionEventHandler;
    procedure InitFields;
        constructor Create(anyType: TObject);
        procedure update(geographicMapCellPositionTracking_: TGeographicMapCellPositionTracking); virtual;
        procedure remove(geographicMapCellPositionTracking_: TGeographicMapCellPositionTracking); virtual;
  end;

implementation
uses
  CellPositionFactory;


{AB:CODE}

procedure TGeographicMapCellPositionEventUtil.InitFields;
begin
  
  Self.geographicMapCellPositionEventHandler := TGeographicMapCellPositionEventHandler.getInstance();
end;
    

constructor TGeographicMapCellPositionEventUtil.Create(anyType: TObject);
begin
    inherited Create;
    InitFields;
        Self.geographicMapCellPositionEvent := TGeographicMapCellPositionEvent.Create(anyType, TCellPositionFactory.getInstance().NONE);
end;
    

// throws Exception
procedure TGeographicMapCellPositionEventUtil.update(geographicMapCellPositionTracking_: TGeographicMapCellPositionTracking);
begin
        Self.geographicMapCellPositionEvent.setGeographicMapCellPosition(geographicMapCellPositionTracking_.getCurrentGeographicMapCellPosition());
        Self.geographicMapCellPositionEventHandler.fireEvent(Self.geographicMapCellPositionEvent);
end;
    

// throws Exception
procedure TGeographicMapCellPositionEventUtil.remove(geographicMapCellPositionTracking_: TGeographicMapCellPositionTracking);
begin
        Self.geographicMapCellPositionEvent.setGeographicMapCellPosition(geographicMapCellPositionTracking_.getCurrentGeographicMapCellPosition());
        Self.geographicMapCellPositionEventHandler.fireRemoveEvent(Self.geographicMapCellPositionEvent);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

