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
unit ColorFromEventUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryGameCanvas, BasicColor;

type
  {AB:TYPES}
  TColorFromEventUtil = class(TObject)
  public
    YELLOW: TBasicColor;
    COLOR_INT: Integer;
    class var instance: TColorFromEventUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TColorFromEventUtil; static;
        function getForegroundColor(gameCanvasInterface: TAllBinaryGameCanvas): TBasicColor; virtual;
  end;

implementation
uses
  GeographicMapCompositeInterface, BasicGeographicMap, BasicColorFactory;


{AB:CODE}

procedure TColorFromEventUtil.InitFields;
begin
  Self.YELLOW := TBasicColorFactory.getInstance().YELLOW;
  Self.COLOR_INT := Self.YELLOW.intValue();
end;

constructor TColorFromEventUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TColorFromEventUtil.getInstance: TColorFromEventUtil;
begin
        Exit(TColorFromEventUtil.instance);
end;
    

function TColorFromEventUtil.getForegroundColor(gameCanvasInterface: TAllBinaryGameCanvas): TBasicColor;
var
  color: TBasicColor;
  geographicMapCompositeInterface_: IGeographicMapCompositeInterface;
  geographicMapInterface: TBasicGeographicMap;
  foregroundBasicColor: TBasicColor;
begin
        color := Self.YELLOW;
        geographicMapCompositeInterface_ := (TJava.ToObject(gameCanvasInterface.getLayerManager()) as IGeographicMapCompositeInterface);
        geographicMapInterface := geographicMapCompositeInterface_.getGeographicMapInterface()[0];
        if (geographicMapInterface) <> (nil) then begin
            foregroundBasicColor := geographicMapInterface.getForegroundBasicColor();
            color := foregroundBasicColor;
        end;
        Exit(color);
end;

initialization
  {AB:INITIALIZATION}
  TColorFromEventUtil.instance := TColorFromEventUtil.Create();
  {AB:END}

end.

