{

  AllBinary Open License Version 1
  Copyright (c) 2009 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
}
// Generated Code Do Not Modify
// package org.allbinary.android.input.motion
unit ActivityFractureInputUtilFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ActivityFractureUtil;

type
  {AB:TYPES}
  TActivityFractureInputUtilFactory = class(TObject)
  public
    constructor Create;
        class function getInstance: TActivityFractureUtil; static;
  end;

implementation
uses
  AndroidInfoFactory, ActivityFractureUtilAPI1, ActivityFractureUtilAPI16, ActivityFractureUtilAPI19, ActivityFractureUtilAPI5;


{AB:CODE}

constructor TActivityFractureInputUtilFactory.Create;
begin
  inherited Create;
end;
    

class function TActivityFractureInputUtilFactory.getInstance: TActivityFractureUtil;
var
  SDK_VERSION: Integer;
begin
        SDK_VERSION := TAndroidInfoFactory.getInstance().getVersion();
        if (SDK_VERSION) <= (4) then begin
            Exit(TActivityFractureUtilAPI1.getInstance());
        end else if (SDK_VERSION) <= (15) then begin
            Exit(TActivityFractureUtilAPI5.getInstance());
        end else if (SDK_VERSION) <= (16) then begin
            Exit(TActivityFractureUtilAPI16.getInstance());
        end else begin
            Exit(TActivityFractureUtilAPI19.getInstance());
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

