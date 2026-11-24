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
unit MapSelectionGameInputProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, Processor, AllBinaryGameCanvas, PreGameSelectorPaintable, AllBinaryLayerManager, LogUtil, MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface, ABRunnable, TimeDelayHelper, PlayerGameInput, GameInputProcessorInterface, PlayerGameInputCompositeInterface, GameInputInterface, NamedInterface;

type
  {AB:TYPES}
  TMapSelectionRunnable = class(TABRunnable)
  public
    inputProcessor: TMapSelectionGameInputProcessor;
    procedure InitFields;
        constructor Create(inputProcessor: TMapSelectionGameInputProcessor);
        procedure run; override;
  end;
  TMapSelectionGameInputProcessor = class(TProcessor, IGameInputProcessorInterface, IPlayerGameInputCompositeInterface, IGameInputInterface, INamedInterface)
  public
    logUtil: TLogUtil;
    gameCanvas: TAllBinaryGameCanvas;
    raceTrackGeographicMapInterfaceFactoryInterface: IMultiLevelRaceTrackGeographicMapInterfaceFactoryInterface;
    preGameSelectorPaintable: TPreGameSelectorPaintable;
    inputTimeHelper: TTimeDelayHelper;
    playerGameInput: TPlayerGameInput;
    lockedIndex: Integer;
    abRunnable: TABRunnable;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(gameCanvas: TAllBinaryGameCanvas; raceTrackGeographicMapInterfaceFactoryInterface: IMultiLevelRaceTrackGeographicMapInterfaceFactoryInterface; mapSelectorPaintable: TPreGameSelectorPaintable; lockedIndex: Integer);
        procedure process; virtual;
        procedure onInput(list: TBasicArrayList); virtual;
        procedure processInput(layerManager: TAllBinaryLayerManager); virtual;
        procedure initInputProcessors; virtual;
        function getName: string; virtual;
        function getPlayerGameInput: TPlayerGameInput; virtual;
  end;

implementation
uses
  GameInputProcessorComposite, Canvas, LockedFeatureNotificationUtil, LockedUtil, GameKeyEventHandler, GameKeyEventUtil, CommonStrings, SecondaryPlayerQueueFactory, SelectSound, ThreadObjectUtil;


{AB:CODE}

procedure TMapSelectionRunnable.InitFields;
begin
  
end;
    

    constructor TMapSelectionRunnable.Create(inputProcessor: TMapSelectionGameInputProcessor);
begin
        inherited Create;
        InitFields;
            Self.inputProcessor := inputProcessor;
end;
    

    procedure TMapSelectionRunnable.run;
var
  track: Integer;
  wave: Integer;
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
begin
            try
                Self.setRunning(True);
                TSecondaryPlayerQueueFactory.getInstance().add(TSelectSound.getInstance());
                track := (Self.inputProcessor.preGameSelectorPaintable.getPreGameSelectionForm().getSelectedIndex()) + (1);
                wave := Self.inputProcessor.raceTrackGeographicMapInterfaceFactoryInterface.getFirstWaveWithTrack(track);
                Self.inputProcessor.gameCanvas.getLayerManager().getGameInfo().setCurrentLevel(wave);
                Self.inputProcessor.gameCanvas.buildGameInit(False);
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

procedure TMapSelectionGameInputProcessor.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
  
  Self.inputTimeHelper := TTimeDelayHelper.Create(650);
  
  
  Self.abRunnable := TMapSelectionRunnable.Create(Self);
end;

function TMapSelectionGameInputProcessor.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TMapSelectionGameInputProcessor.Create(gameCanvas: TAllBinaryGameCanvas; raceTrackGeographicMapInterfaceFactoryInterface: IMultiLevelRaceTrackGeographicMapInterfaceFactoryInterface; mapSelectorPaintable: TPreGameSelectorPaintable; lockedIndex: Integer);
begin
    inherited Create;
    InitFields;
        Self.gameCanvas := gameCanvas;
        Self.raceTrackGeographicMapInterfaceFactoryInterface := raceTrackGeographicMapInterfaceFactoryInterface;
        Self.preGameSelectorPaintable := mapSelectorPaintable;
        Self.playerGameInput := TGameInputProcessorComposite.Create('Map Selection', Self);
        Self.lockedIndex := lockedIndex;
end;
    

// throws Exception
procedure TMapSelectionGameInputProcessor.process;
begin
        Self.getPlayerGameInput().update();
end;
    

// throws Exception
procedure TMapSelectionGameInputProcessor.onInput(list: TBasicArrayList);
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
                    Self.preGameSelectorPaintable.getPreGameSelectionForm().processInputKey(key);
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
            list.clear();
        end;
end;
    

// throws Exception
procedure TMapSelectionGameInputProcessor.processInput(layerManager: TAllBinaryLayerManager);
begin
end;
    

procedure TMapSelectionGameInputProcessor.initInputProcessors;
begin
end;
    

function TMapSelectionGameInputProcessor.getName: string;
begin
        Exit(Self.toString());
end;
    

function TMapSelectionGameInputProcessor.getPlayerGameInput: TPlayerGameInput;
begin
        Exit(Self.playerGameInput);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

