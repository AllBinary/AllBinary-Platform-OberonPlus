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
// package org.allbinary.input.motion.button
unit TouchScreenTypeFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Activity;

type
  {AB:TYPES}
  TTouchScreenTypeFactory = class(TObject)
  public
    class var instance: TTouchScreenTypeFactory;
    constructor Create;
        class function getInstance: TTouchScreenTypeFactory; static;
        procedure update(activity_: TActivity); virtual;
  end;

implementation
uses
  TouchScreenFactory, TouchScreenTypesFactory, Configuration, CommonStrings, PreLogUtil;


{AB:CODE}

constructor TTouchScreenTypeFactory.Create;
begin
  inherited Create;
end;
    

class function TTouchScreenTypeFactory.getInstance: TTouchScreenTypeFactory;
begin
        Exit(TTouchScreenTypeFactory.instance);
end;
    

procedure TTouchScreenTypeFactory.update(activity_: TActivity);
var
  commonStrings_: TCommonStrings;
  touchScreenFactory_: TTouchScreenFactory;
  touchScreenTypesFactory_: TTouchScreenTypesFactory;
  configuration_: TConfiguration;
  touchScreen: Integer;
begin
        commonStrings_ := TCommonStrings.getInstance();
        touchScreenFactory_ := TTouchScreenFactory.getInstance();
        touchScreenTypesFactory_ := TTouchScreenTypesFactory.getInstance();
        configuration_ := activity_.getResources().getConfiguration();
        touchScreen := configuration_.touchscreen;
        if (touchScreen) = (TConfiguration.TOUCHSCREEN_FINGER) then begin
            touchScreenFactory_.setTouchScreenType(touchScreenTypesFactory_.FINGER);
            if not (touchScreenFactory_.isTouch()) then begin
                TPreLogUtil.put('Not Really Exception: This indicates that a touch screen does exist but is not API8 so we will try it', TJava.Box(Self), commonStrings_.PROCESS);
                touchScreenFactory_.setTouch(True);
            end;
        end else if (touchScreen) = (TConfiguration.TOUCHSCREEN_STYLUS) then begin
            touchScreenFactory_.setTouchScreenType(touchScreenTypesFactory_.STYLUS);
            if not (touchScreenFactory_.isTouch()) then begin
                TPreLogUtil.put('Not Really Exception: This indicates that a touch screen does exist but is not API8 so we will try it', TJava.Box(Self), commonStrings_.PROCESS);
                touchScreenFactory_.setTouch(True);
            end;
        end else if (touchScreen) = (TConfiguration.TOUCHSCREEN_NOTOUCH) then begin
            touchScreenFactory_.setTouchScreenType(touchScreenTypesFactory_.NOTOUCH);
        end else if (touchScreen) = (TConfiguration.TOUCHSCREEN_UNDEFINED) then begin
            touchScreenFactory_.setTouchScreenType(touchScreenTypesFactory_.UNDEFINED);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TTouchScreenTypeFactory.instance := TTouchScreenTypeFactory.Create();
  {AB:END}

end.

