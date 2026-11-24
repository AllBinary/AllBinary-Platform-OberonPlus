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
// package org.allbinary.canvas
unit ProfilingRefreshHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, View, AndroidGameStatistics;

type
  {AB:TYPES}
  TProfilingRefreshHelper = class(TAndroidGameStatistics)
  public
    firstTime: Boolean;
    bestFrameProcessingTime: Integer;
    worstFrameProcessingTime: Integer;
    frameProcessingTimeElapsed: Int64;
    class var instance: TProfilingRefreshHelper;
    procedure InitFields;
        class function getInstance: TAndroidGameStatistics; static;
        constructor Create;
        procedure initView(view_: TView); override;
        procedure nextFrame; override;
        function toString: string; override;
  end;

implementation
uses
  StringMaker;


{AB:CODE}

procedure TProfilingRefreshHelper.InitFields;
begin
  Self.firstTime := True;
  
  
  
end;
    

class function TProfilingRefreshHelper.getInstance: TAndroidGameStatistics;
begin
        Exit(TProfilingRefreshHelper.instance);
end;
    

constructor TProfilingRefreshHelper.Create;
begin
    inherited Create;
    InitFields;
end;
    

procedure TProfilingRefreshHelper.initView(view_: TView);
begin
        inherited initView(view_);
        Self.frameProcessingTimeElapsed := Self.getTimeDelayHelper().getStartTime();
        Self.bestFrameProcessingTime := High(Integer);
        Self.worstFrameProcessingTime := 0;
end;
    

procedure TProfilingRefreshHelper.nextFrame;
begin
        Self.frameProcessingTimeElapsed := (DateTimeToUnix(Now) * 1000) - (Self.frameProcessingTimeElapsed);
        if (Self.firstTime) <> (True) then begin
            if (Self.frameProcessingTimeElapsed) > (Int64(Self.worstFrameProcessingTime)) then begin
                Self.worstFrameProcessingTime := Integer(Self.frameProcessingTimeElapsed);
            end;
            if (Self.frameProcessingTimeElapsed) < (Int64(Self.bestFrameProcessingTime)) then begin
                Self.bestFrameProcessingTime := Integer(Self.frameProcessingTimeElapsed);
            end;
        end else begin
            Self.firstTime := False;
        end;
        inherited nextFrame();
end;
    

function TProfilingRefreshHelper.toString: string;
begin
        Exit(TStringMaker.Create().append(inherited toString()).append(' Worst: ').appendint(Self.worstFrameProcessingTime).append(' Best: ').appendint(Self.bestFrameProcessingTime).toString());
end;

initialization
  {AB:INITIALIZATION}
  TProfilingRefreshHelper.instance := TProfilingRefreshHelper.Create();
  {AB:END}

end.

