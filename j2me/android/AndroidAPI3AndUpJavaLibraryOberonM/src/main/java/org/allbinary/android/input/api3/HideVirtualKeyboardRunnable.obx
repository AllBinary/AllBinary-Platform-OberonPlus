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
unit HideVirtualKeyboardRunnable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Activity, LogUtil;

type
  {AB:TYPES}
  THideVirtualKeyboardRunnable = class(TInterfacedObject, IRunnable)
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
  Context, IBinder, View, InputMethodManager, ViewCompositeInterface, ForcedLogUtil, CommonStrings;


{AB:CODE}

procedure THideVirtualKeyboardRunnable.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function THideVirtualKeyboardRunnable.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor THideVirtualKeyboardRunnable.Create(activity_: TActivity);
begin
    inherited Create;
    InitFields;
        Self.activity := activity_;
end;
    

procedure THideVirtualKeyboardRunnable.run;
var
  commonStrings_: TCommonStrings;
  inputMethodManager_: TInputMethodManager;
  viewCompositeInterface_: IViewCompositeInterface;
  view_: TView;
  token: TIBinder;
begin
        commonStrings_ := TCommonStrings.getInstance();
        try
            inputMethodManager_ := TInputMethodManager(TJava.ToObject(Self.activity.getSystemService(TContext.INPUT_METHOD_SERVICE)));
            viewCompositeInterface_ := (TJava.ToObject(Self.activity) as IViewCompositeInterface);
            if (viewCompositeInterface_) = (nil) then begin
                TForcedLogUtil.log('Activity Null', TJava.Box(Self));
            end;
            view_ := viewCompositeInterface_.getView();
            if TJava.IsNull(view_.getWindowToken()) then begin
                Self.logUtil.putF('Unable to hide virtual keyboard as window token is null - This usually happens during loading when the view is not attached to a window', TJava.Box(Self), commonStrings_.RUN);
                Exit;
            end;
            token := view_.getWindowToken();
            inputMethodManager_.hideSoftInputFromWindow(token, 0);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.RUN, TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

