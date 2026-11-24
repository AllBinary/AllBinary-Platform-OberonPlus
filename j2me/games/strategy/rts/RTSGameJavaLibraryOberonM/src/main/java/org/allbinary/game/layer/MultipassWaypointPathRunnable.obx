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
unit MultipassWaypointPathRunnable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ARunnable, LogUtil, MultipassState, BasicArrayList, BasicArrayListUtil, WaypointPathRunnableBase;

type
  {AB:TYPES}
  TFirstRunnable = class(TARunnable)
  public
    multipassWaypointPathRunnable: TMultipassWaypointPathRunnable;
    procedure InitFields;
        constructor Create(multipassWaypointPathRunnable_: TMultipassWaypointPathRunnable);
        procedure run; override;
  end;
  //     private boolean first = true;
  TSecondRunnable = class(TARunnable)
  public
    multipassWaypointPathRunnable: TMultipassWaypointPathRunnable;
    procedure InitFields;
        constructor Create(multipassWaypointPathRunnable_: TMultipassWaypointPathRunnable);
        procedure run; override;
  end;
  TEndRunnable = class(TARunnable)
  public
    multipassWaypointPathRunnable: TMultipassWaypointPathRunnable;
    procedure InitFields;
        constructor Create(multipassWaypointPathRunnable_: TMultipassWaypointPathRunnable);
        procedure run; override;
  end;
  TMultipassWaypointPathRunnable = class(TWaypointPathRunnableBase)
  public
    logUtil: TLogUtil;
    basicArrayListUtil: TBasicArrayListUtil;
    multipassState: TMultipassState;
    done: Boolean;
    list: TBasicArrayList;
    pathFindingInfo: TObject;
    FIRST_RUNNABLE: IRunnable;
    SECOND_RUNNABLE: IRunnable;
    END_RUNNABLE: IRunnable;
    ALREADY_ENDED_RUNNABLE: IRunnable;
    currentPassRunnable: IRunnable;
    procedure InitFields;
        constructor Create;
        procedure setRunning(isRunning: Boolean); override;
        procedure run; override;
        procedure reset2;
        procedure finish;
        function isDone: Boolean; override;
        procedure reset; override;
        procedure processFirstRunnable;
        procedure processSecondRunnable;
        procedure processEndRunnable;
  end;

implementation
uses
  WaypointBehaviorBase, NullUtil, CommonStrings, GeographicMapCellPosition, PathFindingInfo;


{AB:CODE}

procedure TFirstRunnable.InitFields;
begin
  
end;
    

    constructor TFirstRunnable.Create(multipassWaypointPathRunnable_: TMultipassWaypointPathRunnable);
begin
        inherited Create;
        InitFields;
            Self.multipassWaypointPathRunnable := multipassWaypointPathRunnable_;
end;
    

    procedure TFirstRunnable.run;
begin
            Self.multipassWaypointPathRunnable.processFirstRunnable();
end;

procedure TSecondRunnable.InitFields;
begin
  
end;
    

    constructor TSecondRunnable.Create(multipassWaypointPathRunnable_: TMultipassWaypointPathRunnable);
begin
        inherited Create;
        InitFields;
            Self.multipassWaypointPathRunnable := multipassWaypointPathRunnable_;
end;
    

    procedure TSecondRunnable.run;
begin
            Self.multipassWaypointPathRunnable.processSecondRunnable();
end;

procedure TEndRunnable.InitFields;
begin
  
end;
    

    constructor TEndRunnable.Create(multipassWaypointPathRunnable_: TMultipassWaypointPathRunnable);
begin
        inherited Create;
        InitFields;
            Self.multipassWaypointPathRunnable := multipassWaypointPathRunnable_;
end;
    

    procedure TEndRunnable.run;
begin
            Self.multipassWaypointPathRunnable.processEndRunnable();
end;

procedure TMultipassWaypointPathRunnable.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.basicArrayListUtil := TBasicArrayListUtil.getInstance();
  Self.multipassState := TMultipassState.Create();
  Self.done := False;
  Self.list := Self.basicArrayListUtil.getImmutableInstance();
  Self.pathFindingInfo := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  Self.FIRST_RUNNABLE := TFirstRunnable.Create(Self);
  Self.SECOND_RUNNABLE := TSecondRunnable.Create(Self);
  Self.END_RUNNABLE := TEndRunnable.Create(Self);
  Self.ALREADY_ENDED_RUNNABLE := TARunnable.Create() (* Java anonymous class body: implement it as a named class
        

    procedure T.run;
begin
            raise SysUtils.Exception.Create('');
end;
*);
  Self.currentPassRunnable := Self.FIRST_RUNNABLE;
