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
unit AndroidImageUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Bitmap, Matrix, Paint, Image;

type
  {AB:TYPES}
  TAndroidImageUtil = class(TObject)
  public
    class var instance: TAndroidImageUtil;
    constructor Create;
        class function getInstance: TAndroidImageUtil; static;
        procedure paintBitmap(bitmap_: TBitmap; originalBitmap: TBitmap; paint_: TPaint); virtual;
        procedure paint_(image_: TImage; originalImage: TImage; paint_: TPaint); virtual;
        procedure rotate(image_: TImage; originalImage: TImage; matrix_: TMatrix; paint_: TPaint); virtual;
  end;

implementation
uses
  Canvas, Color, AndroidImageInterface;


{AB:CODE}

constructor TAndroidImageUtil.Create;
begin
  inherited Create;
end;
    

class function TAndroidImageUtil.getInstance: TAndroidImageUtil;
begin
        Exit(TAndroidImageUtil.instance);
end;
    

procedure TAndroidImageUtil.paintBitmap(bitmap_: TBitmap; originalBitmap: TBitmap; paint_: TPaint);
var
  canvas_: TCanvas;
begin
        bitmap_.eraseColor(TColor.TRANSPARENT);
        canvas_ := TCanvas.Create();
        canvas_.setBitmap(bitmap_);
        canvas_.drawBitmap(originalBitmap, 0.0, 0.0, paint_);
end;
    

procedure TAndroidImageUtil.paint_(image_: TImage; originalImage: TImage; paint_: TPaint);
var
  androidImage: IAndroidImageInterface;
  canvas_: TCanvas;
  originalAndroidImage: IAndroidImageInterface;
begin
        androidImage := (TJava.ToObject(image_) as IAndroidImageInterface);
        androidImage.getBitmap().eraseColor(TColor.TRANSPARENT);
        canvas_ := androidImage.getCanvas();
        originalAndroidImage := (TJava.ToObject(originalImage) as IAndroidImageInterface);
        canvas_.drawBitmap(originalAndroidImage.getBitmap(), 0.0, 0.0, paint_);
end;
    

procedure TAndroidImageUtil.rotate(image_: TImage; originalImage: TImage; matrix_: TMatrix; paint_: TPaint);
var
  androidImage: IAndroidImageInterface;
  canvas_: TCanvas;
  originalAndroidImage: IAndroidImageInterface;
begin
        androidImage := (TJava.ToObject(image_) as IAndroidImageInterface);
        androidImage.getBitmap().eraseColor(TColor.TRANSPARENT);
        canvas_ := androidImage.getCanvas();
        canvas_.concat(matrix_);
        originalAndroidImage := (TJava.ToObject(originalImage) as IAndroidImageInterface);
        canvas_.drawBitmap(originalAndroidImage.getBitmap(), 0.0, 0.0, paint_);
end;

initialization
  {AB:INITIALIZATION}
  TAndroidImageUtil.instance := TAndroidImageUtil.Create();
  {AB:END}

end.

