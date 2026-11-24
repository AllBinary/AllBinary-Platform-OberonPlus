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
// package org.allbinary.game.layer.hud.basic
unit PositionWidget;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, BasicHud, BasicColor;

type
  {AB:TYPES}
  // super.paint(graphics, positionString, currentPostString, offset2, offset);
  TPositionWidget = class(TBasicHud)
  public
    position: Integer;
    positionString: string;
    procedure InitFields;
        constructor Create(position: Integer; location: Integer; direction: Integer; basicColor_: TBasicColor);
        function get: Integer; virtual;
        procedure set_(position: Integer); virtual;
        procedure paint(graphics_: TGraphics); virtual;
        class function toString(position: Integer): string; static;
  end;

implementation
uses
  StringMaker, StringUtil;


{AB:CODE}

procedure TPositionWidget.InitFields;
begin
  
  Self.positionString := TStringUtil.getInstance().EMPTY_STRING;
end;
    

constructor TPositionWidget.Create(position: Integer; location: Integer; direction: Integer; basicColor_: TBasicColor);
begin
        inherited Create(location, direction, 2, basicColor_);
        InitFields;
        Self.updateMaxHeight := 10;
        Self.updateMaxWidth := 40;
end;
    

function TPositionWidget.get: Integer;
begin
        Exit(Self.position);
end;
    

procedure TPositionWidget.set_(position: Integer);
begin
        Self.position := position;
        Self.positionString := TPositionWidget.toString(Self.get());
end;
    

procedure TPositionWidget.paint(graphics_: TGraphics);
begin
        inherited paintString(graphics_, Self.positionString);
end;
    

class function TPositionWidget.toString(position: Integer): string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(IntToStr(position));
        if (position) = (1) then begin
            stringBuffer.append('st');
        end else if (position) = (2) then begin
            stringBuffer.append('nd');
        end else if (position) = (3) then begin
            stringBuffer.append('rd');
        end else begin
            stringBuffer.append('th');
        end;
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

