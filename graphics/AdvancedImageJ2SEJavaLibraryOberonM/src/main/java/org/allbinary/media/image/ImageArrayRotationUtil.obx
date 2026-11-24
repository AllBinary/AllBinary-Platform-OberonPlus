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
// package org.allbinary.media.image
unit ImageArrayRotationUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonStrings, ImageProcessorInput, ImageProcessedVisitor;

type
  {AB:TYPES}
  TImageArrayRotationUtil = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    TOTAL_ANGLE: string;
    class var instance: TImageArrayRotationUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TImageArrayRotationUtil; static;
        procedure process(imageProcessorInput_: TImageProcessorInput; input: string; visitor: TImageProcessedVisitor); virtual;
  end;

implementation
uses
  ImageJ2SERotationUtil;


{AB:CODE}

procedure TImageArrayRotationUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.TOTAL_ANGLE := 'totalAngle: ';
end;

constructor TImageArrayRotationUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TImageArrayRotationUtil.getInstance: TImageArrayRotationUtil;
begin
        Exit(TImageArrayRotationUtil.instance);
end;
    

// throws IOException
procedure TImageArrayRotationUtil.process(imageProcessorInput_: TImageProcessorInput; input: string; visitor: TImageProcessedVisitor);
var
  totalAngle: Integer;
  generatedBufferedImage: TBufferedImage;
  bufferedImageArray: TArray<TBufferedImage>;
  index: Integer;
begin
        
        if TJava.Equals(input, Self.commonStrings.UP) then begin
            totalAngle := IntToStr(-90);
        end else if TJava.Equals(input, Self.commonStrings.DOWN) then begin
            totalAngle := IntToStr(90);
        end else begin
            totalAngle := IntToStr(input);
        end;
        
        bufferedImageArray := imageProcessorInput_.getBufferedImageArray();
        for index := 0 to System.Length(bufferedImageArray) - 1 do begin
            Self.logUtil.putF(Self.TOTAL_ANGLE + IntToStr(totalAngle), TJava.Box(Self), Self.commonStrings.RUN);
            generatedBufferedImage := TImageJ2SERotationUtil.getInstance().getRotatedImage(bufferedImageArray[index], (totalAngle));
            visitor.visit(generatedBufferedImage, input, index);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TImageArrayRotationUtil.instance := TImageArrayRotationUtil.Create();
  {AB:END}

end.

