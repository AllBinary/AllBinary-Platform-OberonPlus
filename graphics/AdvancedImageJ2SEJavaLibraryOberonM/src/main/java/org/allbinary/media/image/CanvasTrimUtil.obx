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
unit CanvasTrimUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, StringUtil, ImageProcessorInput, ImageProcessedVisitor;

type
  {AB:TYPES}
  TCanvasTrimUtil = class(TObject)
  public
    logUtil: TLogUtil;
    stringUtil: TStringUtil;
    class var instance: TCanvasTrimUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TCanvasTrimUtil; static;
        procedure process(imageProcessorInput_: TImageProcessorInput; cutCanvasFromLeftReduction: Integer; cutCanvasFromTopReduction: Integer; cutCanvasFromRightReduction: Integer; cutCanvasFromBottomReduction: Integer; visitor: TImageProcessedVisitor); virtual;
  end;

implementation

{AB:CODE}

procedure TCanvasTrimUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.stringUtil := TStringUtil.getInstance();
end;

constructor TCanvasTrimUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TCanvasTrimUtil.getInstance: TCanvasTrimUtil;
begin
        Exit(TCanvasTrimUtil.instance);
end;
    

// throws IOException
procedure TCanvasTrimUtil.process(imageProcessorInput_: TImageProcessorInput; cutCanvasFromLeftReduction: Integer; cutCanvasFromTopReduction: Integer; cutCanvasFromRightReduction: Integer; cutCanvasFromBottomReduction: Integer; visitor: TImageProcessedVisitor);
var
  bufferedImageArray: TArray<TBufferedImage>;
  subBufferedImageArray: TArray<TBufferedImage>;
  size: Integer;
  bufferedImage_: TBufferedImage;
  index: Integer;
begin
        bufferedImageArray := imageProcessorInput_.getBufferedImageArray();
        subBufferedImageArray := TJava.NewArray<TBufferedImage>(System.Length(bufferedImageArray));
        size := System.Length(bufferedImageArray);
        
        for index := 0 to size - 1 do begin
            bufferedImage_ := bufferedImageArray[index];
            subBufferedImageArray[index] := bufferedImage_.getSubimage(cutCanvasFromLeftReduction, cutCanvasFromTopReduction, ((bufferedImage_.getWidth()) - (cutCanvasFromLeftReduction)) - (cutCanvasFromRightReduction), ((bufferedImage_.getHeight()) - (cutCanvasFromTopReduction)) - (cutCanvasFromBottomReduction));
            visitor.visit(subBufferedImageArray[index], Self.stringUtil.EMPTY_STRING, index);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TCanvasTrimUtil.instance := TCanvasTrimUtil.Create();
  {AB:END}

end.

