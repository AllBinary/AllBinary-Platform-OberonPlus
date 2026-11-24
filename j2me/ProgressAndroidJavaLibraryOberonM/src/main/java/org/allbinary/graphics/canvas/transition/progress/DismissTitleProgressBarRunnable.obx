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
unit DismissTitleProgressBarRunnable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, Activity, ProgressCanvas, ProgressRunnable;

type
  {AB:TYPES}
  TDismissTitleProgressBarRunnable = class(TProgressRunnable)
  public
    logUtil: TLogUtil;
    ZOOM_OUT_AND_IN: TArray<Integer>;
    procedure InitFields;
        constructor Create(midletActivity: TActivity; progressCanvas_: TProgressCanvas);
        procedure run; override;
  end;

implementation
uses
  TransistionTypes, CommonStrings;


{AB:CODE}

procedure TDismissTitleProgressBarRunnable.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.ZOOM_OUT_AND_IN := TArray<Integer>.Create(TTransistionTypes.getInstance().ZOOM_OUT, TTransistionTypes.getInstance().ZOOM_IN);
end;
    

constructor TDismissTitleProgressBarRunnable.Create(midletActivity: TActivity; progressCanvas_: TProgressCanvas);
begin
        inherited Create(midletActivity, progressCanvas_);
        InitFields;
end;
    

procedure TDismissTitleProgressBarRunnable.run;
var
  commonStrings_: TCommonStrings;
begin
        try
            Self.midletActivity.onDismissProgress(Self.ZOOM_OUT_AND_IN);
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

