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
// package org.allbinary.logic.communication.java.vm.stats
unit JvmStatistics;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TJvmStatistics = class(TObject)
  public
    runtime: TRuntime;
    procedure InitFields;
        constructor Create;
        function getFreeMemoryBytes: Int64; virtual;
        function getFreeMemoryKilobytes: Int64; virtual;
        function getFreeMemoryMegabytes: Int64; virtual;
        function getMaxMemoryBytes: Int64; virtual;
        function getMaxMemoryKilobytes: Int64; virtual;
        function getMaxMemoryMegabytes: Int64; virtual;
        function getTotalMemoryBytes: Int64; virtual;
        function getTotalMemoryKilobytes: Int64; virtual;
        function getTotalMemoryMegabytes: Int64; virtual;
        function getFreeMemoryBytesLong: Int64; virtual;
        function getFreeMemoryKilobytesLong: Int64; virtual;
        function getFreeMemoryMegabytesLong: Int64; virtual;
        function getMaxMemoryBytesLong: Int64; virtual;
        function getMaxMemoryKilobytesLong: Int64; virtual;
        function getMaxMemoryMegabytesLong: Int64; virtual;
        function getTotalMemoryBytesLong: Int64; virtual;
        function getTotalMemoryKilobytesLong: Int64; virtual;
        function getTotalMemoryMegabytesLong: Int64; virtual;
        function getFreeMemoryBytesString: string; virtual;
        function getFreeMemoryKilobytesString: string; virtual;
        function getFreeMemoryMegabytesString: string; virtual;
        function getMaxMemoryBytesString: string; virtual;
        function getMaxMemoryKilobytesString: string; virtual;
        function getMaxMemoryMegabytesString: string; virtual;
        function getTotalMemoryBytesString: string; virtual;
        function getTotalMemoryKilobytesString: string; virtual;
        function getTotalMemoryMegabytesString: string; virtual;
        function getNumberOfThreads: Int64; virtual;
        function getNumberOfThreadsLong: Int64; virtual;
        function getNumberOfThreadsString: string; virtual;
        procedure collectGarbage; virtual;
  end;

implementation

{AB:CODE}

procedure TJvmStatistics.InitFields;
begin
  
end;
    

constructor TJvmStatistics.Create;
begin
    inherited Create;
    InitFields;
        Self.runtime := TRuntime.getRuntime();
end;
    

function TJvmStatistics.getFreeMemoryBytes: Int64;
begin
        Exit(Self.runtime.freeMemory());
end;
    

function TJvmStatistics.getFreeMemoryKilobytes: Int64;
begin
        Exit((Self.getFreeMemoryBytes()) div (1024));
end;
    

function TJvmStatistics.getFreeMemoryMegabytes: Int64;
begin
        Exit((Self.getFreeMemoryKilobytes()) div (1024));
end;
    

function TJvmStatistics.getMaxMemoryBytes: Int64;
begin
        Exit(Self.runtime.maxMemory());
end;
    

function TJvmStatistics.getMaxMemoryKilobytes: Int64;
begin
        Exit((Self.getMaxMemoryBytes()) div (1024));
end;
    

function TJvmStatistics.getMaxMemoryMegabytes: Int64;
begin
        Exit((Self.getMaxMemoryKilobytes()) div (1024));
end;
    

function TJvmStatistics.getTotalMemoryBytes: Int64;
begin
        Exit(Self.runtime.totalMemory());
end;
    

function TJvmStatistics.getTotalMemoryKilobytes: Int64;
begin
        Exit((Self.getTotalMemoryBytes()) div (1024));
end;
    

function TJvmStatistics.getTotalMemoryMegabytes: Int64;
begin
        Exit((Self.getTotalMemoryKilobytes()) div (1024));
end;
    

function TJvmStatistics.getFreeMemoryBytesLong: Int64;
begin
        Exit(Self.getFreeMemoryBytes());
end;
    

function TJvmStatistics.getFreeMemoryKilobytesLong: Int64;
begin
        Exit(Self.getFreeMemoryKilobytes());
end;
    

function TJvmStatistics.getFreeMemoryMegabytesLong: Int64;
begin
        Exit(Self.getFreeMemoryMegabytes());
end;
    

function TJvmStatistics.getMaxMemoryBytesLong: Int64;
begin
        Exit(Self.getMaxMemoryBytes());
end;
    

function TJvmStatistics.getMaxMemoryKilobytesLong: Int64;
begin
        Exit(Self.getMaxMemoryKilobytes());
end;
    

function TJvmStatistics.getMaxMemoryMegabytesLong: Int64;
begin
        Exit(Self.getMaxMemoryMegabytes());
end;
    

function TJvmStatistics.getTotalMemoryBytesLong: Int64;
begin
        Exit(Self.getTotalMemoryBytes());
end;
    

function TJvmStatistics.getTotalMemoryKilobytesLong: Int64;
begin
        Exit(Self.getTotalMemoryKilobytes());
end;
    

function TJvmStatistics.getTotalMemoryMegabytesLong: Int64;
begin
        Exit(Self.getTotalMemoryMegabytes());
end;
    

function TJvmStatistics.getFreeMemoryBytesString: string;
begin
        Exit(Self.getFreeMemoryBytesLong().toString());
end;
    

function TJvmStatistics.getFreeMemoryKilobytesString: string;
begin
        Exit(Self.getFreeMemoryKilobytesLong().toString());
end;
    

function TJvmStatistics.getFreeMemoryMegabytesString: string;
begin
        Exit(Self.getFreeMemoryMegabytesLong().toString());
end;
    

function TJvmStatistics.getMaxMemoryBytesString: string;
begin
        Exit(Self.getMaxMemoryBytesLong().toString());
end;
    

function TJvmStatistics.getMaxMemoryKilobytesString: string;
begin
        Exit(Self.getMaxMemoryKilobytesLong().toString());
end;
    

function TJvmStatistics.getMaxMemoryMegabytesString: string;
begin
        Exit(Self.getMaxMemoryMegabytesLong().toString());
end;
    

function TJvmStatistics.getTotalMemoryBytesString: string;
begin
        Exit(Self.getTotalMemoryBytesLong().toString());
end;
    

function TJvmStatistics.getTotalMemoryKilobytesString: string;
begin
        Exit(Self.getTotalMemoryKilobytesLong().toString());
end;
    

function TJvmStatistics.getTotalMemoryMegabytesString: string;
begin
        Exit(Self.getTotalMemoryMegabytesLong().toString());
end;
    

function TJvmStatistics.getNumberOfThreads: Int64;
begin
        Exit(TThread.activeCount());
end;
    

function TJvmStatistics.getNumberOfThreadsLong: Int64;
begin
        Exit(Self.getNumberOfThreads());
end;
    

function TJvmStatistics.getNumberOfThreadsString: string;
begin
        Exit(Self.getNumberOfThreadsLong().toString());
end;
    

procedure TJvmStatistics.collectGarbage;
begin
        Self.runtime.gc();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

