{
 
  AllBinary Open License Version 1 
  Copyright (c) 2002 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot  
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer
unit AdvancedRTSLayerUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BaseRaceTrackGeographicMap, ABHashtable;

type
  {AB:TYPES}
  TAdvancedRTSLayerUtil = class(TObject)
  public
    class var instance: TAdvancedRTSLayerUtil;
    constructor Create;
        class function getInstance: TAdvancedRTSLayerUtil; static;
        function createFakeRTSLayerHashtable(baseRaceTrackGeographicMap_: TBaseRaceTrackGeographicMap): TABHashtable<TObject, TObject>;
  end;

implementation
uses
  RTSLayerUtil, WorkWaypoint, SmallIntegerSingletonFactory;


{AB:CODE}

constructor TAdvancedRTSLayerUtil.Create;
begin
  inherited Create;
end;
    

class function TAdvancedRTSLayerUtil.getInstance: TAdvancedRTSLayerUtil;
begin
        Exit(TAdvancedRTSLayerUtil.instance);
end;
    

function TAdvancedRTSLayerUtil.createFakeRTSLayerHashtable(baseRaceTrackGeographicMap_: TBaseRaceTrackGeographicMap): TABHashtable<TObject, TObject>;
var
  hashtable: TABHashtable<TObject, TObject>;
begin
        hashtable := TRTSLayerUtil.getInstance().createFakeRTSLayerHashtable(baseRaceTrackGeographicMap_);
        hashtable.put(TJava.Box(TWorkWaypoint.ID), TJava.Box(TSmallIntegerSingletonFactory.getInstance().getAt(50)));
        Exit(hashtable);
end;

initialization
  {AB:INITIALIZATION}
  TAdvancedRTSLayerUtil.instance := TAdvancedRTSLayerUtil.Create();
  {AB:END}

end.

