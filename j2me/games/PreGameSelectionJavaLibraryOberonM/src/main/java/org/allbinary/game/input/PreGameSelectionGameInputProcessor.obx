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
// package org.allbinary.game.input
unit PreGameSelectionGameInputProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, Processor, AllBinaryGameCanvas, PreGameSelectorPaintable, GameState, AllBinaryLayerManager, LogUtil, ABRunnable, TimeDelayHelper, PlayerGameInput, GameInputProcessorInterface, PlayerGameInputCompositeInterface, GameInputInterface, NamedInterface;

type
  {AB:TYPES}
  TPreGameSelectionRunnable = class(TABRunnable)
  public
    inputProcessor: TPreGameSelectionGameInputProcessor;
    procedure InitFields;
        constructor Create(inputProcessor: TPreGameSelectionGameInputProcessor);
        procedure run; override;
  end;
  TPreGameSelectionGameInputProcessor = class(TProcessor, IGameInputProcessorInterface, IPlayerGameInputCompositeInterface, IGameInputInterface, INamedInterface)
  public
    logUtil: TLogUtil;
    gameCanvas: TAllBinaryGameCanvas;
    preGameSelectorPaintable: TPreGameSelectorPaintable;
    inputTimeHelper: TTimeDelayHelper;
    nextGameState: TGameState;
    playerGameInput: TPlayerGameInput;
    lockedIndex: Integer;
    abRunnable: TABRunnable;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(gameCanvas: TAllBinaryGameCanvas; preGameSelectorPaintable_: TPreGameSelectorPaintable; nextGameState: TGameState; lockedIndex: Integer);
        procedure process; virtual;
        procedure onInput(list: TBasicArrayList); virtual;
        function getPreGameSelectorPaintable: TPreGameSelectorPaintable; virtual;
        procedure processInput(layerManager: TAllBinaryLayerManager); virtual;
        procedure initInputProcessors; virtual;
        function getName: string; virtual;
        function getPlayerGameInput: TPlayerGameInput; virtual;
  end;

implementation
uses
  GameInputProcessorComposite, Canvas, LockedFeatureNotificationUtil, LockedUtil, GameKeyEventHandler, GameKeyEventUtil, CommonStrings, SecondaryPlayerQueueFactory, SelectSound, ThreadObjectUtil;


{AB:CODE}

procedure TPreGameSelectionRunnable.InitFields;
begin
  
end;
    

    constructor TPreGameSelectionRunnable.Create(inputProcessor: TPreGameSelectionGameInputProcessor);
begin
        inherited Create;
        InitFields;
            Self.inputProcessor := inputProcessor;
end;
    

    procedure TPreGameSelectionRunnable.run;
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
begin
            try
                Self.setRunning(True);
                TSecondaryPlayerQueueFactory.getInstance().add(TSelectSound.getInstance());
                Self.inputProcessor.gameCanvas.setGameState(Self.inputProcessor.nextGameState);
                TGameKeyEventHandler.getInstance().removeListener(Self.inputProcessor.getPlayerGameInput());
                Self.setRunning(False);
            except
                on e: SysUtils.Exception do begin
                Self.setRunning(False);
                logUtil_ := TLogUtil.getInstance();
                commonStrings_ := TCommonStrings.getInstance();
                logUtil_.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.RUN, TJava.Box(e));
                end;
            end;
end;

procedure TPreGameSelectionGameInputProcessor.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  Self.inputTimeHelper := TTimeDelayHelper.Create(650);
  
  
  
  Self.abRunnable := TPreGameSelectionRunnable.Create(Self);
end;

function TPreGameSelectionGameInputProcessor.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TPreGameSelectionGameInputProcessor.Create(gameCanvas: TAllBinaryGameCanvas; preGameSelectorPaintable_: TPreGameSelectorPaintable; nextGameState: TGameState; lockedIndex: Integer);
begin
    inherited Create;
    InitFields;
        Self.gameCanvas := gameCanvas;
        Self.preGameSelectorPaintable := preGameSelectorPaintable_;
        Self.nextGameState := nextGameState;
        Self.playerGameInput := TGameInputProcessorComposite.Create('Pre Game Selection', Self);
        Self.lockedIndex := lockedIndex;
end;
    

// throws Exception
procedure TPreGameSelectionGameInputProcessor.process;
begin
        Self.getPlayerGameInput().update();
end;
    

// throws Exception
procedure TPreGameSelectionGameInputProcessor.onInput(list: TBasicArrayList);
var
  size: Integer;
  anyType: TObject;
  key: Integer;
  selectedIndex: Integer;
  index: Integer;
begin
        size := list.size();
        for index := 0 to size - 1 do begin
            anyType := TJava.Box(list.get(index));
            key := TGameKeyEventUtil.getKey(TJava.Box(anyType));
            if ((((key) = (TCanvas.LEFT)) or ((key) = (TCanvas.RIGHT))) or ((key) = (TCanvas.UP))) or ((key) = (TCanvas.DOWN)) then begin
                if Self.inputTimeHelper.isTimeTNT() then begin
                    TSecondaryPlayerQueueFactory.getInstance().add(TSelectSound.getInstance());
                    Self.getPreGameSelectorPaintable().getPreGameSelectionForm().processInputKey(key);
                    Break;
                end;
            end else if (key) = (TCanvas.KEY_NUM0) then begin
                selectedIndex := Self.preGameSelectorPaintable.getPreGameSelectionForm().getSelectedIndex();
                if ((selectedIndex) < (Self.lockedIndex)) or (not (TLockedUtil.getInstance().isLocked())) then begin
                    if not (Self.abRunnable.isRunning()) then begin
                        Self.abRunnable.setRunning(True);
                        TThreadObjectUtil.getInstance().processThread(Self.abRunnable);
                    end;
                    Break;
                end else begin
                    TLockedFeatureNotificationUtil.getInstance().fire();
                end;
            end;
        end;
        list.clear();
end;
    

function TPreGameSelectionGameInputProcessor.getPreGameSelectorPaintable: TPreGameSelectorPaintable;
begin
        Exit(Self.preGameSelectorPaintable);
end;
    

// throws Exception
procedure TPreGameSelectionGameInputProcessor.processInput(layerManager: TAllBinaryLayerManager);
begin
end;
    

procedure TPreGameSelectionGameInputProcessor.initInputProcessors;
begin
end;
    

function TPreGameSelectionGameInputProcessor.getName: string;
begin
        Exit(Self.toString());
end;
    

function TPreGameSelectionGameInputProcessor.getPlayerGameInput: TPlayerGameInput;
begin
        Exit(Self.playerGameInput);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

