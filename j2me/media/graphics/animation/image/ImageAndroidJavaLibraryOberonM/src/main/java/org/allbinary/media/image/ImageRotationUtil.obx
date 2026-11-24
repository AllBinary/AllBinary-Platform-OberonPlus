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
// package org.allbinary.media.image
unit ImageRotationUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Image, Matrix;

type
  {AB:TYPES}
  TImageRotationUtil = class(TObject)
  public
    matrix: TMatrix;
    anchor: Integer;
    class var instance: TImageRotationUtil;
    procedure InitFields;
        class function getInstance: TImageRotationUtil; static;
        constructor Create;
        function createRotatedImage(originalImage: TImage; rotationInDegrees: Integer): TImage; virtual;
  end;

implementation
uses
  ImageCreationUtil, Anchor, Bitmap, Canvas, AndroidImageInterface;


{AB:CODE}

procedure TImageRotationUtil.InitFields;
begin
  Self.matrix := TMatrix.Create();
  Self.anchor := TAnchor.TOP_LEFT;
end;
    

class function TImageRotationUtil.getInstance: TImageRotationUtil;
begin
        Exit(TImageRotationUtil.instance);
end;
    

constructor TImageRotationUtil.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TImageRotationUtil.createRotatedImage(originalImage: TImage; rotationInDegrees: Integer): TImage;
var
  image_: TImage;
  bitmap_: TBitmap;
  width: Integer;
  height: Integer;
  canvas_: TCanvas;
begin
        image_ := TImageCreationUtil.getInstance().createImageWH(originalImage.getWidth(), originalImage.getHeight());
        if image_.isMutable() then begin
            bitmap_ := ((TJava.ToObject(image_) as IAndroidImageInterface)).getBitmap();
            width := bitmap_.getWidth();
            height := bitmap_.getHeight();
            Self.matrix.setRotate(rotationInDegrees, (TJava.SignedRightShift(width, 1)), (TJava.SignedRightShift(height, 1)));
            canvas_ := ((TJava.ToObject(image_) as IAndroidImageInterface)).getCanvas();
            canvas_.concat(Self.matrix);
            image_.getGraphics().drawImage(originalImage, 0, 0, Self.anchor);
            Exit(image_);
        end else begin
            raise SysUtils.Exception.Create('Not Mutable');
        end;
end;

initialization
  {AB:INITIALIZATION}
  TImageRotationUtil.instance := TImageRotationUtil.Create();
  {AB:END}

end.

