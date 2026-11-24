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
// package org.allbinary.android.api30
unit ActivityFractureUtilAPI30;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Activity, ActivityFractureUtilAPI5;

type
  {AB:TYPES}
  TActivityFractureUtilAPI30 = class(TActivityFractureUtilAPI5)
  public
    class var instance30: TActivityFractureUtilAPI30;
    constructor Create;
        class function getInstance: TActivityFractureUtilAPI30; static;
        procedure setFullScreen(activity_: TActivity); override;
  end;

implementation
uses
  Window, WindowCompat, WindowInsetsCompat, WindowInsetsControllerCompat;


{AB:CODE}

constructor TActivityFractureUtilAPI30.Create;
begin
  inherited Create;
end;
    

class function TActivityFractureUtilAPI30.getInstance: TActivityFractureUtilAPI30;
begin
        Exit(TActivityFractureUtilAPI30.instance30);
end;
    

procedure TActivityFractureUtilAPI30.setFullScreen(activity_: TActivity);
var
  window_: TWindow;
  windowInsetsController: TWindowInsetsControllerCompat;
begin
        window_ := activity_.getWindow();
        windowInsetsController := TWindowCompat.getInsetsController(window_, window_.getDecorView());
        windowInsetsController.hide(TWindowInsetsCompat.Type_.systemBars());
        windowInsetsController.setSystemBarsBehavior(TWindowInsetsControllerCompat.BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE);
end;

initialization
  {AB:INITIALIZATION}
  TActivityFractureUtilAPI30.instance30 := TActivityFractureUtilAPI30.Create();
  {AB:END}

end.

