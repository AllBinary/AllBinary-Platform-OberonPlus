{
 
  AllBinary Open License Version 1 
  Copyright (c) 2006 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer
unit SensorActionFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, SensorAction;

type
  {AB:TYPES}
  TSensorActionFactory = class(TObject)
  public
    ATTACK: TSensorAction;
    EVADE: TSensorAction;
    class var instance: TSensorActionFactory;
    procedure InitFields;
        class function getInstance: TSensorActionFactory; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TSensorActionFactory.InitFields;
begin
  Self.ATTACK := TSensorAction.Create('Attack');
  Self.EVADE := TSensorAction.Create('Evade');
end;
    

class function TSensorActionFactory.getInstance: TSensorActionFactory;
begin
        Exit(TSensorActionFactory.instance);
end;
    

constructor TSensorActionFactory.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TSensorActionFactory.instance := TSensorActionFactory.Create();
  {AB:END}

end.

