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
// package org.allbinary.input.automation.module.generic.constraints
unit NoImageComparatorConstraints;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GPoint, ImageComparatorConstraints, Color;

type
  {AB:TYPES}
  TNoImageComparatorConstraints = class(TImageComparatorConstraints)
  public
        constructor Create;
        function isColorAllowed(frame: Integer; point: TGPoint; color_: TColor): Boolean; virtual;
        function isImageValid(bufferedImage_: TBufferedImage): Boolean; virtual;
  end;

implementation

{AB:CODE}
    

constructor TNoImageComparatorConstraints.Create;
begin
        inherited Create(1);
        Self.setMaxNonMatchingPixelDeltas(High(Integer));
end;
    

function TNoImageComparatorConstraints.isColorAllowed(frame: Integer; point: TGPoint; color_: TColor): Boolean;
begin
        Exit(True);
end;
    

function TNoImageComparatorConstraints.isImageValid(bufferedImage_: TBufferedImage): Boolean;
begin
        Exit(True);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

