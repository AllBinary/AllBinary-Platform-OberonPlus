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
// package org.allbinary.android.api16
unit ActivityFractureUtilAPI16;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Activity, ActivityFractureUtilAPI5;

type
  {AB:TYPES}
  TActivityFractureUtilAPI16 = class(TActivityFractureUtilAPI5)
  public
    class var instance16: TActivityFractureUtilAPI16;
    constructor Create;
        class function getInstance: TActivityFractureUtilAPI16; static;
        procedure setFullScreen(activity_: TActivity); override;
  end;

implementation
uses
  View;


{AB:CODE}

constructor TActivityFractureUtilAPI16.Create;
begin
  inherited Create;
end;
    

class function TActivityFractureUtilAPI16.getInstance: TActivityFractureUtilAPI16;
begin
        Exit(TActivityFractureUtilAPI16.instance16);
end;
    

procedure TActivityFractureUtilAPI16.setFullScreen(activity_: TActivity);
var
  decorView: TView;
  visibility: Integer;
begin
        decorView := activity_.getWindow().getDecorView();
        visibility := (TView.SYSTEM_UI_FLAG_HIDE_NAVIGATION) or (TView.SYSTEM_UI_FLAG_FULLSCREEN);
        decorView.setSystemUiVisibility(visibility);
end;

initialization
  {AB:INITIALIZATION}
  TActivityFractureUtilAPI16.instance16 := TActivityFractureUtilAPI16.Create();
  {AB:END}

end.

