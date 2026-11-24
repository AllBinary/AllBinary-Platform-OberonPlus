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
// package org.allbinary.android.activity
unit MidletActivityBase;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Activity, MotionEvent, View, GenericMotionEventVerifyInterface, GameFeatureEvent, GameFeatureListenerInterface, GameInitializedEvent, GameInitializedListenerInterface, AllBinaryEventObject, SimpleProgressActivityInterface, KeyInputViewCompositeInterface, EventListenerInterface;

type
  {AB:TYPES}
  TMidletActivityBase = class(TActivity, IGameFeatureListenerInterface, IGameInitializedListenerInterface, ISimpleProgressActivityInterface, IKeyInputViewCompositeInterface, IGenericMotionEventVerifyInterface, IEventListenerInterface)
  public
    function JavaObject: TObject;
    constructor Create;
        procedure onGameFeatureChange(gameFeatureEvent_: TGameFeatureEvent); virtual;
        procedure onEvent(eventObject: TAllBinaryEventObject); virtual;
        procedure onGameInitialized(gameInitializedEvent_: TGameInitializedEvent); virtual;
        procedure onSetProgress(value: Integer; text: string); virtual;
        procedure onDismissProgress(animationSequence: TArray<Integer>); virtual;
        procedure onShowProgress(indeterminate: Boolean; animationSequence: TArray<Integer>); virtual;
        function getRootView: TView; virtual;
        function getView: TView; virtual;
        procedure setKeyInputView(keyInputView: TView); virtual;
        function onGenericMotionEvent(event: TMotionEvent): Boolean; virtual;
  end;

implementation

{AB:CODE}

function TMidletActivityBase.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TMidletActivityBase.Create;
begin
  inherited Create;
end;
    

procedure TMidletActivityBase.onGameFeatureChange(gameFeatureEvent_: TGameFeatureEvent);
begin
end;
    

procedure TMidletActivityBase.onEvent(eventObject: TAllBinaryEventObject);
begin
end;
    

procedure TMidletActivityBase.onGameInitialized(gameInitializedEvent_: TGameInitializedEvent);
begin
end;
    

// throws Exception
procedure TMidletActivityBase.onSetProgress(value: Integer; text: string);
begin
end;
    

// throws Exception
procedure TMidletActivityBase.onDismissProgress(animationSequence: TArray<Integer>);
begin
end;
    

// throws Exception
procedure TMidletActivityBase.onShowProgress(indeterminate: Boolean; animationSequence: TArray<Integer>);
begin
end;
    

function TMidletActivityBase.getRootView: TView;
begin
        raise SysUtils.Exception.Create('');
end;
    

function TMidletActivityBase.getView: TView;
begin
        raise SysUtils.Exception.Create('');
end;
    

procedure TMidletActivityBase.setKeyInputView(keyInputView: TView);
begin
end;
    

function TMidletActivityBase.onGenericMotionEvent(event: TMotionEvent): Boolean;
begin
        raise SysUtils.Exception.Create('');
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

