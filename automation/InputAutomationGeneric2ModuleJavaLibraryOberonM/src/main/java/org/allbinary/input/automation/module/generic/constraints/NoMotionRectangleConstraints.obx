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
unit NoMotionRectangleConstraints;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MotionRectangleConstraints, Rectangle;

type
  {AB:TYPES}
  TNoMotionRectangleConstraints = class(TMotionRectangleConstraints)
  public
        constructor Create;
        function isValid(frame: Int64; bufferedImage_: TBufferedImage; rectangle_: TRectangle): Boolean; virtual;
  end;

implementation
uses
  Dimension;


{AB:CODE}
    

constructor TNoMotionRectangleConstraints.Create;
begin
    inherited Create;
        Self.setMinDimension(TDimension.Create(0, 0));
        Self.setMinArea(0);
        Self.setMaxDimension(TDimension.Create(High(Integer), High(Integer)));
        Self.setMaxMotionRectangles(High(Integer));
end;
    

function TNoMotionRectangleConstraints.isValid(frame: Int64; bufferedImage_: TBufferedImage; rectangle_: TRectangle): Boolean;
begin
        Exit(True);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

