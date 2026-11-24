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
unit SpriteSplitterUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, CommonSeps, CommonStrings, ImageProcessorInput, ImageProcessedVisitor;

type
  {AB:TYPES}
  TSpriteSplitterUtil = class(TObject)
  public
    logUtil: TLogUtil;
    commonSeps: TCommonSeps;
    commonStrings: TCommonStrings;
    ANIMATIONS_LABELS: TArray<string>;
    DIRECTIONAL_ANIMATIONS: string;
    HORIZONTAL_ANIMATIONS: string;
    HORIZONTAL_SPRITE: string;
    ROW_NAME: TArray<string>;
    _ROW: string;
    class var instance: TSpriteSplitterUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TSpriteSplitterUtil; static;
        procedure process(imageProcessorInput_: TImageProcessorInput; totalFrames: Integer; totalAnimations: Integer; widthReduction: Integer; heightReduction: Integer; increaseWidth: Integer; increaseHeight: Integer; spriteType: string; visitor: TImageProcessedVisitor); virtual;
  end;

implementation
uses
  ImageUnifierProperties, ImageUnifierCell, ImageUnifierUtil, ImageUtil, StringMaker;


{AB:CODE}

procedure TSpriteSplitterUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonSeps := TCommonSeps.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.ANIMATIONS_LABELS := TArray<string>.Create('Row Total:', 'Column Total:', 'Column Total:', 'Row Total:', 'Column Total:', 'Row Total:');
  Self.DIRECTIONAL_ANIMATIONS := 'Directional DLRU';
  Self.HORIZONTAL_ANIMATIONS := 'Horizontal Animations';
  Self.HORIZONTAL_SPRITE := 'Horizontal A=R=Y F=C=X';
  Self.ROW_NAME := TArray<string>.Create('idle', 'walk', 'attack', 'defeat');
  Self._ROW := '_row';
end;

constructor TSpriteSplitterUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TSpriteSplitterUtil.getInstance: TSpriteSplitterUtil;
begin
        Exit(TSpriteSplitterUtil.instance);
end;
    

// throws Exception
procedure TSpriteSplitterUtil.process(imageProcessorInput_: TImageProcessorInput; totalFrames: Integer; totalAnimations: Integer; widthReduction: Integer; heightReduction: Integer; increaseWidth: Integer; increaseHeight: Integer; spriteType: string; visitor: TImageProcessedVisitor);
var
  bufferedImage_: TBufferedImage;
  generatedBufferedImageArray: TArray<TArray<TBufferedImage>>;
  bufferedImageArray: TArray<TBufferedImage>;
  totalFrames2: Integer;
  cellHeight: Integer;
  cellWidth: Integer;
  columns: Integer;
  rows: Integer;
  nameEnding: string;
  x: Integer;
  y: Integer;
  index3: Integer;
  index2: Integer;
  imageUnifierProperties_: TImageUnifierProperties;
  imageUnifierCell_: TImageUnifierCell;
  tempBufferedImageArray: TArray<TBufferedImage>;
  generatedBufferedImage: TBufferedImage;
  imageUtil_: TImageUtil;
  index: Integer;
