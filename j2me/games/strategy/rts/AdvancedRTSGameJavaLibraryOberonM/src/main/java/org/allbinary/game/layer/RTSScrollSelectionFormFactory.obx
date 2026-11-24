{
 
  AllBinary Open License Version 1 
  Copyright (c) 2006 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer
unit RTSScrollSelectionFormFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ABCustomItem, ScrollSelectionForm;

type
  {AB:TYPES}
  TRTSScrollSelectionFormFactory = class(TObject)
  public
    constructor Create;
        class function getInstance(formLabel: string; items: TArray<TABCustomItem>): TScrollSelectionForm; static;
  end;

implementation
uses
  PointFactory, Rectangle, BasicColorFactory, DisplayInfoSingleton, FormTypeFactory, MultipleScrollSelectionHorizontalForm, CommonButtons, TouchButtonLocationHelper;


{AB:CODE}

constructor TRTSScrollSelectionFormFactory.Create;
begin
  inherited Create;
end;
    

// throws Exception
class function TRTSScrollSelectionFormFactory.getInstance(formLabel: string; items: TArray<TABCustomItem>): TScrollSelectionForm;
var
  basicColorFactory_: TBasicColorFactory;
  touchButtonLocationHelper_: TTouchButtonLocationHelper;
  displayInfo: TDisplayInfoSingleton;
  menuX: Integer;
  width: Integer;
  menuRectangle: TRectangle;
begin
        basicColorFactory_ := TBasicColorFactory.getInstance();
        touchButtonLocationHelper_ := TTouchButtonLocationHelper.Create();
        displayInfo := TDisplayInfoSingleton.getInstance();
        menuX := (TCommonButtons.getInstance().STANDARD_BUTTON_SIZE) + (touchButtonLocationHelper_.getColumnsRemainderHalf());
        width := (displayInfo.getLastWidth()) - (((menuX) * (2)));
        menuRectangle := TRectangle.Create(TPointFactory.getInstance().createXY(menuX, 16), width, TCommonButtons.getInstance().STANDARD_BUTTON_SIZE);
        Exit(TMultipleScrollSelectionHorizontalForm.createForm(formLabel, items, menuRectangle, TFormTypeFactory.getInstance().HORIZONTAL_FORM, 0, basicColorFactory_.BLACK, basicColorFactory_.WHITE));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