end;
    

constructor TMultipassWaypointPathRunnable.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TMultipassWaypointPathRunnable.setRunning(isRunning: Boolean);
begin
        Self.runningP := isRunning;
        if Self.runningP then begin
            Self.reset();
            Self.done := False;
        end;
end;
    

procedure TMultipassWaypointPathRunnable.run;
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
begin
        logUtil_ := TLogUtil.getInstance();
        try
            Self.currentPassRunnable.run();
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            logUtil_.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.RUN, TJava.Box(e));
            Self.setRunning(False);
            end;
        end;
end;
    

procedure TMultipassWaypointPathRunnable.reset2;
begin
        Self.multipassState.step := 0;
        Self.multipassState.iteration := 0;
        Self.multipassState.iteration2 := 0;
        Self.pathFindingInfo := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
end;
    

procedure TMultipassWaypointPathRunnable.finish;
begin
        Self.reset2();
        Self.currentPassRunnable := Self.ALREADY_ENDED_RUNNABLE;
        Self.done := True;
end;
    

function TMultipassWaypointPathRunnable.isDone: Boolean;
begin
        Exit(Self.done);
end;
    

procedure TMultipassWaypointPathRunnable.reset;
begin
        Self.reset2();
        Self.currentPassRunnable := Self.FIRST_RUNNABLE;
        Self.done := False;
end;
    

procedure TMultipassWaypointPathRunnable.processFirstRunnable;
var
  geographicMapCellPosition_: TGeographicMapCellPosition;
  localPathFindingInfo: TPathFindingInfo;
  commonStrings_: TCommonStrings;
begin
        try
            Self.pathFindingLayer.getWaypointRunnableLogHelper().start(Self.pathFindingLayer);
            Self.reset2();
            geographicMapCellPosition_ := Self.pathFindingLayer.getCurrentGeographicMapCellPosition();
            if (geographicMapCellPosition_) = (nil) then begin
                raise SysUtils.Exception.Create('Should never be running here');
            end;
            Self.pathFindingInfo := TJava.Box(Self.targetPathFindingLayer.getWaypointBehavior().getWaypoint().getPathFindingInfo(geographicMapCellPosition_));
            localPathFindingInfo := TPathFindingInfo(TJava.ToObject(Self.pathFindingInfo));
            Self.list := Self.targetPathFindingLayer.getWaypointBehavior().getWaypoint().getPathsList(geographicMapCellPosition_, localPathFindingInfo, Self.multipassState);
            if (Self.list) <> (Self.basicArrayListUtil.getImmutableInstance()) then begin
                Self.END_RUNNABLE.run();
            end else begin
                Self.currentPassRunnable := Self.SECOND_RUNNABLE;
            end;
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.RUN, TJava.Box(e));
            Self.setRunning(False);
            Self.finish();
            end;
        end;
end;
    

procedure TMultipassWaypointPathRunnable.processSecondRunnable;
var
  geographicMapCellPosition_: TGeographicMapCellPosition;
  localPathFindingInfo: TPathFindingInfo;
  commonStrings_: TCommonStrings;
begin
        try
            geographicMapCellPosition_ := Self.pathFindingLayer.getCurrentGeographicMapCellPosition();
            localPathFindingInfo := TPathFindingInfo(TJava.ToObject(Self.pathFindingInfo));
            Self.list := Self.targetPathFindingLayer.getWaypointBehavior().getWaypoint().getPathsList(geographicMapCellPosition_, localPathFindingInfo, Self.multipassState);
            if (Self.list) <> (Self.basicArrayListUtil.getImmutableInstance()) then begin
                Self.END_RUNNABLE.run();
            end;
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.RUN, TJava.Box(e));
            Self.setRunning(False);
            Self.finish();
            end;
        end;
end;
    

procedure TMultipassWaypointPathRunnable.processEndRunnable;
var
  waypointBehavior: TWaypointBehaviorBase;
  commonStrings_: TCommonStrings;
begin
        try
            waypointBehavior := Self.pathFindingLayer.getWaypointBehavior();
            waypointBehavior.setWaypointPathsList(Self.list);
            Self.pathFindingLayer.getWaypointRunnableLogHelper().end_(Self.pathFindingLayer);
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.RUN, TJava.Box(e));
            Self.setRunning(False);
            end;
        end;
        Self.finish();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

