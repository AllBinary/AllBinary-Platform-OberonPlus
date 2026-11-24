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
// package org.allbinary.thread
unit ImageThreadPool;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ThreadPool;

type
  {AB:TYPES}
  // This is mainly for network communications.
  TImageThreadPool = class(TThreadPool)
  public
    logUtil: TLogUtil;
    class var instance: TThreadPool;
    procedure InitFields;
        class function getInstance: TThreadPool; static;
        constructor Create(poolName: string; numThreads: Integer; priority: Integer);
        procedure runTask(task: IRunnable); override;
        procedure startTask(task: IRunnable); override;
        procedure completedTask(task: IRunnable); override;
  end;

implementation
uses
  CommonLabels, CommonStrings, StringMaker;


{AB:CODE}

procedure TImageThreadPool.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

class function TImageThreadPool.getInstance: TThreadPool;
begin
        Exit(TImageThreadPool.instance);
end;
    

constructor TImageThreadPool.Create(poolName: string; numThreads: Integer; priority: Integer);
begin
        inherited Create(poolName, numThreads, priority);
        InitFields;
end;
    

procedure TImageThreadPool.runTask(task: IRunnable);
begin
    TJava.MonitorEnter(Self);
    try
        inherited runTask(task);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TImageThreadPool.startTask(task: IRunnable);
begin
end;
    

procedure TImageThreadPool.completedTask(task: IRunnable);
begin
end;

initialization
  {AB:INITIALIZATION}
  TImageThreadPool.instance := TImageThreadPool.Create('ImageLoader', 1, TThreadPool.NORMAL_PRIORITY);
  {AB:END}

end.

