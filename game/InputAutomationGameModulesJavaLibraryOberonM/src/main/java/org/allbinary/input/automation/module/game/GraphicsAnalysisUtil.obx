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
// package org.allbinary.input.automation.module.game
unit GraphicsAnalysisUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TGraphicsAnalysisUtil = class(TObject)
  public
    class var MAX: Integer;
        constructor Create;
        class function getNominator(bufferedImage_: TBufferedImage; min_x: Integer; max_x: Integer; y: Integer): Double; static;
  end;

implementation
uses
  Color, ColorCacheFactory, ColorCacheable, AutomaticCacheInterface;


{AB:CODE}
    

constructor TGraphicsAnalysisUtil.Create;
begin
    inherited Create;
end;
    

// throws Exception
class function TGraphicsAnalysisUtil.getNominator(bufferedImage_: TBufferedImage; min_x: Integer; max_x: Integer; y: Integer): Double;
var
  colorInteger: Integer;
  automaticCacheInterface_: IAutomaticCacheInterface;
  colorCacheable_: TColorCacheable;
  color_: TColor;
  index: Integer;
begin
        for index := (max_x) downto (min_x) + 1 do begin
            colorInteger := IntToStr(bufferedImage_.getRGB(index, (y)));
            automaticCacheInterface_ := TColorCacheFactory.getInstance();
            colorCacheable_ := TColorCacheable(TJava.ToObject(automaticCacheInterface_.get(colorInteger)));
            color_ := colorCacheable_.getColor();
            if (((color_.getRed()) < (TGraphicsAnalysisUtil.MAX)) and ((color_.getGreen()) < (TGraphicsAnalysisUtil.MAX))) and ((color_.getBlue()) < (TGraphicsAnalysisUtil.MAX)) then begin
            end else begin
                Exit((index) - ((min_x)));
            end;
        end;
        Exit(0.0);
end;

initialization
  {AB:INITIALIZATION}
  TGraphicsAnalysisUtil.MAX := 122;
  {AB:END}

end.

