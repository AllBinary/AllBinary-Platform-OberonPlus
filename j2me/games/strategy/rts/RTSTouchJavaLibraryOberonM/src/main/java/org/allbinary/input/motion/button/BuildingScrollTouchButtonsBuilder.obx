{
 
  AllBinary Open License Version 1 
  Copyright (c) 2007 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.input.motion.button
unit BuildingScrollTouchButtonsBuilder;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, LogUtil, BaseTouchInput;

type
  {AB:TYPES}
  TBuildingScrollTouchButtonsBuilder = class(TBaseTouchInput)
  public
    logUtil: TLogUtil;
    procedure InitFields;
    constructor Create;
        function getList: TBasicArrayList; override;
  end;

implementation
uses
  TouchButtonLocationHelper, CommonButtons, BasicTouchButtonCellPositionFactory, BasicTouchInputFactory, TouchButtonStrafeLeftResource, TouchButton, TouchButtonStrafeRightResource, BasicArrayListD, BasicArrayListUtil;


{AB:CODE}

procedure TBuildingScrollTouchButtonsBuilder.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

constructor TBuildingScrollTouchButtonsBuilder.Create;
begin
  inherited Create;
  InitFields;
end;
    

function TBuildingScrollTouchButtonsBuilder.getList: TBasicArrayList;
var
  list: TBasicArrayList;
  touchButtonLocationHelper_: TTouchButtonLocationHelper;
  commonButtons_: TCommonButtons;
  basicTouchButtonCellPositionFactory_: TBasicTouchButtonCellPositionFactory;
  LEFT: TTouchButton;
  RIGHT: TTouchButton;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
            list := TBasicArrayListD.Create();
            touchButtonLocationHelper_ := TTouchButtonLocationHelper.Create();
            commonButtons_ := TCommonButtons.getInstance();
            basicTouchButtonCellPositionFactory_ := TBasicTouchButtonCellPositionFactory.Create();
            LEFT := TTouchButton.createButton(TBasicTouchInputFactory.getInstance().LEFT, TTouchButtonStrafeLeftResource.getInstance(), commonButtons_.NORMAL_BUTTON, basicTouchButtonCellPositionFactory_.TOP_LEFT, touchButtonLocationHelper_.getColumnsRemainderHalf(), touchButtonLocationHelper_.getRowsRemainderHalf());
            RIGHT := TTouchButton.createButton(TBasicTouchInputFactory.getInstance().RIGHT, TTouchButtonStrafeRightResource.getInstance(), commonButtons_.NORMAL_BUTTON, basicTouchButtonCellPositionFactory_.TOP_RIGHT, touchButtonLocationHelper_.getColumnsRemainderHalf(), touchButtonLocationHelper_.getRowsRemainderHalf());
            list.add(TJava.Box(LEFT));
            list.add(TJava.Box(RIGHT));
            Exit(list);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_, TJava.Box(e));
            Exit(TBasicArrayListUtil.getInstance().getImmutableInstance());
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

