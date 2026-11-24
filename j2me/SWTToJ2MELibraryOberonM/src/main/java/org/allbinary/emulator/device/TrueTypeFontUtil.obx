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
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, GL10, Image, BasicColor, PreResourceImageUtil, OpenGLESImage, TrueTypeFontUtilBase;

type
  {AB:TYPES}
  // TTF
  TTrueTypeFontUtil = class(TTrueTypeFontUtilBase)
  public
    preResourceImageUtil: TPreResourceImageUtil;
    widthFloatArray: TArray<Single>;
    fontImage: TOpenGLESImage;
    widthScale: Single;
    class var instance: TTrueTypeFontUtil;
    procedure InitFields;
        class function getInstance: TTrueTypeFontUtil; static;
        constructor Create;
        function getFontBitmapGL(gl: IGL10; filename: string; cellSize: Integer; basicColor_: TBasicColor): TImage; virtual;
        procedure saveFontAtlasAsFile; virtual;
        function getFontBitmap(filename: string; cellSize: Integer; basicColor_: TBasicColor): TImage; virtual;
        function getFontWidths(filename: string; fontSize: Integer): TArray<Integer>; virtual;
  end;

implementation
uses
  Graphics, SWT, ImageData, ImageLoader, SwtMutableImage, AvianUtil, ResourceUtil, PointFactory, Rectangle, BasicColorFactory, CanvasStrings, OpenGLCapabilities, PreLogUtil, CommonSeps, CommonStrings;


{AB:CODE}

procedure TTrueTypeFontUtil.InitFields;
begin
  Self.preResourceImageUtil := TPreResourceImageUtil.getInstance();
  
  Self.fontImage := TOpenGLESImage.NULL_OPENGL_IMAGE;
  
end;
    

class function TTrueTypeFontUtil.getInstance: TTrueTypeFontUtil;
begin
        Exit(TTrueTypeFontUtil.instance);
end;
    

constructor TTrueTypeFontUtil.Create;
begin
        inherited Create(2);
        InitFields;
        if TAvianUtil.isAvian() then begin
            Self.widthFloatArray := TArray<Single>.Create(1504.0, 967.0, 527.0, 961.0, 957.0, 1087.0, 920.0, 954.0, 973.0, 961.0, 955.0, 1296.0, 1013.0, 1106.0, 1167.0, 815.0, 815.0, 1216.0, 1110.0, 170.0, 520.0, 1056.0, 815.0, 1448.0, 1142.0, 1345.0, 927.0, 1345.0, 1030.0, 920.0, 1096.0, 1119.0, 1219.0, 1841.0, 1166.0, 1147.0, 1005.0, 879.0, 965.0, 792.0, 964.0, 927.0, 753.0, 1034.0, 916.0, 196.0, 469.0, 877.0, 166.0, 1563.0, 916.0, 1007.0, 965.0, 964.0, 631.0, 777.0, 649.0, 917.0, 1026.0, 1548.0, 993.0, 1028.0, 795.0, 241.0, 798.0, 241.0, 905.0, 1477.0, 393.0, 961.0, 961.0, 961.0, 961.0, 555.0, 1029.0, 1010.0, 1378.0, 952.0, 952.0, 952.0, 952.0, 463.0, 463.0, 926.0, 961.0, 491.0, 930.0, 457.0, 457.0, 644.0, 643.0, 326.0, 186.0, 1219.0, 241.0, 1599.0, 961.0, 302.0, 711.0, 961.0, 961.0, 710.0, 141.0, 1504.0, 1504.0, 1504.0, 1504.0, 1504.0, 1504.0, 1504.0, 1504.0);
        end else begin
            Self.widthFloatArray := TArray<Single>.Create(1504.0, 967.0, 527.0, 961.0, 957.0, 1087.0, 920.0, 954.0, 973.0, 961.0, 955.0, 1296.0, 1013.0, 1106.0, 1167.0, 815.0, 815.0, 1216.0, 1110.0, 170.0, 520.0, 1056.0, 815.0, 1448.0, 1142.0, 1345.0, 927.0, 1345.0, 1030.0, 920.0, 1096.0, 1119.0, 1219.0, 1841.0, 1166.0, 1147.0, 1005.0, 879.0, 965.0, 792.0, 964.0, 927.0, 753.0, 1034.0, 916.0, 196.0, 469.0, 877.0, 166.0, 1563.0, 916.0, 1007.0, 965.0, 964.0, 631.0, 777.0, 649.0, 917.0, 1026.0, 1548.0, 993.0, 1028.0, 795.0, 241.0, 798.0, 241.0, 905.0, 1477.0, 393.0, 961.0, 555.0, 1029.0, 1010.0, 1378.0, 952.0, 463.0, 463.0, 926.0, 961.0, 491.0, 930.0, 457.0, 457.0, 644.0, 643.0, 326.0, 186.0, 1219.0, 241.0, 1599.0, 961.0, 302.0, 711.0, 961.0, 961.0, 710.0, 141.0, 1504.0, 1504.0);
        end;
        Self.widthScale := TJava.IfThen<Variant>(((Self.scale) = (2)), 1.2, 1.0);
