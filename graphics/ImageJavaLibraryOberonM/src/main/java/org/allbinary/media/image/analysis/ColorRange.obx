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
// package org.allbinary.media.image.analysis
unit ColorRange;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Color, ColorRangeInterface;

type
  {AB:TYPES}
  TColorRange = class(TInterfacedObject, IColorRangeInterface)
  public
    minRed: Integer;
    maxRed: Integer;
    minGreen: Integer;
    maxGreen: Integer;
    minBlue: Integer;
    maxBlue: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        function getMinRed: Integer; virtual;
        procedure setMinRed(minRed: Integer); virtual;
        function getMaxRed: Integer; virtual;
        procedure setMaxRed(maxRed: Integer); virtual;
        function getMinGreen: Integer; virtual;
        procedure setMinGreen(minGreen: Integer); virtual;
        function getMaxGreen: Integer; virtual;
        procedure setMaxGreen(maxGreen: Integer); virtual;
        function getMinBlue: Integer; virtual;
        procedure setMinBlue(minBlue: Integer); virtual;
        function getMaxBlue: Integer; virtual;
        procedure setMaxBlue(maxBlue: Integer); virtual;
        function isInRange(color_: TColor): Boolean; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  StringMaker, CommonSeps;


{AB:CODE}

procedure TColorRange.InitFields;
begin
  
  
  
  
  
  
end;

function TColorRange.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TColorRange.Create;
begin
    inherited Create;
    InitFields;
        Self.minRed := 0;
        Self.maxRed := 0;
        Self.minGreen := 0;
        Self.maxGreen := 0;
        Self.minBlue := 0;
        Self.maxBlue := 0;
end;
    

function TColorRange.getMinRed: Integer;
begin
        Exit(Self.minRed);
end;
    

procedure TColorRange.setMinRed(minRed: Integer);
begin
        Self.minRed := minRed;
end;
    

function TColorRange.getMaxRed: Integer;
begin
        Exit(Self.maxRed);
end;
    

procedure TColorRange.setMaxRed(maxRed: Integer);
begin
        Self.maxRed := maxRed;
end;
    

function TColorRange.getMinGreen: Integer;
begin
        Exit(Self.minGreen);
end;
    

procedure TColorRange.setMinGreen(minGreen: Integer);
begin
        Self.minGreen := minGreen;
end;
    

function TColorRange.getMaxGreen: Integer;
begin
        Exit(Self.maxGreen);
end;
    

procedure TColorRange.setMaxGreen(maxGreen: Integer);
begin
        Self.maxGreen := maxGreen;
end;
    

function TColorRange.getMinBlue: Integer;
begin
        Exit(Self.minBlue);
end;
    

procedure TColorRange.setMinBlue(minBlue: Integer);
begin
        Self.minBlue := minBlue;
end;
    

function TColorRange.getMaxBlue: Integer;
begin
        Exit(Self.maxBlue);
end;
    

procedure TColorRange.setMaxBlue(maxBlue: Integer);
begin
        Self.maxBlue := maxBlue;
end;
    

function TColorRange.isInRange(color_: TColor): Boolean;
begin
        if ((((((color_.getRed()) >= (Self.getMinRed())) and ((color_.getRed()) <= (Self.getMaxRed()))) and ((color_.getGreen()) >= (Self.getMinGreen()))) and ((color_.getGreen()) <= (Self.getMaxGreen()))) and ((color_.getBlue()) >= (Self.getMinBlue()))) and ((color_.getBlue()) <= (Self.getMaxBlue())) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function TColorRange.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('getMinRed(): ');
        stringBuffer.appendint(Self.getMinRed());
        stringBuffer.append(TCommonSeps.getInstance().NEW_LINE);
        stringBuffer.append('getMaxRed(): ');
        stringBuffer.appendint(Self.getMaxRed());
        stringBuffer.append(TCommonSeps.getInstance().NEW_LINE);
        stringBuffer.append('getMinGreen(): ');
        stringBuffer.appendint(Self.getMinGreen());
        stringBuffer.append(TCommonSeps.getInstance().NEW_LINE);
        stringBuffer.append('getMaxGreen(): ');
        stringBuffer.appendint(Self.getMaxGreen());
        stringBuffer.append(TCommonSeps.getInstance().NEW_LINE);
        stringBuffer.append('getMinBlue(): ');
        stringBuffer.appendint(Self.getMinGreen());
        stringBuffer.append(TCommonSeps.getInstance().NEW_LINE);
        stringBuffer.append('getMaxBlue(): ');
        stringBuffer.appendint(Self.getMaxBlue());
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

