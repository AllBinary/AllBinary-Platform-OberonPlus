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
// package org.allbinary.android.input.api3
unit ShowVirtualKeyboardRunnable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Activity, LogUtil;

type
  {AB:TYPES}
  TShowVirtualKeyboardRunnable = class(TInterfacedObject, IRunnable)
  public
    logUtil: TLogUtil;
    activity: TActivity;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(activity_: TActivity);
        procedure run; virtual;
  end;

implementation
uses
  Context, View, InputMethodManager, ViewCompositeInterface, ForcedLogUtil, CommonStrings;


{AB:CODE}

procedure TShowVirtualKeyboardRunnable.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TShowVirtualKeyboardRunnable.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TShowVirtualKeyboardRunnable.Create(activity_: TActivity);
begin
    inherited Create;
    InitFields;
        Self.activity := activity_;
end;
    

procedure TShowVirtualKeyboardRunnable.run;
var
  inputMethodManager_: TInputMethodManager;
  viewCompositeInterface_: IViewCompositeInterface;
  view_: TView;
  commonStrings_: TCommonStrings;
begin
        try
            inputMethodManager_ := TInputMethodManager(TJava.ToObject(Self.activity.getSystemService(TContext.INPUT_METHOD_SERVICE)));
            viewCompositeInterface_ := (TJava.ToObject(Self.activity) as IViewCompositeInterface);
            if (viewCompositeInterface_) = (nil) then begin
                TForcedLogUtil.log('Activity Null', TJava.Box(Self));
            end;
            view_ := viewCompositeInterface_.getView();
            inputMethodManager_.toggleSoftInputFromWindow(view_.getWindowToken(), TInputMethodManager.SHOW_FORCED, 0);
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.RUN, TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