end;
    

function TTrueTypeFontUtil.getFontBitmapGL(gl: IGL10; filename: string; cellSize: Integer; basicColor_: TBasicColor): TImage;
var
  canvasStrings_: TCanvasStrings;
  openGLCapabilities_: TOpenGLCapabilities;
  FONT_ATLAS_512: string;
  image_: TImage;
  FONT_ATLAS_1024: string;
  commonStrings_: TCommonStrings;
begin
        try
            if (Self.fontImage) = (TOpenGLESImage.NULL_OPENGL_IMAGE) then begin
                canvasStrings_ := TCanvasStrings.getInstance();
                openGLCapabilities_ := TOpenGLCapabilities.getInstance();
                if (openGLCapabilities_.isTextureSizeValid(1024)) and ((Self.scale) = (2)) then begin
                    FONT_ATLAS_1024 := '/font_1024.png';
                    image_ := TImage.createImage(TResourceUtil.getInstance().getResourceAsStream(FONT_ATLAS_1024));
                    image_.setName(canvasStrings_.FONT_ATLAS);
                    Self.fontImage := TOpenGLESImage(TJava.ToObject(Self.preResourceImageUtil.encapsulate(image_)));
                end else if openGLCapabilities_.isTextureSizeValid(512) then begin
                    FONT_ATLAS_512 := '/font_512.png';
                    image_ := TImage.createImage(TResourceUtil.getInstance().getResourceAsStream(FONT_ATLAS_512));
                    image_.setName(canvasStrings_.FONT_ATLAS);
                    Self.fontImage := TOpenGLESImage(TJava.ToObject(Self.preResourceImageUtil.encapsulate(image_)));
                end else begin
                    FONT_ATLAS_512 := '/font_512.png';
                    image_ := TImage.createImage(TResourceUtil.getInstance().getResourceAsStream(FONT_ATLAS_512));
                    image_.setName(canvasStrings_.FONT_ATLAS);
                    Self.fontImage := TOpenGLESImage(TJava.ToObject(Self.preResourceImageUtil.encapsulate(image_)));
                end;
                Exit(Self.fontImage);
            end else begin
                Exit(Self.fontImage);
            end;
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            TPreLogUtil.putOE(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.EXCEPTION, TJava.Box(e));
            raise SysUtils.Exception.Create('');
            end;
        end;
end;
    

procedure TTrueTypeFontUtil.saveFontAtlasAsFile;
var
  image_: TImage;
  imageLoader_: TImageLoader;
  imageData_: TImageData;
begin
        image_ := Self.getFontBitmap(nil, Self.cellSize, TBasicColorFactory.getInstance().WHITE);
        imageLoader_ := TImageLoader.Create();
        imageData_ := (TSwtMutableImage(TJava.ToObject(image_))).image.getImageData();
        imageData_.transparentPixel := imageData_.getPixel(0, 0);
        imageLoader_.data := TArray<TImageData>.Create(imageData_);
        imageLoader_.save((TCommonSeps.getInstance().PERIOD) + (TCanvasStrings.getInstance().FONT_ATLAS), TSWT.IMAGE_PNG);
end;
    

