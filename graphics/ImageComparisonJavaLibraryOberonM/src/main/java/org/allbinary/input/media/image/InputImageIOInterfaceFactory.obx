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
// package org.allbinary.input.media.image
unit InputImageIOInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ImageIOInterface, InputImageType;

type
  {AB:TYPES}
  TInputImageIOInterfaceFactory = class(TObject)
  public
        constructor Create;
        class function getInstance(imageType: TInputImageType): IImageIOInterface; static;
  end;

implementation
uses
  CapturedImageInputOutput, ComparisonImageInputOutput, MotionRectanglesImageInputOutput;


{AB:CODE}
    

constructor TInputImageIOInterfaceFactory.Create;
begin
    inherited Create;
end;
    

// throws Exception
class function TInputImageIOInterfaceFactory.getInstance(imageType: TInputImageType): IImageIOInterface;
begin
        if (imageType) = (TInputImageType.CAPTURE) then begin
            Exit(TCapturedImageInputOutput.Create());
        end else if (imageType) = (TInputImageType.COMPARISON) then begin
            Exit(TComparisonImageInputOutput.Create());
        end else if (imageType) = (TInputImageType.MOTION) then begin
            Exit(TMotionRectanglesImageInputOutput.Create());
        end else begin
            raise SysUtils.Exception.Create('No ImageIOInterface for: ' + imageType.toString());
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

