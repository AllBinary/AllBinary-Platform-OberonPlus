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
unit JvmStatisticsMapping;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, TableMappingInterface, JvmStatistics;

type
  {AB:TYPES}
  TJvmStatisticsMapping = class(TJvmStatistics, ITableMappingInterface)
  public
    function JavaObject: TObject;
        constructor Create;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
        function getKey: TObject; virtual;
        function toVector: TBasicArrayList; virtual;
  end;

implementation
uses
  JvmStatisticsData, BasicArrayListD, StdUtil;


{AB:CODE}

function TJvmStatisticsMapping.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TJvmStatisticsMapping.Create;
begin
        inherited Create();
end;
    

function TJvmStatisticsMapping.toHashMap: TJavaHashMap<TObject, TObject>;
var
  hashMap_: TJavaHashMap<TObject, TObject>;
begin
        hashMap_ := TStdUtil.getInstance().createHashMap();
        hashMap_.put(TJava.Box(TJvmStatisticsData.FREE_MEMORY_BYTES), TJava.Box(Self.getFreeMemoryBytesString()));
        hashMap_.put(TJava.Box(TJvmStatisticsData.FREE_MEMORY_KILOBYTES), TJava.Box(Self.getFreeMemoryKilobytesString()));
        hashMap_.put(TJava.Box(TJvmStatisticsData.FREE_MEMORY_MEGABYTES), TJava.Box(Self.getFreeMemoryMegabytesString()));
        hashMap_.put(TJava.Box(TJvmStatisticsData.MAX_MEMORY_BYTES), TJava.Box(Self.getMaxMemoryBytesString()));
        hashMap_.put(TJava.Box(TJvmStatisticsData.MAX_MEMORY_KILOBYTES), TJava.Box(Self.getMaxMemoryKilobytesString()));
        hashMap_.put(TJava.Box(TJvmStatisticsData.MAX_MEMORY_MEGABYTES), TJava.Box(Self.getMaxMemoryMegabytesString()));
        hashMap_.put(TJava.Box(TJvmStatisticsData.NUMBER_OF_THREADS), TJava.Box(Self.getNumberOfThreadsString()));
        hashMap_.put(TJava.Box(TJvmStatisticsData.TOTAL_MEMORY_BYTES), TJava.Box(Self.getTotalMemoryBytesString()));
        hashMap_.put(TJava.Box(TJvmStatisticsData.TOTAL_MEMORY_KILOBYTES), TJava.Box(Self.getTotalMemoryKilobytesString()));
        hashMap_.put(TJava.Box(TJvmStatisticsData.TOTAL_MEMORY_MEGABYTES), TJava.Box(Self.getTotalMemoryMegabytesString()));
        Exit(hashMap_);
end;
    

// throws Exception
function TJvmStatisticsMapping.getKey: TObject;
begin
        Exit(TJava.Box(TJvmStatisticsData.NAME));
end;
    

// throws Exception
function TJvmStatisticsMapping.toVector: TBasicArrayList;
var
  vector: TBasicArrayList;
begin
        vector := TBasicArrayListD.Create();
        vector.add(TJava.Box(Self.getFreeMemoryBytesString()));
        vector.add(TJava.Box(Self.getFreeMemoryKilobytesString()));
        vector.add(TJava.Box(Self.getFreeMemoryMegabytesString()));
        vector.add(TJava.Box(Self.getMaxMemoryBytesString()));
        vector.add(TJava.Box(Self.getMaxMemoryKilobytesString()));
        vector.add(TJava.Box(Self.getMaxMemoryMegabytesString()));
        vector.add(TJava.Box(Self.getNumberOfThreadsString()));
        vector.add(TJava.Box(Self.getTotalMemoryBytesString()));
        vector.add(TJava.Box(Self.getTotalMemoryKilobytesString()));
        vector.add(TJava.Box(Self.getTotalMemoryMegabytesString()));
        Exit(vector);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

