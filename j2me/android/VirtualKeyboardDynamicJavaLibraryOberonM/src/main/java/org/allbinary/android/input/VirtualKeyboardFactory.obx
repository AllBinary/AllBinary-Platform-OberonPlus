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
// package org.allbinary.android.input
unit VirtualKeyboardFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Activity, VirtualKeyboard;

type
  {AB:TYPES}
  TVirtualKeyboardFactory = class(TObject)
  public
    class var virtualKeyboard: TVirtualKeyboard;
    constructor Create;
        class procedure init(activity_: TActivity); static;
        class function getInstance: TVirtualKeyboard; static;
  end;

implementation
uses
  AndroidInfoFactory, VirtualKeyboardAPI1, VirtualKeyboardAPI3;


{AB:CODE}

constructor TVirtualKeyboardFactory.Create;
begin
  inherited Create;
end;
    

class procedure TVirtualKeyboardFactory.init(activity_: TActivity);
var
  SDK_VERSION: Integer;
begin
        SDK_VERSION := TAndroidInfoFactory.getInstance().getVersion();
        if (SDK_VERSION) <= (2) then begin
            TVirtualKeyboardFactory.virtualKeyboard := TVirtualKeyboardAPI1.Create(activity_);
        end else begin
            TVirtualKeyboardFactory.virtualKeyboard := TVirtualKeyboardAPI3.Create(activity_);
        end;
end;
    

class function TVirtualKeyboardFactory.getInstance: TVirtualKeyboard;
begin
        Exit(TVirtualKeyboardFactory.virtualKeyboard);
end;

initialization
  {AB:INITIALIZATION}
  TVirtualKeyboardFactory.virtualKeyboard := TVirtualKeyboard.NULL_VIRTUAL_KEYBOARD;
  {AB:END}

end.

