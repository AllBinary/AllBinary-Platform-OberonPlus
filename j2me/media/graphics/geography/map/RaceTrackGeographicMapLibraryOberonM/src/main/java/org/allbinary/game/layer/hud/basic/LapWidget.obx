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
unit LapWidget;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, BasicHud, LapInfo, BasicColor;

type
  {AB:TYPES}
  TLapWidget = class(TBasicHud)
  public
    LAP_STR: string;
    OF_STR: string;
    string_: string;
    procedure InitFields;
        constructor Create(location: Integer; direction: Integer; basicColor_: TBasicColor);
        procedure update(lapInfo_: TLapInfo); virtual;
        procedure paint(graphics_: TGraphics); virtual;
  end;

implementation
uses
  StringMaker, StringUtil;


{AB:CODE}

procedure TLapWidget.InitFields;
begin
  Self.LAP_STR := 'Lap ';
  Self.OF_STR := ' of ';
  Self.string_ := TStringUtil.getInstance().EMPTY_STRING;
end;
    

constructor TLapWidget.Create(location: Integer; direction: Integer; basicColor_: TBasicColor);
begin
        inherited Create(location, direction, 2, basicColor_);
        InitFields;
        Self.updateMaxHeight := 15;
        Self.updateMaxWidth := 40;
end;
    

procedure TLapWidget.update(lapInfo_: TLapInfo);
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.delete_(0, stringBuffer.length());
        stringBuffer.append(Self.LAP_STR);
        stringBuffer.appendint(Integer(Trunc(lapInfo_.getCurrentLap())));
        stringBuffer.append(Self.OF_STR);
        stringBuffer.appendint(Integer(Trunc(lapInfo_.getTotalLaps())));
        Self.string_ := stringBuffer.toString();
end;
    

procedure TLapWidget.paint(graphics_: TGraphics);
begin
        inherited paintString(graphics_, Self.string_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

