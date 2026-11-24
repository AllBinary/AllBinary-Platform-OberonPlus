{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.animation.image
unit SetColorProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, BasicColor, ImageModifierUtil, ModifierBaseProcessor;

type
  {AB:TYPES}
  TSetColorProcessor = class(TModifierBaseProcessor)
  public
    class var instanceC: TSetColorProcessor;
    constructor Create;
        class function getInstance: TSetColorProcessor; static;
        procedure updateColor(imageModifierUtil_: TImageModifierUtil; originalImage: TImage; imageToShow: TImage; index: Integer; basicColor_: TBasicColor); override;
  end;

implementation

{AB:CODE}

constructor TSetColorProcessor.Create;
begin
  inherited Create;
end;
    

class function TSetColorProcessor.getInstance: TSetColorProcessor;
begin
        Exit(TSetColorProcessor.instanceC);
end;
    

procedure TSetColorProcessor.updateColor(imageModifierUtil_: TImageModifierUtil; originalImage: TImage; imageToShow: TImage; index: Integer; basicColor_: TBasicColor);
begin
        imageModifierUtil_.setColor(originalImage, imageToShow, index, basicColor_);
end;

initialization
  {AB:INITIALIZATION}
  TSetColorProcessor.instanceC := TSetColorProcessor.Create();
  {AB:END}

end.

