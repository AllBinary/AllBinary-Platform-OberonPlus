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
unit ImageColorRangeResults;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ColorRangeInterface;

type
  {AB:TYPES}
  TImageColorRangeResults = class(TObject)
  public
    colorRangeInterface: IColorRangeInterface;
    matchingPixelsChecked: Int64;
    totalPixelsChecked: Int64;
    procedure InitFields;
        constructor Create;
        function getColorRangeInterface: IColorRangeInterface; virtual;
        procedure setColorRangeInterface(colorRangeInterface_: IColorRangeInterface); virtual;
        function getMatchingPixelsChecked: Int64; virtual;
        procedure setMatchingPixelsChecked(matchingPixelsChecked: Int64); virtual;
        procedure addMatchingPixelsChecked; virtual;
        function getTotalPixelsChecked: Int64; virtual;
        procedure addTotalPixelsChecked; virtual;
        procedure setTotalPixelsChecked(totalPixelsChecked: Int64); virtual;
        function getPercent: Single; virtual;
  end;

implementation
uses
  ColorRange;


{AB:CODE}

procedure TImageColorRangeResults.InitFields;
begin
  
  
  
end;
    

constructor TImageColorRangeResults.Create;
begin
    inherited Create;
    InitFields;
        Self.setColorRangeInterface((TJava.ToObject(TColorRange.Create()) as IColorRangeInterface));
end;
    

function TImageColorRangeResults.getColorRangeInterface: IColorRangeInterface;
begin
        Exit(Self.colorRangeInterface);
end;
    

procedure TImageColorRangeResults.setColorRangeInterface(colorRangeInterface_: IColorRangeInterface);
begin
        Self.colorRangeInterface := colorRangeInterface_;
end;
    

function TImageColorRangeResults.getMatchingPixelsChecked: Int64;
begin
        Exit(Self.matchingPixelsChecked);
end;
    

procedure TImageColorRangeResults.setMatchingPixelsChecked(matchingPixelsChecked: Int64);
begin
        Self.matchingPixelsChecked := matchingPixelsChecked;
end;
    

procedure TImageColorRangeResults.addMatchingPixelsChecked;
begin
        Inc(Self.matchingPixelsChecked);
end;
    

function TImageColorRangeResults.getTotalPixelsChecked: Int64;
begin
        Exit(Self.totalPixelsChecked);
end;
    

procedure TImageColorRangeResults.addTotalPixelsChecked;
begin
        Inc(Self.totalPixelsChecked);
end;
    

procedure TImageColorRangeResults.setTotalPixelsChecked(totalPixelsChecked: Int64);
begin
        Self.totalPixelsChecked := totalPixelsChecked;
end;
    

function TImageColorRangeResults.getPercent: Single;
begin
        Exit(((Self.getMatchingPixelsChecked()) / (Self.getTotalPixelsChecked())));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

