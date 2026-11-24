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
unit TitleProgressBarPortionSetProgressRunnable;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, Activity, ProgressCanvas, ProgressRunnable;

type
  {AB:TYPES}
  TTitleProgressBarPortionSetProgressRunnable = class(TProgressRunnable)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create(midletActivity: TActivity; progressCanvas_: TProgressCanvas);
        procedure run; override;
  end;

implementation
uses
  AndroidBasicTitleProgressBar, CommonStrings;


{AB:CODE}

procedure TTitleProgressBarPortionSetProgressRunnable.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TTitleProgressBarPortionSetProgressRunnable.Create(midletActivity: TActivity; progressCanvas_: TProgressCanvas);
begin
        inherited Create(midletActivity, progressCanvas_);
        InitFields;
end;
    

procedure TTitleProgressBarPortionSetProgressRunnable.run;
var
  progressCanvas_: TAndroidBasicTitleProgressBar;
  commonStrings_: TCommonStrings;
begin
        try
            progressCanvas_ := TAndroidBasicTitleProgressBar(TJava.ToObject(Self.progressCanvas));
            Self.midletActivity.onSetProgress(Integer(Trunc(((Self.progressCanvas.getValue()) + (TJava.Divide(Self.progressCanvas.getMaxValue(), progressCanvas_.getPortion()))))), Self.progressCanvas.getText());
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

