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
// package org.allbinary.game.displayable.canvas
unit PreGameSelectorPaintable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, CanvasDrawLineString, InitUpdatePaintable, PreGameScrollSelectionForm;

type
  {AB:TYPES}
  TPreGameSelectorPaintable = class(TInitUpdatePaintable)
  public
    title: string;
    canvasDrawLineString: TCanvasDrawLineString;
    preGameScrollSelectionForm: TPreGameScrollSelectionForm;
    procedure InitFields;
        constructor Create(title: string; preGameScrollSelectionForm_: TPreGameScrollSelectionForm);
        procedure update; override;
        procedure paint(graphics_: TGraphics); override;
        function getPreGameSelectionForm: TPreGameScrollSelectionForm; virtual;
  end;

implementation
uses
  BasicColorFactory, DisplayInfoSingleton;


{AB:CODE}

procedure TPreGameSelectorPaintable.InitFields;
begin
  
  
  
end;
    

constructor TPreGameSelectorPaintable.Create(title: string; preGameScrollSelectionForm_: TPreGameScrollSelectionForm);
var
  displayInfo: TDisplayInfoSingleton;
begin
    inherited Create;
    InitFields;
        Self.title := title;
        displayInfo := TDisplayInfoSingleton.getInstance();
        Self.canvasDrawLineString := TCanvasDrawLineString.Create(displayInfo.getLastHalfWidth(), 0);
        Self.preGameScrollSelectionForm := preGameScrollSelectionForm_;
end;
    

procedure TPreGameSelectorPaintable.update;
var
  displayInfo: TDisplayInfoSingleton;
begin
        displayInfo := TDisplayInfoSingleton.getInstance();
        Self.canvasDrawLineString := TCanvasDrawLineString.Create(displayInfo.getLastHalfWidth(), 0);
end;
    

procedure TPreGameSelectorPaintable.paint(graphics_: TGraphics);
begin
        graphics_.setColor(TBasicColorFactory.getInstance().WHITE.intValue());
        Self.canvasDrawLineString.paint(graphics_, Self.title, 0);
        Self.getPreGameSelectionForm().paint(graphics_);
end;
    

function TPreGameSelectorPaintable.getPreGameSelectionForm: TPreGameScrollSelectionForm;
begin
        Exit(Self.preGameScrollSelectionForm);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

