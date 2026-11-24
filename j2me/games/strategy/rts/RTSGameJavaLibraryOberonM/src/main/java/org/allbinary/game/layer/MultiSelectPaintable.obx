{
 
  AllBinary Open License Version 1 
  Copyright (c) 2003 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer
unit MultiSelectPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, BasicArrayList, SelectionHudPaintable;

type
  {AB:TYPES}
  TMultiSelectPaintable = class(TSelectionHudPaintable)
  public
    rootNameList: TBasicArrayList;
    totalCharArray: TArray<WideChar>;
    rootNamesString: string;
    TOTAL: string;
    backgroundColor: Integer;
    totalWidth: Integer;
    textLine2Y: Integer;
    procedure InitFields;
        constructor Create;
        procedure updateMeasurement(graphics_: TGraphics); override;
        procedure update(list: TBasicArrayList); virtual;
        procedure clear;
        procedure paint(graphics_: TGraphics); override;
  end;

implementation
uses
  RTSLayer, Font, BasicArrayListD, CommonSeps, StringMaker, StringUtil, BasicColorFactory, NullUtil;


{AB:CODE}

procedure TMultiSelectPaintable.InitFields;
begin
  Self.rootNameList := TBasicArrayListD.Create();
  Self.totalCharArray := TNullUtil.getInstance().NULL_CHAR_ARRAY;
  Self.rootNamesString := TStringUtil.getInstance().EMPTY_STRING;
  Self.TOTAL := 'Total Selected: ';
  Self.backgroundColor := TBasicColorFactory.getInstance().GREY.intValue();
  
  
end;
    

constructor TMultiSelectPaintable.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TMultiSelectPaintable.updateMeasurement(graphics_: TGraphics);
var
  font_: TFont;
begin
        inherited updateMeasurement(graphics_);
        font_ := graphics_.getFont();
        Self.totalWidth := font_.stringWidth(Self.TOTAL);
        Self.textLine2Y := ((Self.y) + (font_.getHeight()));
end;
    

procedure TMultiSelectPaintable.update(list: TBasicArrayList);
var
  size: Integer;
  rtsLayer_: TRTSLayer;
  index: Integer;
  COMMA_SEP: string;
  stringBuffer: TStringMaker;
  rootName: string;
begin
        Self.clear();
        size := list.size();
        Self.totalCharArray := Self.getPrimitiveLongUtil().getCharArray(size);
        for index := (list.size()) - (1) downto 0 do begin
            rtsLayer_ := TRTSLayer(TJava.ToObject(list.get(index)));
            if not (Self.rootNameList.contains(TJava.Box(rtsLayer_.getRootName()))) then begin
                Self.rootNameList.add(TJava.Box(rtsLayer_.getRootName()));
            end;
        end;
        COMMA_SEP := TCommonSeps.getInstance().COMMA_SEP;
        stringBuffer := TStringMaker.Create();
        for index := (Self.rootNameList.size()) - (1) downto 0 do begin
            rootName := TJava.UnboxString(TJava.ToObject(Self.rootNameList.get(index)));
            stringBuffer.append(rootName);
            if (index) <> (0) then begin
                stringBuffer.append(COMMA_SEP);
            end;
        end;
        Self.rootNamesString := stringBuffer.toString();
end;
    

procedure TMultiSelectPaintable.clear;
begin
        Self.rootNameList.clear();
end;
    

procedure TMultiSelectPaintable.paint(graphics_: TGraphics);
begin
        graphics_.setColor(Self.backgroundColor);
        graphics_.drawRect(Self.getX(), Self.y, Self.getWidth(), Self.getHeight());
        graphics_.setColor(Self.getColor());
        graphics_.drawString(Self.TOTAL, Self.textX, Self.y, 0);
        graphics_.drawChars(Self.totalCharArray, 0, Self.getPrimitiveLongUtil().getCurrentTotalDigits(), (Self.textX) + (Self.totalWidth), Self.y, 0);
        graphics_.drawString(Self.rootNamesString, Self.textX, Self.textLine2Y, 0);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

