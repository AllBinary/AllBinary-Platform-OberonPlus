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
unit AlphaProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, ImageModifierUtil, ModifierBaseProcessor;

type
  {AB:TYPES}
  TAlphaProcessor = class(TModifierBaseProcessor)
  public
    class var instanceC: TAlphaProcessor;
    constructor Create;
        class function getInstance: TAlphaProcessor; static;
        procedure updateAlpha(imageModifierUtil_: TImageModifierUtil; originalImage: TImage; imageToShow: TImage; index: Integer; alpha: Integer); override;
  end;

implementation

{AB:CODE}

constructor TAlphaProcessor.Create;
begin
  inherited Create;
end;
    

class function TAlphaProcessor.getInstance: TAlphaProcessor;
begin
        Exit(TAlphaProcessor.instanceC);
end;
    

procedure TAlphaProcessor.updateAlpha(imageModifierUtil_: TImageModifierUtil; originalImage: TImage; imageToShow: TImage; index: Integer; alpha: Integer);
begin
        imageModifierUtil_.setAlpha(originalImage, imageToShow, index, alpha);
end;

initialization
  {AB:INITIALIZATION}
  TAlphaProcessor.instanceC := TAlphaProcessor.Create();
  {AB:END}

end.

