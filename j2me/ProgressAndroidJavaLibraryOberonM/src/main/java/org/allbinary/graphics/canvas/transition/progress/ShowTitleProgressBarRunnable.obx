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
// package org.allbinary.graphics.canvas.transition.progress
unit ShowTitleProgressBarRunnable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, Activity, ProgressCanvas, ProgressRunnable;

type
  {AB:TYPES}
  TShowTitleProgressBarRunnable = class(TProgressRunnable)
  public
    logUtil: TLogUtil;
    FADE_IN_HALF: TArray<Integer>;
    procedure InitFields;
        constructor Create(midletActivity: TActivity; progressCanvas_: TProgressCanvas);
        procedure run; override;
  end;

implementation
uses
  TransistionTypes, CommonStrings;


{AB:CODE}

procedure TShowTitleProgressBarRunnable.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.FADE_IN_HALF := TArray<Integer>.Create(TTransistionTypes.getInstance().FADE_IN_TO_HALF_ALPHA, TTransistionTypes.getInstance().FADE_IN_FROM_HALF_ALPHA);
end;
    

constructor TShowTitleProgressBarRunnable.Create(midletActivity: TActivity; progressCanvas_: TProgressCanvas);
begin
        inherited Create(midletActivity, progressCanvas_);
        InitFields;
end;
    

procedure TShowTitleProgressBarRunnable.run;
var
  commonStrings_: TCommonStrings;
begin
        try
            Self.midletActivity.onShowProgress(False, Self.FADE_IN_HALF);
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

