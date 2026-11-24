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
// package org.allbinary.android.api1
unit ActivityFractureUtilAPI1;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ActivityFractureUtil, Activity;

type
  {AB:TYPES}
  TActivityFractureUtilAPI1 = class(TActivityFractureUtil)
  public
    class var instance: TActivityFractureUtilAPI1;
    constructor Create;
        class function getInstance: TActivityFractureUtilAPI1; static;
        procedure process(activity_: TActivity); override;
        procedure setFullScreen(activity_: TActivity); override;
  end;

implementation
uses
  WindowManager;


{AB:CODE}

constructor TActivityFractureUtilAPI1.Create;
begin
  inherited Create;
end;
    

class function TActivityFractureUtilAPI1.getInstance: TActivityFractureUtilAPI1;
begin
        Exit(TActivityFractureUtilAPI1.instance);
end;
    

// throws Exception
procedure TActivityFractureUtilAPI1.process(activity_: TActivity);
begin
end;
    

procedure TActivityFractureUtilAPI1.setFullScreen(activity_: TActivity);
begin
        activity_.getWindow().setFlags(TWindowManager.LayoutParams.FLAG_FULLSCREEN, TWindowManager.LayoutParams.FLAG_FULLSCREEN);
end;

initialization
  {AB:INITIALIZATION}
  TActivityFractureUtilAPI1.instance := TActivityFractureUtilAPI1.Create();
  {AB:END}

end.

