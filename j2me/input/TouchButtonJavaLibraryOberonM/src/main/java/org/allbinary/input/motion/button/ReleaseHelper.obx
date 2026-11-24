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
unit ReleaseHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TouchButtonRecognizer, TouchButtonInput;

type
  {AB:TYPES}
  TReleaseHelper = class(TObject)
  public
    touchButtonRecognizer: TTouchButtonRecognizer;
    procedure InitFields;
        constructor Create(touchButtonRecognizer_: TTouchButtonRecognizer);
        procedure release(touchButtonInput_: TTouchButtonInput; deviceId: Integer); virtual;
  end;

implementation
uses
  GameKeyEvent;


{AB:CODE}

procedure TReleaseHelper.InitFields;
begin
  
end;
    

constructor TReleaseHelper.Create(touchButtonRecognizer_: TTouchButtonRecognizer);
begin
    inherited Create;
    InitFields;
        Self.touchButtonRecognizer := touchButtonRecognizer_;
end;
    

// throws Exception
procedure TReleaseHelper.release(touchButtonInput_: TTouchButtonInput; deviceId: Integer);
var
  nextTouchButtonInput: TTouchButtonInput;
  gameKeyEvent_: TGameKeyEvent;
  index: Integer;
begin
        
        
        for index := (Self.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.size()) - (1) downto 0 do begin
            nextTouchButtonInput := Self.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.get(index);
            gameKeyEvent_ := nextTouchButtonInput.getGameKeyEvent();
            Self.touchButtonRecognizer.upGameKeyEventHandler.fireEvent(gameKeyEvent_);
            Self.touchButtonRecognizer.upGameKeyEventHandler.getInstanceForDevice(deviceId).fireEvent(gameKeyEvent_);
            Self.touchButtonRecognizer.currentlyPressedTouchButtonSingleton.removeAt(index);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

