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
// package org.allbinary.android.api5
unit ActivityFractureUtilAPI5;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Activity, ActivityFractureUtilAPI1;

type
  {AB:TYPES}
  TActivityFractureUtilAPI5 = class(TActivityFractureUtilAPI1)
  public
    FEATURE_TOUCHSCREEN_MULTITOUCH: string;
    FEATURE_TOUCHSCREEN: string;
    FEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT: string;
    class var instance5: TActivityFractureUtilAPI5;
    procedure InitFields;
    constructor Create;
        class function getInstance: TActivityFractureUtilAPI5; static;
        procedure process(activity_: TActivity); override;
        function isTouch(activity_: TActivity): Boolean;
        function isMultiTouch(activity_: TActivity): Boolean;
        function isMultiTouchDistinct(activity_: TActivity): Boolean;
        function isFeature(activity_: TActivity; property_: string): Boolean;
  end;

implementation
uses
  TouchScreenTypeFactory, CommonStrings, PreLogUtil, TouchScreenFactory;


{AB:CODE}

procedure TActivityFractureUtilAPI5.InitFields;
begin
  Self.FEATURE_TOUCHSCREEN_MULTITOUCH := 'android.hardware.touchscreen.multitouch';
  Self.FEATURE_TOUCHSCREEN := 'android.hardware.touchscreen';
  Self.FEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT := 'android.hardware.touchscreen.multitouch.distinct';
end;

constructor TActivityFractureUtilAPI5.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TActivityFractureUtilAPI5.getInstance: TActivityFractureUtilAPI5;
begin
        Exit(TActivityFractureUtilAPI5.instance5);
end;
    

procedure TActivityFractureUtilAPI5.process(activity_: TActivity);
var
  touchScreenFactory_: TTouchScreenFactory;
  touchScreenTypeFactory_: TTouchScreenTypeFactory;
  commonStrings_: TCommonStrings;
begin
        touchScreenFactory_ := TTouchScreenFactory.getInstance();
        touchScreenTypeFactory_ := TTouchScreenTypeFactory.getInstance();
        touchScreenFactory_.setTouch(Self.isTouch(activity_));
        touchScreenFactory_.setMultiTouch(Self.isMultiTouch(activity_));
        touchScreenFactory_.setMultiTouchDistinct(Self.isMultiTouchDistinct(activity_));
        touchScreenTypeFactory_.update(activity_);
        commonStrings_ := TCommonStrings.getInstance();
        TPreLogUtil.put(touchScreenFactory_.toString(), TJava.Box(Self), commonStrings_.PROCESS);
end;
    

function TActivityFractureUtilAPI5.isTouch(activity_: TActivity): Boolean;
begin
        Exit(Self.isFeature(activity_, Self.FEATURE_TOUCHSCREEN));
end;
    

function TActivityFractureUtilAPI5.isMultiTouch(activity_: TActivity): Boolean;
begin
        Exit(Self.isFeature(activity_, Self.FEATURE_TOUCHSCREEN_MULTITOUCH));
end;
    

function TActivityFractureUtilAPI5.isMultiTouchDistinct(activity_: TActivity): Boolean;
begin
        Exit(Self.isFeature(activity_, Self.FEATURE_TOUCHSCREEN_MULTITOUCH_DISTINCT));
end;
    

function TActivityFractureUtilAPI5.isFeature(activity_: TActivity; property_: string): Boolean;
begin
        Exit(activity_.getPackageManager().hasSystemFeature(property_));
end;

initialization
  {AB:INITIALIZATION}
  TActivityFractureUtilAPI5.instance5 := TActivityFractureUtilAPI5.Create();
  {AB:END}

end.

