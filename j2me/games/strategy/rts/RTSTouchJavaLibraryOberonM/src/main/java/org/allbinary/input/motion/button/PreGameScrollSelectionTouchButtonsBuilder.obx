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
unit PreGameScrollSelectionTouchButtonsBuilder;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, LogUtil, BaseTouchInput;

type
  {AB:TYPES}
  TPreGameScrollSelectionTouchButtonsBuilder = class(TBaseTouchInput)
  public
    logUtil: TLogUtil;
    procedure InitFields;
    constructor Create;
        function getList: TBasicArrayList; override;
  end;

implementation
uses
  TouchButtonLocationHelper, CommonButtons, BasicTouchButtonCellPositionFactory, BasicTouchInputFactory, TouchButtonStrafeLeftResource, TouchButton, TouchButtonStrafeRightResource, TouchButtonStartResource, BasicArrayListD, BasicArrayListUtil;


{AB:CODE}

procedure TPreGameScrollSelectionTouchButtonsBuilder.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

constructor TPreGameScrollSelectionTouchButtonsBuilder.Create;
begin
  inherited Create;
  InitFields;
end;
    

function TPreGameScrollSelectionTouchButtonsBuilder.getList: TBasicArrayList;
var
  list: TBasicArrayList;
  touchButtonLocationHelper_: TTouchButtonLocationHelper;
  commonButtons_: TCommonButtons;
  basicTouchButtonCellPositionFactory_: TBasicTouchButtonCellPositionFactory;
  LEFT: TTouchButton;
  RIGHT: TTouchButton;
  START: TTouchButton;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.GET_LIST);
            list := TBasicArrayListD.Create();
            touchButtonLocationHelper_ := TTouchButtonLocationHelper.Create();
            commonButtons_ := TCommonButtons.getInstance();
            basicTouchButtonCellPositionFactory_ := TBasicTouchButtonCellPositionFactory.Create();
            LEFT := TTouchButton.createButton(TBasicTouchInputFactory.getInstance().LEFT, TTouchButtonStrafeLeftResource.getInstance(), commonButtons_.NORMAL_BUTTON, basicTouchButtonCellPositionFactory_.TOP_LEFT, touchButtonLocationHelper_.getColumnsRemainderHalf(), touchButtonLocationHelper_.getRowsRemainderHalf());
            RIGHT := TTouchButton.createButton(TBasicTouchInputFactory.getInstance().RIGHT, TTouchButtonStrafeRightResource.getInstance(), commonButtons_.NORMAL_BUTTON, basicTouchButtonCellPositionFactory_.TOP_RIGHT, touchButtonLocationHelper_.getColumnsRemainderHalf(), touchButtonLocationHelper_.getRowsRemainderHalf());
            START := TTouchButton.createButton(TBasicTouchInputFactory.getInstance().SPECIAL_BUTTON_FIVE, TTouchButtonStartResource.getInstance(), commonButtons_.NORMAL_BUTTON, basicTouchButtonCellPositionFactory_.BOTTOM_RIGHT, touchButtonLocationHelper_.getColumnsRemainderHalf(), touchButtonLocationHelper_.getRowsRemainderHalf());
            list.add(TJava.Box(LEFT));
            list.add(TJava.Box(RIGHT));
            list.add(TJava.Box(START));
            Exit(list);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.GET_LIST, TJava.Box(e));
            Exit(TBasicArrayListUtil.getInstance().getImmutableInstance());
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

