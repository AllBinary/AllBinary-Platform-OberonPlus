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
unit UpgradeDowngradeTouchButtonsBuilder;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, LogUtil, BaseTouchInput;

type
  {AB:TYPES}
  TUpgradeDowngradeTouchButtonsBuilder = class(TBaseTouchInput)
  public
    logUtil: TLogUtil;
    procedure InitFields;
    constructor Create;
        function getList: TBasicArrayList; override;
  end;

implementation
uses
  TouchButtonLocationHelper, BasicTouchButtonCellPositionFactory, CommonButtons, BasicTouchInputFactory, TouchButton, TouchButtonDowngradeResource, TouchButtonUpgradeResource, BasicArrayListD, BasicArrayListUtil, CellPositionFactory;


{AB:CODE}

procedure TUpgradeDowngradeTouchButtonsBuilder.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

constructor TUpgradeDowngradeTouchButtonsBuilder.Create;
begin
  inherited Create;
  InitFields;
end;
    

function TUpgradeDowngradeTouchButtonsBuilder.getList: TBasicArrayList;
var
  list: TBasicArrayList;
  touchButtonLocationHelper_: TTouchButtonLocationHelper;
  cellPositionFactory_: TCellPositionFactory;
  basicTouchButtonCellPositionFactory_: TBasicTouchButtonCellPositionFactory;
  commonButtons_: TCommonButtons;
  UP: TTouchButton;
  DOWN: TTouchButton;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
            list := TBasicArrayListD.Create();
            touchButtonLocationHelper_ := TTouchButtonLocationHelper.Create();
            cellPositionFactory_ := TCellPositionFactory.getInstance();
            basicTouchButtonCellPositionFactory_ := TBasicTouchButtonCellPositionFactory.Create();
            if ((basicTouchButtonCellPositionFactory_.SECOND_FROM_TOP_LEFT) <> (cellPositionFactory_.NONE)) and ((basicTouchButtonCellPositionFactory_.SECOND_FROM_TOP_RIGHT) <> (cellPositionFactory_.NONE)) then begin
                commonButtons_ := TCommonButtons.getInstance();
                UP := TTouchButton.createButton(TBasicTouchInputFactory.getInstance().SPECIAL_BUTTON_TWO, TTouchButtonUpgradeResource.getInstance(), commonButtons_.NORMAL_BUTTON, basicTouchButtonCellPositionFactory_.SECOND_FROM_TOP_LEFT, touchButtonLocationHelper_.getColumnsRemainderHalf(), touchButtonLocationHelper_.getRowsRemainderHalf());
                DOWN := TTouchButton.createButton(TBasicTouchInputFactory.getInstance().SPECIAL_BUTTON_ONE, TTouchButtonDowngradeResource.getInstance(), commonButtons_.NORMAL_BUTTON, basicTouchButtonCellPositionFactory_.SECOND_FROM_TOP_RIGHT, touchButtonLocationHelper_.getColumnsRemainderHalf(), touchButtonLocationHelper_.getRowsRemainderHalf());
                list.add(TJava.Box(UP));
                list.add(TJava.Box(DOWN));
            end;
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

