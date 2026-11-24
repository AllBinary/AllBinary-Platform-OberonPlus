{
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer
unit AdvancedRTSProperties;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ShakeAnimationListener, TickableInterface, AllBinaryVibrationME;

type
  {AB:TYPES}
  TAdvancedRTSProperties = class(TObject)
  public
    shakeListener: TShakeAnimationListener;
    vibration: TAllBinaryVibrationME;
    duration: Integer;
    waypointBehaviorBase: ITickableInterface;
    procedure InitFields;
        class function createPropertiesSimulated: TAdvancedRTSProperties; static;
        class function createProperties: TAdvancedRTSProperties; static;
        constructor Create(shakeListener: TShakeAnimationListener; vibration: TAllBinaryVibrationME; duration: Integer; waypointBehaviorBase_: ITickableInterface);
  end;

implementation
uses
  WaypointBehaviorBase, NoShakeAnimationListener, ShakeAnimationListenerFactory, GameConfigurationCentral, AllBinaryNoVibration, AllBinaryVibration;


{AB:CODE}

procedure TAdvancedRTSProperties.InitFields;
begin
  
  
  
  
end;
    

class function TAdvancedRTSProperties.createPropertiesSimulated: TAdvancedRTSProperties;
begin
        Exit(TAdvancedRTSProperties.Create(TNoShakeAnimationListener.NO_SHAKE_ANIMATION_LISTENER, TAllBinaryNoVibration.NO_VIBRATION, 0, TWaypointBehaviorBase.Create()));
end;
    

class function TAdvancedRTSProperties.createProperties: TAdvancedRTSProperties;
begin
        Exit(TAdvancedRTSProperties.Create(TShakeAnimationListenerFactory.getInstance(), TAllBinaryVibration.getInstance(), (TGameConfigurationCentral.getInstance().VIBRATION.getValue().intValue()) * (100), TWaypointBehaviorBase.Create()));
end;
    

constructor TAdvancedRTSProperties.Create(shakeListener: TShakeAnimationListener; vibration: TAllBinaryVibrationME; duration: Integer; waypointBehaviorBase_: ITickableInterface);
begin
    inherited Create;
    InitFields;
        Self.shakeListener := shakeListener;
        Self.vibration := vibration;
        Self.duration := duration;
        Self.waypointBehaviorBase := waypointBehaviorBase_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

