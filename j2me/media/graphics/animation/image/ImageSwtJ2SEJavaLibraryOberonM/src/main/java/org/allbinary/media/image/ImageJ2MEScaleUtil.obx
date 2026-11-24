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
unit ImageJ2MEScaleUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image;

type
  {AB:TYPES}
  TImageJ2MEScaleUtil = class(TObject)
  public
    class var instance: TImageJ2MEScaleUtil;
        class function getInstance: TImageJ2MEScaleUtil; static;
        constructor Create;
        function scaleArray(images: TArray<TImage>; width: Integer; height: Integer): TArray<TImage>; virtual;
        function scale(image_: TImage; width: Integer; height: Integer): TImage; virtual;
  end;

implementation
uses
  ImageCopyUtil;


{AB:CODE}
    

class function TImageJ2MEScaleUtil.getInstance: TImageJ2MEScaleUtil;
begin
        Exit(TImageJ2MEScaleUtil.instance);
end;
    

constructor TImageJ2MEScaleUtil.Create;
begin
    inherited Create;
end;
    

// throws Exception
function TImageJ2MEScaleUtil.scaleArray(images: TArray<TImage>; width: Integer; height: Integer): TArray<TImage>;
var
  scaledImages: TArray<TImage>;
  index: Integer;
begin
        scaledImages := TJava.NewArray<TImage>(System.Length(images));
        index := System.Length(images);
        while (TJava.PreDec(index)) >= (0) do begin
            scaledImages[index] := Self.scale(images[index], width, height);
        end;
        Exit(scaledImages);
end;
    

// throws Exception
function TImageJ2MEScaleUtil.scale(image_: TImage; width: Integer; height: Integer): TImage;
var
  scaledImage: TImage;
begin
        scaledImage := TImageCopyUtil.getInstance().createImageWH(image_, width, height, True);
        Exit(scaledImage);
end;

initialization
  {AB:INITIALIZATION}
  TImageJ2MEScaleUtil.instance := TImageJ2MEScaleUtil.Create();
  {AB:END}

end.

