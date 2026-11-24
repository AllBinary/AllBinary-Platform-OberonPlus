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
unit CanvasExpandUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, StringUtil, ImageProcessorInput, ImageProcessedVisitor;

type
  {AB:TYPES}
  TCanvasExpandUtil = class(TObject)
  public
    logUtil: TLogUtil;
    stringUtil: TStringUtil;
    class var instance: TCanvasExpandUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TCanvasExpandUtil; static;
        procedure process(imageProcessorInput_: TImageProcessorInput; increaseX: Integer; increaseY: Integer; visitor: TImageProcessedVisitor); virtual;
  end;

implementation
uses
  ImageUtil;


{AB:CODE}

procedure TCanvasExpandUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.stringUtil := TStringUtil.getInstance();
end;

constructor TCanvasExpandUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TCanvasExpandUtil.getInstance: TCanvasExpandUtil;
begin
        Exit(TCanvasExpandUtil.instance);
end;
    

// throws Exception
procedure TCanvasExpandUtil.process(imageProcessorInput_: TImageProcessorInput; increaseX: Integer; increaseY: Integer; visitor: TImageProcessedVisitor);
var
  imageUtil_: TImageUtil;
  bufferedImageArray: TArray<TBufferedImage>;
  subBufferedImageArray: TArray<TBufferedImage>;
  size: Integer;
  bufferedImage_: TBufferedImage;
  index: Integer;
begin
        imageUtil_ := TImageUtil.getInstance();
        bufferedImageArray := imageProcessorInput_.getBufferedImageArray();
        subBufferedImageArray := TJava.NewArray<TBufferedImage>(System.Length(bufferedImageArray));
        size := System.Length(bufferedImageArray);
        
        for index := 0 to size - 1 do begin
            bufferedImage_ := bufferedImageArray[index];
            subBufferedImageArray[index] := imageUtil_.createBufferedImage(bufferedImage_, (bufferedImage_.getWidth()) + (increaseX), (bufferedImage_.getHeight()) + (increaseY), False);
            visitor.visit(subBufferedImageArray[index], Self.stringUtil.EMPTY_STRING, index);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TCanvasExpandUtil.instance := TCanvasExpandUtil.Create();
  {AB:END}

end.