begin
        
        
        bufferedImageArray := imageProcessorInput_.getBufferedImageArray();
        for index := 0 to System.Length(bufferedImageArray) - 1 do begin
            bufferedImage_ := bufferedImageArray[index];
            Self.logUtil.putF(spriteType, TJava.Box(Self), Self.commonStrings.RUN);
            if (spriteType) = (Self.HORIZONTAL_SPRITE) then begin
                cellHeight := (bufferedImage_.getHeight()) div (totalAnimations);
                cellWidth := (bufferedImage_.getWidth()) div (totalFrames);
                columns := totalFrames;
                rows := totalAnimations;
                generatedBufferedImageArray := TJava.NewArray2<TBufferedImage>(rows, columns);
                Self.logUtil.putF('Processing Individual Cells columns: ' + IntToStr(columns) + ' rows: ' + IntToStr(rows), TJava.Box(Self), Self.commonStrings.RUN);
                Self.logUtil.putF('Processing Individual Cells cellHeight: ' + IntToStr(cellHeight) + ' cellWidth: ' + IntToStr(cellWidth), TJava.Box(Self), Self.commonStrings.RUN);
                imageUtil_ := TImageUtil.getInstance();
                nameEnding := nil;
                x := 0;
                y := 0;
                for index2 := 0 to rows - 1 do begin
                    y := (cellHeight) * (index2);
                    for index3 := 0 to columns - 1 do begin
                        x := (cellWidth) * (index3);
                        generatedBufferedImageArray[index2][index3] := bufferedImage_.getSubimage((x) + (widthReduction), (y) + (heightReduction), (cellWidth) - (((widthReduction) * (2))), (cellHeight) - (((heightReduction) * (2))));
                        if ((increaseWidth) <> (0)) or ((increaseHeight) <> (0)) then begin
                            generatedBufferedImageArray[index2][index3] := imageUtil_.createBufferedImageAllowTranslate(generatedBufferedImageArray[index2][index3], (cellWidth) + (increaseWidth), (cellHeight) + (increaseHeight), False, True);
                        end;
                        nameEnding := TStringMaker.Create().appendint(index2).append(Self.commonSeps.UNDERSCORE).appendint(index3).toString();
                        visitor.visit(generatedBufferedImageArray[index2][index3], nameEnding, index);
                    end;
                end;
                Self.logUtil.putF('Processing Rows from Cells', TJava.Box(Self), Self.commonStrings.RUN);
                imageUnifierProperties_ := TImageUnifierProperties.Create();
                imageUnifierProperties_.setRows(IntToStr(1));
                imageUnifierProperties_.setColumns(IntToStr(columns));
                imageUnifierCell_ := TImageUnifierCell.Create(IntToStr((cellWidth) - (((2) * (widthReduction)))), IntToStr((cellHeight) - (((2) * (heightReduction)))));
                imageUnifierProperties_.setImageUnifierCell(imageUnifierCell_);
                for index2 := 0 to rows - 1 do begin
                    y := (cellHeight) * (index2);
                    tempBufferedImageArray := TJava.NewArray<TBufferedImage>(columns);
                    for index3 := 0 to columns - 1 do begin
                        tempBufferedImageArray[index3] := generatedBufferedImageArray[index2][index3];
                        nameEnding := TStringMaker.Create().appendint(index2).append(Self.commonSeps.UNDERSCORE).appendint(1).append(Self._ROW).toString();
                    end;
                    generatedBufferedImage := TImageUnifierUtil.getInstance().getImage(tempBufferedImageArray, imageUnifierProperties_);
                    visitor.visit(generatedBufferedImage, nameEnding, index);
                end;
            end else if (spriteType) = (Self.HORIZONTAL_ANIMATIONS) then begin
            end else if (spriteType) = (Self.DIRECTIONAL_ANIMATIONS) then begin
                totalFrames2 := 4;
                cellHeight := (bufferedImage_.getHeight()) div (totalFrames2);
                cellWidth := (bufferedImage_.getWidth()) div (totalAnimations);
                columns := totalAnimations;
                rows := totalFrames2;
                generatedBufferedImageArray := TJava.NewArray2<TBufferedImage>(rows, columns);
                Self.logUtil.putF('Processing Individual Cells for each Direction', TJava.Box(Self), Self.commonStrings.RUN);
                nameEnding := nil;
                x := 0;
                y := 0;
                for index2 := 0 to rows - 1 do begin
                    y := (cellHeight) * (index2);
                    for index3 := 0 to columns - 1 do begin
                        x := (cellWidth) * (index3);
                        generatedBufferedImageArray[index2][index3] := bufferedImage_.getSubimage((x) + (widthReduction), (y) + (heightReduction), (cellWidth) - (((widthReduction) * (2))), (cellHeight) - (((heightReduction) * (2))));
                        if ((increaseWidth) <> (0)) or ((increaseHeight) <> (0)) then begin
                            generatedBufferedImageArray[index2][index3] := TImageUtil.getInstance().createBufferedImageAllowTranslate(generatedBufferedImageArray[index2][index3], (cellWidth) + (increaseWidth), (cellHeight) + (increaseHeight), False, True);
                        end;
                        nameEnding := TStringMaker.Create().append(Self.commonStrings.DIRECTION_NAME[index2]).append(Self.commonSeps.UNDERSCORE).appendint(index3).toString();
                        visitor.visit(generatedBufferedImageArray[index2][index3], nameEnding, index);
                    end;
                end;
                imageUnifierProperties_ := TImageUnifierProperties.Create();
                imageUnifierProperties_.setRows(IntToStr(1));
                imageUnifierProperties_.setColumns(IntToStr(columns));
                imageUnifierCell_ := TImageUnifierCell.Create((IntToStr((cellWidth) - (((2) * (widthReduction))))) + (increaseWidth), IntToStr(((cellHeight) - (((2) * (heightReduction)))) + (increaseHeight)));
                imageUnifierProperties_.setImageUnifierCell(imageUnifierCell_);
                Self.logUtil.putF('Processing Rows from Cells for each Direction', TJava.Box(Self), Self.commonStrings.RUN);
                for index2 := 0 to rows - 1 do begin
                    y := (cellHeight) * (index2);
                    tempBufferedImageArray := TJava.NewArray<TBufferedImage>(columns);
                    for index3 := 0 to columns - 1 do begin
                        tempBufferedImageArray[index3] := generatedBufferedImageArray[index2][index3];
                        nameEnding := TStringMaker.Create().append(Self.commonStrings.DIRECTION_NAME[index2]).append(Self.commonSeps.UNDERSCORE).appendint(1).append(Self._ROW).toString();
                    end;
                    generatedBufferedImage := TImageUnifierUtil.getInstance().getImage(tempBufferedImageArray, imageUnifierProperties_);
                    visitor.visit(generatedBufferedImage, nameEnding, index);
                end;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  TSpriteSplitterUtil.instance := TSpriteSplitterUtil.Create();
  {AB:END}

end.