function TTrueTypeFontUtil.getFontBitmap(filename: string; cellSize: Integer; basicColor_: TBasicColor): TImage;
var
  cellsPerRow2: Integer;
  cellsPerRow3: Integer;
  cellsPerRow4: Integer;
  cellsPerRow5: Integer;
  cellsPerRow6: Integer;
  cellsPerRow7: Integer;
  image_: TImage;
  graphics_: TGraphics;
  biggestHeight: Integer;
  bounds: TRectangle;
  x: Integer;
  y: Integer;
  index: Integer;
begin
        cellsPerRow2 := (Self.CELLS_PER_ROW) * (2);
        cellsPerRow3 := (Self.CELLS_PER_ROW) * (3);
        cellsPerRow4 := (Self.CELLS_PER_ROW) * (4);
        cellsPerRow5 := (Self.CELLS_PER_ROW) * (5);
        cellsPerRow6 := (Self.CELLS_PER_ROW) * (6);
        cellsPerRow7 := (Self.CELLS_PER_ROW) * (7);
        image_ := TImage.createImage(Self.textureSize, Self.textureSize);
        graphics_ := image_.getGraphics();
        graphics_.setColor(basicColor_.intValue());
        biggestHeight := 0;
        bounds := TRectangle.Create(TPointFactory.getInstance().createXY(0, 0), cellSize, cellSize);
        
        
        for index := 0 to Self.size - 1 do begin
            Self.characterArray[0] := Self.pattern.charAt(index);
            Self._characterWidth[index] := bounds.getMaxX();
            if ((bounds.getMaxY()) - (bounds.getPoint().getX())) > (biggestHeight) then begin
                biggestHeight := (bounds.getMaxY()) - (bounds.getPoint().getX());
            end;
            x := (((index) mod (Self.CELLS_PER_ROW))) * (cellSize);
            x := (x) + ((TJava.SignedRightShift(cellSize, 1)));
            x := (x) - ((TJava.SignedRightShift(Self._characterWidth[index], 1)));
            y := -(TJava.SignedRightShift(cellSize, 1));
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
            graphics_.drawChar(Self.characterArray[0], x, y, 0);
        end;
        Exit(image_);
end;
    

function TTrueTypeFontUtil.getFontWidths(filename: string; fontSize: Integer): TArray<Integer>;
var
  commonStrings_: TCommonStrings;
  shortPatternIndex: Integer;
  w: Integer;
  index: Integer;
begin
        commonStrings_ := TCommonStrings.getInstance();
        for index := 0 to Self.size - 1 do begin
            Self.characterArray[0] := Self.pattern.charAt(index);
            if (Self.characterArray[0]) = (' ') then begin
                Self._characterWidth[index] := ((fontSize) div (4));
            end else begin
                shortPatternIndex := Self.shortPattern.indexOf(Self.characterArray[0]);
                w := (Integer(Trunc(((Self.widthFloatArray[shortPatternIndex]) / (75.0))))) + (19);
                Self._characterWidth[index] := w;
                if ((Self.characterArray[0]) = ('.')) or ((Self.characterArray[0]) = ('1')) then begin
                    Self._characterWidth[index] := (Self._characterWidth[index]) + (4);
                end;
                if ((Self.characterArray[0]) >= ('a')) and ((Self.characterArray[0]) < ('k')) then begin
                    Self._characterWidth[index] := (Self._characterWidth[index]) - (2);
                end;
                if ((Self.characterArray[0]) >= ('k')) and ((Self.characterArray[0]) < ('v')) then begin
                    Self._characterWidth[index] := (Self._characterWidth[index]) - (4);
                end;
                if ((Self.characterArray[0]) >= ('v')) and ((Self.characterArray[0]) < ('z')) then begin
                    Self._characterWidth[index] := (Self._characterWidth[index]) - (8);
                end;
                if (Self.characterArray[0]) = ('D') then begin
                    Self._characterWidth[index] := (Self._characterWidth[index]) - (4);
                end;
                if ((Self.characterArray[0]) >= ('A')) and ((Self.characterArray[0]) <= ('Z')) then begin
                    Self._characterWidth[index] := (Self._characterWidth[index]) - (2);
                end;
            end;
            Self._characterWidth[index] := (Self._characterWidth[index]) * (Self.widthScale);
        end;
        Exit(Self._characterWidth);
end;

initialization
  {AB:INITIALIZATION}
  TTrueTypeFontUtil.instance := TTrueTypeFontUtil.Create();
  {AB:END}

end.

