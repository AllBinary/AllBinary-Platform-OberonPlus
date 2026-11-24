{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.media.graphics.geography.map.racetrack
unit CustomMapGeneratorBaseFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CustomMapGeneratorBase, RaceTrackGeographicMap;

type
  {AB:TYPES}
  TCustomMapGeneratorBaseFactory = class(TObject)
  public
    class var instance: TCustomMapGeneratorBaseFactory;
        class function getInstance: TCustomMapGeneratorBaseFactory; static;
        constructor Create;
        function create_(raceTrackGeographicMap_: TRaceTrackGeographicMap): TCustomMapGeneratorBase; virtual;
  end;

implementation

{AB:CODE}
    

class function TCustomMapGeneratorBaseFactory.getInstance: TCustomMapGeneratorBaseFactory;
begin
        Exit(TCustomMapGeneratorBaseFactory.instance);
end;
    

constructor TCustomMapGeneratorBaseFactory.Create;
begin
    inherited Create;
end;
    

// throws Exception
function TCustomMapGeneratorBaseFactory.create_(raceTrackGeographicMap_: TRaceTrackGeographicMap): TCustomMapGeneratorBase;
begin
        Exit(TCustomMapGeneratorBase.Create());
end;

initialization
  {AB:INITIALIZATION}
  TCustomMapGeneratorBaseFactory.instance := TCustomMapGeneratorBaseFactory.Create();
  {AB:END}

end.

