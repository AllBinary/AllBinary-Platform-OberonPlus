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
unit ColorAverage;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TColorAverage = class(TObject)
  public
    avgRed: Single;
    avgGreen: Single;
    avgBlue: Single;
    procedure InitFields;
        constructor Create;
        function toString: string; virtual;
        function getAvgRed: Single; virtual;
        procedure setAvgRed(avgRed: Single); virtual;
        function getAvgGreen: Single; virtual;
        procedure setAvgGreen(avgGreen: Single); virtual;
        function getAvgBlue: Single; virtual;
        procedure setAvgBlue(avgBlue: Single); virtual;
  end;

implementation
uses
  StringMaker, CommonSeps;


{AB:CODE}

procedure TColorAverage.InitFields;
begin
  
  
  
end;
    

constructor TColorAverage.Create;
begin
    inherited Create;
    InitFields;
        Self.setAvgRed(0);
        Self.setAvgGreen(0);
        Self.setAvgBlue(0);
end;
    

function TColorAverage.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('getAvgRed(): ');
        stringBuffer.appendfloat(Self.getAvgRed());
        stringBuffer.append(TCommonSeps.getInstance().NEW_LINE);
        stringBuffer.append('getAvgRed(): ');
        stringBuffer.appendfloat(Self.getAvgRed());
        stringBuffer.append(TCommonSeps.getInstance().NEW_LINE);
        stringBuffer.append('getAvgGreen(): ');
        stringBuffer.appendfloat(Self.getAvgGreen());
        stringBuffer.append(TCommonSeps.getInstance().NEW_LINE);
        Exit(stringBuffer.toString());
end;
    

function TColorAverage.getAvgRed: Single;
begin
        Exit(Self.avgRed);
end;
    

procedure TColorAverage.setAvgRed(avgRed: Single);
begin
        Self.avgRed := avgRed;
end;
    

function TColorAverage.getAvgGreen: Single;
begin
        Exit(Self.avgGreen);
end;
    

procedure TColorAverage.setAvgGreen(avgGreen: Single);
begin
        Self.avgGreen := avgGreen;
end;
    

function TColorAverage.getAvgBlue: Single;
begin
        Exit(Self.avgBlue);
end;
    

procedure TColorAverage.setAvgBlue(avgBlue: Single);
begin
        Self.avgBlue := avgBlue;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

