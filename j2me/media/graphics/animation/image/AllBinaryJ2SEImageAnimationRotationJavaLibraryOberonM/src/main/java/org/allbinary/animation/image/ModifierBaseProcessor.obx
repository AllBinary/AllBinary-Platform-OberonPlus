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
unit ModifierBaseProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, BasicColor, ImageModifierUtil;

type
  {AB:TYPES}
  TModifierBaseProcessor = class(TObject)
  public
    class var instance: TModifierBaseProcessor;
    constructor Create;
        class function getInstance: TModifierBaseProcessor; static;
        procedure updateColor(imageModifierUtil_: TImageModifierUtil; originalImage: TImage; imageToShow: TImage; index: Integer; basicColor_: TBasicColor); virtual;
        procedure updateAlpha(imageModifierUtil_: TImageModifierUtil; originalImage: TImage; imageToShow: TImage; index: Integer; alpha: Integer); virtual;
  end;

implementation

{AB:CODE}

constructor TModifierBaseProcessor.Create;
begin
  inherited Create;
end;
    

class function TModifierBaseProcessor.getInstance: TModifierBaseProcessor;
begin
        Exit(TModifierBaseProcessor.instance);
end;
    

procedure TModifierBaseProcessor.updateColor(imageModifierUtil_: TImageModifierUtil; originalImage: TImage; imageToShow: TImage; index: Integer; basicColor_: TBasicColor);
begin
end;
    

procedure TModifierBaseProcessor.updateAlpha(imageModifierUtil_: TImageModifierUtil; originalImage: TImage; imageToShow: TImage; index: Integer; alpha: Integer);
begin
end;

initialization
  {AB:INITIALIZATION}
  TModifierBaseProcessor.instance := TModifierBaseProcessor.Create();
  {AB:END}

end.

