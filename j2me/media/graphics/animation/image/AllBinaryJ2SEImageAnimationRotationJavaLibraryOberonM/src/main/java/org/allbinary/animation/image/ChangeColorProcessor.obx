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
unit ChangeColorProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, BasicColor, ImageModifierUtil, ModifierBaseProcessor;

type
  {AB:TYPES}
  TChangeColorProcessor = class(TModifierBaseProcessor)
  public
    class var instanceC: TChangeColorProcessor;
    constructor Create;
        class function getInstance: TChangeColorProcessor; static;
        procedure updateColor(imageModifierUtil_: TImageModifierUtil; originalImage: TImage; imageToShow: TImage; index: Integer; basicColor_: TBasicColor); override;
  end;

implementation

{AB:CODE}

constructor TChangeColorProcessor.Create;
begin
  inherited Create;
end;
    

class function TChangeColorProcessor.getInstance: TChangeColorProcessor;
begin
        Exit(TChangeColorProcessor.instanceC);
end;
    

procedure TChangeColorProcessor.updateColor(imageModifierUtil_: TImageModifierUtil; originalImage: TImage; imageToShow: TImage; index: Integer; basicColor_: TBasicColor);
begin
        imageModifierUtil_.changeColor(originalImage, imageToShow, index, basicColor_);
end;

initialization
  {AB:INITIALIZATION}
  TChangeColorProcessor.instanceC := TChangeColorProcessor.Create();
  {AB:END}

end.

