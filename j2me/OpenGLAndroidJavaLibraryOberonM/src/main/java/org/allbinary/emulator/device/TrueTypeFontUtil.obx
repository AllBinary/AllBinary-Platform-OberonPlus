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
// package org.allbinary.emulator.device
unit TrueTypeFontUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL10, Image, BasicColor, PreResourceImageUtil, OpenGLESImage, LogUtil, TrueTypeFontUtilBase;

type
  {AB:TYPES}
  // TTF
  TTrueTypeFontUtil = class(TTrueTypeFontUtilBase)
  public
    logUtil: TLogUtil;
    preResourceImageUtil: TPreResourceImageUtil;
    realFontSize: Integer;
    fontImage: TOpenGLESImage;
    class var instance: TTrueTypeFontUtil;
    procedure InitFields;
        class function getInstance: TTrueTypeFontUtil; static;
        constructor Create;
        procedure saveFontAtlasAsFile; virtual;
        function getFontBitmapGL(gl: IGL10; filename: string; cellSize: Integer; basicColor_: TBasicColor): TImage; virtual;
        function getFontWidths(filename: string; fontSize: Integer): TArray<Integer>; virtual;
  end;

implementation
uses
  Bitmap, Canvas, Paint, Rect, Typeface, ResourceUtil, CanvasStrings, PreLogUtil, CommonStrings, AndroidImageInterface, AndroidImmutableImage;


{AB:CODE}

procedure TTrueTypeFontUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.preResourceImageUtil := TPreResourceImageUtil.getInstance();
  Self.realFontSize := 18;
  Self.fontImage := TOpenGLESImage.NULL_OPENGL_IMAGE;
end;
    

class function TTrueTypeFontUtil.getInstance: TTrueTypeFontUtil;
begin
        Exit(TTrueTypeFontUtil.instance);
end;
    

constructor TTrueTypeFontUtil.Create;
begin
        inherited Create(1);
        InitFields;
end;
    

procedure TTrueTypeFontUtil.saveFontAtlasAsFile;
var
  commonStrings_: TCommonStrings;
  file_: TFile;
  path: string;
  fos: TFileOutputStream;
  bitmap_: TBitmap;
begin
        try
            commonStrings_ := TCommonStrings.getInstance();
            file_ := TResourceUtil.getInstance().getContext().getFilesDir();
            path := (file_.getAbsolutePath()) + (TCanvasStrings.getInstance().FONT_ATLAS);
            Self.logUtil.putF(path, TJava.Box(Self), commonStrings_.CONSTRUCTOR_);
            fos := TFileOutputStream.Create(path);
            bitmap_ := ((TJava.ToObject(Self.fontImage.openGLBitmap.getImage()) as IAndroidImageInterface)).getBitmap();
            bitmap_.compress(TBitmap.CompressFormat.PNG, 100, fos);
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            TPreLogUtil.putOE(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.EXCEPTION, TJava.Box(e));
            end;
        end;
end;
    

function TTrueTypeFontUtil.getFontBitmapGL(gl: IGL10; filename: string; cellSize: Integer; basicColor_: TBasicColor): TImage;
var
  cellsPerRow2: Integer;
  cellsPerRow3: Integer;
  cellsPerRow4: Integer;
  cellsPerRow5: Integer;
  cellsPerRow6: Integer;
  cellsPerRow7: Integer;
  typeface_: TTypeface;
  textureSize: Integer;
  bitmap_: TBitmap;
  canvas_: TCanvas;
  paint_: TPaint;
  biggestHeight: Integer;
  bounds: TRect;
  x: Integer;
  y: Integer;
  index: Integer;
  image_: TImage;
begin
        if (Self.fontImage) = (TOpenGLESImage.NULL_OPENGL_IMAGE) then begin
            cellsPerRow2 := (Self.CELLS_PER_ROW) * (2);
            cellsPerRow3 := (Self.CELLS_PER_ROW) * (3);
            cellsPerRow4 := (Self.CELLS_PER_ROW) * (4);
            cellsPerRow5 := (Self.CELLS_PER_ROW) * (5);
            cellsPerRow6 := (Self.CELLS_PER_ROW) * (6);
            cellsPerRow7 := (Self.CELLS_PER_ROW) * (7);
            typeface_ := TTypeface.DEFAULT;
            textureSize := Self.getAsTextureSize((Self.CELLS_PER_ROW) * (cellSize));
            bitmap_ := TBitmap.createBitmap(textureSize, textureSize, TBitmap.Config.ARGB_8888);
            canvas_ := TCanvas.Create(bitmap_);
            paint_ := TPaint.Create();
            paint_.setTypeface(typeface_);
            paint_.setTextSize(Self.realFontSize);
            paint_.setAlpha(Integer(Trunc(basicColor_.alpha)));
            paint_.setColor(basicColor_.intValue());
            biggestHeight := 0;
            bounds := TRect.Create();
            
            
            for index := 0 to Self.size - 1 do begin
                Self.characterArray[0] := Self.pattern.charAt(index);
                paint_.getTextBounds(Self.characterArray, 0, 1, bounds);
                Self._characterWidth[index] := bounds.right;
                if ((bounds.bottom) - (bounds.top)) > (biggestHeight) then begin
                    biggestHeight := (bounds.bottom) - (bounds.top);
                end;
                x := (((index) mod (Self.CELLS_PER_ROW))) * (cellSize);
                x := (x) + ((TJava.SignedRightShift(cellSize, 1)));
                x := (x) - ((TJava.SignedRightShift(Self._characterWidth[index], 1)));
                y := 0;
                if (index) >= (Self.CELLS_PER_ROW) then begin
                    y := (y) + (cellSize);
                end;
                if (index) >= (cellsPerRow2) then begin
                    y := (y) + (cellSize);
                end;
                if (index) >= (cellsPerRow3) then begin
                    y := (y) + (cellSize);
                end;
                if (index) >= (cellsPerRow4) then begin
                    y := (y) + (cellSize);
                end;
                if (index) >= (cellsPerRow5) then begin
                    y := (y) + (cellSize);
                end;
                if (index) >= (cellsPerRow6) then begin
                    y := (y) + (cellSize);
                end;
                if (index) >= (cellsPerRow7) then begin
                    y := (y) + (cellSize);
                end;
                y := (y) + (cellSize);
                y := (y) - ((TJava.SignedRightShift(cellSize, 2)));
                canvas_.drawText(Self.characterArray, 0, 1, (x) - (3.0), (y) - (6.0), paint_);
            end;
            canvas_.save();
            image_ := TAndroidImmutableImage.create_(bitmap_);
            Self.fontImage := TOpenGLESImage(TJava.ToObject(Self.preResourceImageUtil.encapsulate(image_)));
            Exit(Self.fontImage);
        end else begin
            Exit(Self.fontImage);
        end;
