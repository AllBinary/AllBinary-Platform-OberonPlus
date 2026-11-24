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
unit AndroidTitleProgressBar;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, ProgressActivityInterface, BasicColor, ProgressCanvas;

type
  {AB:TYPES}
  TTitleProgressBarSetProgressRunnable = class(TInterfacedObject, IRunnable)
  public
    androidTitleProgressBar: TAndroidTitleProgressBar;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(androidTitleProgressBar_: TAndroidTitleProgressBar);
        procedure run; virtual;
  end;
  TTitleProgressBarPortionSetProgressRunnable = class(TInterfacedObject, IRunnable)
  public
    androidTitleProgressBar: TAndroidTitleProgressBar;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(androidTitleProgressBar_: TAndroidTitleProgressBar);
        procedure run; virtual;
  end;
  TShowTitleProgressBarRunnable = class(TInterfacedObject, IRunnable)
  public
    androidTitleProgressBar: TAndroidTitleProgressBar;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(androidTitleProgressBar_: TAndroidTitleProgressBar);
        procedure run; virtual;
  end;
  TDismissTitleProgressBarRunnable = class(TInterfacedObject, IRunnable)
  public
    androidTitleProgressBar: TAndroidTitleProgressBar;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(androidTitleProgressBar_: TAndroidTitleProgressBar);
        procedure run; virtual;
  end;
  TAndroidTitleProgressBar = class(TProgressCanvas)
  public
    showTitleProgressBarRunnable: TShowTitleProgressBarRunnable;
    dismissTitleProgressBarRunnable: TDismissTitleProgressBarRunnable;
    progressDialogPortionSetProgressRunnable: TTitleProgressBarPortionSetProgressRunnable;
    progressDialogSetProgressRunnable: TTitleProgressBarSetProgressRunnable;
    progressActivity: IProgressActivityInterface;
    portion: Integer;
    procedure InitFields;
        constructor Create(title: string; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
        procedure init(activity: IProgressActivityInterface); virtual;
        function isInitialized: Boolean; virtual;
        procedure start; override;
        procedure end_; override;
        procedure addPortion(value: Integer; text: string; index: Integer); override;
        procedure addNormalPortion(value: Integer; text: string); override;
        procedure setValue(value: Integer); override;
        procedure waitUntilDisplayed; virtual;
        procedure paint(graphics_: TGraphics); override;
  end;

implementation
uses
  NullProgressActivity, LogUtil, CommonStrings;


{AB:CODE}

procedure TTitleProgressBarSetProgressRunnable.InitFields;
begin
  
end;

function TTitleProgressBarSetProgressRunnable.JavaObject: TObject;
begin
  Result := Self;
end;
    

    constructor TTitleProgressBarSetProgressRunnable.Create(androidTitleProgressBar_: TAndroidTitleProgressBar);
begin
        inherited Create;
        InitFields;
            Self.androidTitleProgressBar := androidTitleProgressBar_;
end;
    

    procedure TTitleProgressBarSetProgressRunnable.run;
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
  value: Integer;
begin
            logUtil_ := TLogUtil.getInstance();
            commonStrings_ := TCommonStrings.getInstance();
            try
                value := Integer(Trunc(Self.androidTitleProgressBar.getValue()));
                Self.androidTitleProgressBar.progressActivity.onTitleProgressBarSetProgress(value);
            except
                on e: SysUtils.Exception do begin
                logUtil_.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.RUN, TJava.Box(e));
                end;
            end;
end;

procedure TTitleProgressBarPortionSetProgressRunnable.InitFields;
begin
  
end;

function TTitleProgressBarPortionSetProgressRunnable.JavaObject: TObject;
begin
  Result := Self;
end;
    

    constructor TTitleProgressBarPortionSetProgressRunnable.Create(androidTitleProgressBar_: TAndroidTitleProgressBar);
begin
        inherited Create;
        InitFields;
            Self.androidTitleProgressBar := androidTitleProgressBar_;
end;
    

    procedure TTitleProgressBarPortionSetProgressRunnable.run;
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
  value: Integer;
begin
            logUtil_ := TLogUtil.getInstance();
            commonStrings_ := TCommonStrings.getInstance();
            try
                value := Integer(Trunc(((Self.androidTitleProgressBar.getValue()) + (TJava.Divide(Self.androidTitleProgressBar.getMaxValue(), Self.androidTitleProgressBar.portion)))));
                Self.androidTitleProgressBar.progressActivity.onTitleProgressBarSetProgress(value);
            except
                on e: SysUtils.Exception do begin
                logUtil_.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.RUN, TJava.Box(e));
                end;
            end;
end;

procedure TShowTitleProgressBarRunnable.InitFields;
begin
  
end;

function TShowTitleProgressBarRunnable.JavaObject: TObject;
begin
  Result := Self;
