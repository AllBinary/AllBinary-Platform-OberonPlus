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
unit ImageColorResults;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ColorRange, ColorAverage;

type
  {AB:TYPES}
  TImageColorResults = class(TObject)
  public
    colorRange: TColorRange;
    colorAverage: TColorAverage;
    procedure InitFields;
        constructor Create;
        function getColorRange: TColorRange; virtual;
        procedure setColorRange(colorRange_: TColorRange); virtual;
        function getColorAverage: TColorAverage; virtual;
        procedure setColorAverage(colorAverage_: TColorAverage); virtual;
  end;

implementation

{AB:CODE}

procedure TImageColorResults.InitFields;
begin
  
  
end;
    

constructor TImageColorResults.Create;
begin
    inherited Create;
    InitFields;
        Self.setColorRange(TColorRange.Create());
        Self.getColorRange().setMaxRed(-1);
        Self.getColorRange().setMaxGreen(-1);
        Self.getColorRange().setMaxBlue(-1);
        Self.getColorRange().setMinRed(256);
        Self.getColorRange().setMinGreen(256);
        Self.getColorRange().setMinBlue(256);
        Self.setColorAverage(TColorAverage.Create());
end;
    

function TImageColorResults.getColorRange: TColorRange;
begin
        Exit(Self.colorRange);
end;
    

procedure TImageColorResults.setColorRange(colorRange_: TColorRange);
begin
        Self.colorRange := colorRange_;
end;
    

function TImageColorResults.getColorAverage: TColorAverage;
begin
        Exit(Self.colorAverage);
end;
    

procedure TImageColorResults.setColorAverage(colorAverage_: TColorAverage);
begin
        Self.colorAverage := colorAverage_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