end;
    

function TTrueTypeFontUtil.getFontWidths(filename: string; fontSize: Integer): TArray<Integer>;
var
  typeface_: TTypeface;
  paint_: TPaint;
  bounds: TRect;
  index: Integer;
begin
        typeface_ := TTypeface.DEFAULT;
        paint_ := TPaint.Create();
        paint_.setTypeface(typeface_);
        paint_.setTextSize(fontSize);
        paint_.setARGB(255, 255, 255, 255);
        bounds := TRect.Create();
        for index := 0 to Self.size - 1 do begin
            Self.characterArray[0] := Self.pattern.charAt(index);
            paint_.getTextBounds(Self.characterArray, 0, 1, bounds);
            if (index) < (Self.lastCapIndex) then begin
                if (Self.characterArray[0]) = ('1') then begin
                    Self._characterWidth[index] := (bounds.right) + (3);
                end else if (((((((Self.characterArray[0]) = ('J')) or ((Self.characterArray[0]) = ('V'))) or ((Self.characterArray[0]) = ('2'))) or ((Self.characterArray[0]) = ('9'))) or ((Self.characterArray[0]) = ('I'))) or ((Self.characterArray[0]) = ('N'))) or ((Self.characterArray[0]) = ('U')) then begin
                    Self._characterWidth[index] := (bounds.right) + (1);
                end else if ((((Self.characterArray[0]) = ('4')) or ((Self.characterArray[0]) = ('C'))) or ((Self.characterArray[0]) = ('E'))) or ((Self.characterArray[0]) = ('O')) then begin
                    Self._characterWidth[index] := (bounds.right) - (2);
                end else if ((((((Self.characterArray[0]) = ('B')) or ((Self.characterArray[0]) = ('D'))) or ((Self.characterArray[0]) = ('G'))) or ((Self.characterArray[0]) = ('H'))) or ((Self.characterArray[0]) = ('T'))) or ((Self.characterArray[0]) = ('W')) then begin
                    Self._characterWidth[index] := (bounds.right) - (3);
                end else if (((Self.characterArray[0]) = ('A')) or ((Self.characterArray[0]) = ('Q'))) or ((Self.characterArray[0]) = ('R')) then begin
                    Self._characterWidth[index] := (bounds.right) - (5);
                end else if (Self.characterArray[0]) = ('M') then begin
                    Self._characterWidth[index] := (bounds.right) - (6);
                end else if (Self.characterArray[0]) = ('m') then begin
                    Self._characterWidth[index] := (bounds.right) - (8);
                end else begin
                    Self._characterWidth[index] := bounds.right;
                end;
            end else begin
                if (Self.characterArray[0]) = (' ') then begin
                    Self._characterWidth[index] := (bounds.right) + (10);
                end else if ((((((Self.characterArray[0]) = ('l')) or ((Self.characterArray[0]) = ('i'))) or ((Self.characterArray[0]) = ('j'))) or ((Self.characterArray[0]) = ('.'))) or ((Self.characterArray[0]) = ('!'))) or ((Self.characterArray[0]) = ('|')) then begin
                    Self._characterWidth[index] := (bounds.right) + (6);
                end else if ((((Self.characterArray[0]) = ('f')) or ((Self.characterArray[0]) = ('t'))) or ((Self.characterArray[0]) = ('u'))) or ((Self.characterArray[0]) = ('v')) then begin
                    Self._characterWidth[index] := (bounds.right) + (1);
                end else if (Self.characterArray[0]) = ('r') then begin
                    Self._characterWidth[index] := (bounds.right) + (2);
                end else if ((((Self.characterArray[0]) = ('a')) or ((Self.characterArray[0]) = ('b'))) or ((Self.characterArray[0]) = ('g'))) or ((Self.characterArray[0]) = ('u')) then begin
                    Self._characterWidth[index] := (bounds.right) - (1);
                end else if ((Self.characterArray[0]) = ('o')) or ((Self.characterArray[0]) = ('e')) then begin
                    Self._characterWidth[index] := (bounds.right) - (2);
                end else if (Self.characterArray[0]) = ('m') then begin
                    Self._characterWidth[index] := (bounds.right) - (7);
                end else begin
                    Self._characterWidth[index] := bounds.right;
                end;
            end;
        end;
        Self._characterWidth[0] := ((TJava.SignedRightShift(fontSize, 1))) - (2);
        Exit(Self._characterWidth);
end;

initialization
  {AB:INITIALIZATION}
  TTrueTypeFontUtil.instance := TTrueTypeFontUtil.Create();
  {AB:END}

end.