end;
    

    constructor TShowTitleProgressBarRunnable.Create(androidTitleProgressBar_: TAndroidTitleProgressBar);
begin
        inherited Create;
        InitFields;
            Self.androidTitleProgressBar := androidTitleProgressBar_;
end;
    

    procedure TShowTitleProgressBarRunnable.run;
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
  maxValue: Integer;
begin
            logUtil_ := TLogUtil.getInstance();
            commonStrings_ := TCommonStrings.getInstance();
            try
                maxValue := Integer(Trunc(Self.androidTitleProgressBar.getMaxValue()));
                Self.androidTitleProgressBar.progressActivity.onShowTitleProgressBar(maxValue, False);
            except
                on e: SysUtils.Exception do begin
                logUtil_.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.RUN, TJava.Box(e));
                end;
            end;
end;

procedure TDismissTitleProgressBarRunnable.InitFields;
begin
  
end;

function TDismissTitleProgressBarRunnable.JavaObject: TObject;
begin
  Result := Self;
end;
    

    constructor TDismissTitleProgressBarRunnable.Create(androidTitleProgressBar_: TAndroidTitleProgressBar);
begin
        inherited Create;
        InitFields;
            Self.androidTitleProgressBar := androidTitleProgressBar_;
end;
    

    procedure TDismissTitleProgressBarRunnable.run;
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
begin
            logUtil_ := TLogUtil.getInstance();
            commonStrings_ := TCommonStrings.getInstance();
            try
                Self.androidTitleProgressBar.progressActivity.onDismissTitleProgressBar();
            except
                on e: SysUtils.Exception do begin
                logUtil_.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.RUN, TJava.Box(e));
                end;
            end;
end;

procedure TAndroidTitleProgressBar.InitFields;
begin
  Self.showTitleProgressBarRunnable := TShowTitleProgressBarRunnable.Create(Self);
  Self.dismissTitleProgressBarRunnable := TDismissTitleProgressBarRunnable.Create(Self);
  Self.progressDialogPortionSetProgressRunnable := TTitleProgressBarPortionSetProgressRunnable.Create(Self);
  Self.progressDialogSetProgressRunnable := TTitleProgressBarSetProgressRunnable.Create(Self);
  Self.progressActivity := TNullProgressActivity.NULL_PROGRESS_ACTIVITY;
  Self.portion := 0;
end;
    

constructor TAndroidTitleProgressBar.Create(title: string; backgroundBasicColor: TBasicColor; foregroundBasicColor: TBasicColor);
begin
        inherited Create(title, backgroundBasicColor, foregroundBasicColor);
        InitFields;
end;
    

procedure TAndroidTitleProgressBar.init(activity: IProgressActivityInterface);
begin
        Self.progressActivity := activity;
end;
    

function TAndroidTitleProgressBar.isInitialized: Boolean;
begin
        if TJava.ToObject(Self.progressActivity) <> TJava.ToObject(TNullProgressActivity.NULL_PROGRESS_ACTIVITY) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

procedure TAndroidTitleProgressBar.start;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.START_METHOD_NAME);
            inherited start();
            Self.progressActivity.runOnUiThread(Self.showTitleProgressBarRunnable);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.START_METHOD_NAME, TJava.Box(e));
            end;
        end;
end;
    

procedure TAndroidTitleProgressBar.end_;
begin
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.END_METHOD_NAME);
            Self.progressActivity.runOnUiThread(Self.dismissTitleProgressBarRunnable);
            inherited end_();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.END_METHOD_NAME, TJava.Box(e));
            end;
        end;
end;
    

procedure TAndroidTitleProgressBar.addPortion(value: Integer; text: string; index: Integer);
begin
        try
            inherited addPortion(value, text, index);
            Self.portion := value;
            Self.progressActivity.runOnUiThread(Self.progressDialogPortionSetProgressRunnable);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.ADD_PORTION, TJava.Box(e));
            end;
        end;
end;
    

procedure TAndroidTitleProgressBar.addNormalPortion(value: Integer; text: string);
begin
        try
            inherited addNormalPortion(value, text);
            Self.portion := value;
            Self.progressActivity.runOnUiThread(Self.progressDialogPortionSetProgressRunnable);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.ADD_PORTION, TJava.Box(e));
            end;
        end;
end;
    

procedure TAndroidTitleProgressBar.setValue(value: Integer);
begin
        try
            inherited setValue(value);
            Self.progressActivity.runOnUiThread(Self.progressDialogSetProgressRunnable);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'setValue', TJava.Box(e));
            end;
        end;
end;
    

procedure TAndroidTitleProgressBar.waitUntilDisplayed;
begin
end;
    

procedure TAndroidTitleProgressBar.paint(graphics_: TGraphics);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

