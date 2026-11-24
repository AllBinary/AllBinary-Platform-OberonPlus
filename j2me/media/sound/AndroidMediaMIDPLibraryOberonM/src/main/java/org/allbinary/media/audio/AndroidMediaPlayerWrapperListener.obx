// Generated Code Do Not Modify
// package org.allbinary.media.audio
unit AndroidMediaPlayerWrapperListener;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MediaPlayer, LogUtil, CommonStrings, AndroidMediaPlayerWrapper, OnBufferingUpdateListener, OnPreparedListener, OnErrorListener, OnCompletionListener;

type
  {AB:TYPES}
  TMediaPlayerOnBufferingUpdateListener = class(TInterfacedObject, IOnBufferingUpdateListener)
  public
    function JavaObject: TObject;
    constructor Create;
        procedure onBufferingUpdate(mediaPlayer_: TMediaPlayer; i: Integer); virtual;
  end;
  TMediaPlayerOnPreparedListener = class(TInterfacedObject, IOnPreparedListener)
  public
    function JavaObject: TObject;
    constructor Create;
        procedure onPrepared(mp: TMediaPlayer); virtual;
  end;
  TMediaPlayerOnErrorListener = class(TInterfacedObject, IOnErrorListener)
  public
    function JavaObject: TObject;
    constructor Create;
        function onError(mp: TMediaPlayer; what: Integer; extra: Integer): Boolean; virtual;
  end;
  TMediaPlayerOnCompletionListener = class(TInterfacedObject, IOnCompletionListener)
  public
    function JavaObject: TObject;
    constructor Create;
        procedure onCompletion(mp: TMediaPlayer); virtual;
  end;
  TAndroidMediaPlayerOnBufferingUpdateListener = class(TMediaPlayerOnBufferingUpdateListener)
  public
    ON_BUFFERING_UPDATE: string;
    androidMediaPlayerWrapperListener: TAndroidMediaPlayerWrapperListener;
    procedure InitFields;
        constructor Create(androidMediaPlayerWrapperListener_: TAndroidMediaPlayerWrapperListener);
        procedure onBufferingUpdate(mediaPlayer_: TMediaPlayer; i: Integer); override;
  end;
  TAndroidMediaPlayerOnPreparedListener = class(TMediaPlayerOnPreparedListener)
  public
    ON_PREPARE: string;
    androidMediaPlayerWrapperListener: TAndroidMediaPlayerWrapperListener;
    procedure InitFields;
        constructor Create(androidMediaPlayerWrapperListener_: TAndroidMediaPlayerWrapperListener);
        procedure onPrepared(mp: TMediaPlayer); override;
  end;
  TAndroidMediaPlayerOnErrorListener = class(TMediaPlayerOnErrorListener)
  public
    ON_ERROR: string;
    androidMediaPlayerWrapperListener: TAndroidMediaPlayerWrapperListener;
    procedure InitFields;
        constructor Create(androidMediaPlayerWrapperListener_: TAndroidMediaPlayerWrapperListener);
        function onError(mp: TMediaPlayer; what: Integer; extra: Integer): Boolean; override;
  end;
  TAndroidMediaPlayerOnCompletionListener = class(TMediaPlayerOnCompletionListener)
  public
    ON_COMPLETE: string;
    androidMediaPlayerWrapperListener: TAndroidMediaPlayerWrapperListener;
    procedure InitFields;
        constructor Create(androidMediaPlayerWrapperListener_: TAndroidMediaPlayerWrapperListener);
        procedure onCompletion(mp: TMediaPlayer); override;
  end;
  TAndroidMediaPlayerWrapperListener = class(TObject)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    androidMediaPlayerWrapper: TAndroidMediaPlayerWrapper;
    mOnBufferingUpdateListener: TOnBufferingUpdateListener;
    mOnPreparedListener: TOnPreparedListener;
    mOnErrorListener: TOnErrorListener;
    mOnCompletionListener: TOnCompletionListener;
    procedure InitFields;
        constructor Create(androidMediaPlayerWrapper_: TAndroidMediaPlayerWrapper);
  end;

implementation
uses
  PlayerListener, StringMaker, CommonLabels;


{AB:CODE}

function TMediaPlayerOnBufferingUpdateListener.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TMediaPlayerOnBufferingUpdateListener.Create;
begin
  inherited Create;
end;
    

    procedure TMediaPlayerOnBufferingUpdateListener.onBufferingUpdate(mediaPlayer_: TMediaPlayer; i: Integer);
begin
end;

function TMediaPlayerOnPreparedListener.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TMediaPlayerOnPreparedListener.Create;
begin
  inherited Create;
end;
    

    procedure TMediaPlayerOnPreparedListener.onPrepared(mp: TMediaPlayer);
begin
end;

function TMediaPlayerOnErrorListener.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TMediaPlayerOnErrorListener.Create;
begin
  inherited Create;
end;
    

    function TMediaPlayerOnErrorListener.onError(mp: TMediaPlayer; what: Integer; extra: Integer): Boolean;
begin
            Exit(False);
end;

function TMediaPlayerOnCompletionListener.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TMediaPlayerOnCompletionListener.Create;
begin
  inherited Create;
end;
    

    procedure TMediaPlayerOnCompletionListener.onCompletion(mp: TMediaPlayer);
begin
end;

procedure TAndroidMediaPlayerOnBufferingUpdateListener.InitFields;
begin
  Self.ON_BUFFERING_UPDATE := 'onBufferingUpdate()';
  
end;
    

    constructor TAndroidMediaPlayerOnBufferingUpdateListener.Create(androidMediaPlayerWrapperListener_: TAndroidMediaPlayerWrapperListener);
begin
        inherited Create;
        InitFields;
            Self.androidMediaPlayerWrapperListener := androidMediaPlayerWrapperListener_;
end;
    

    procedure TAndroidMediaPlayerOnBufferingUpdateListener.onBufferingUpdate(mediaPlayer_: TMediaPlayer; i: Integer);
var
  logUtil_: TLogUtil;
begin
            logUtil_ := TLogUtil.getInstance();
            logUtil_.putF(TStringMaker.Create().append('Update buffer: ').appendint(i).append('%').toString(), TJava.Box(Self), Self.ON_BUFFERING_UPDATE);
            Self.androidMediaPlayerWrapperListener.androidMediaPlayerWrapper.update(IPlayerListener.DEVICE_UNAVAILABLE);
end;

procedure TAndroidMediaPlayerOnPreparedListener.InitFields;
begin
  Self.ON_PREPARE := 'onPrepare()';
  
end;
    

    constructor TAndroidMediaPlayerOnPreparedListener.Create(androidMediaPlayerWrapperListener_: TAndroidMediaPlayerWrapperListener);
begin
        inherited Create;
        InitFields;
            Self.androidMediaPlayerWrapperListener := androidMediaPlayerWrapperListener_;
end;
    

    procedure TAndroidMediaPlayerOnPreparedListener.onPrepared(mp: TMediaPlayer);
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
begin
            logUtil_ := TLogUtil.getInstance();
            commonStrings_ := TCommonStrings.getInstance();
            logUtil_.putF(commonStrings_.START, TJava.Box(Self), Self.ON_PREPARE);
            Self.androidMediaPlayerWrapperListener.androidMediaPlayerWrapper.update(IPlayerListener.DEVICE_AVAILABLE);
end;

procedure TAndroidMediaPlayerOnErrorListener.InitFields;
begin
  Self.ON_ERROR := 'onError()';
  
end;
    

    constructor TAndroidMediaPlayerOnErrorListener.Create(androidMediaPlayerWrapperListener_: TAndroidMediaPlayerWrapperListener);
begin
        inherited Create;
        InitFields;
            Self.androidMediaPlayerWrapperListener := androidMediaPlayerWrapperListener_;
end;
    

    function TAndroidMediaPlayerOnErrorListener.onError(mp: TMediaPlayer; what: Integer; extra: Integer): Boolean;
var
  logUtil_: TLogUtil;
begin
            logUtil_ := TLogUtil.getInstance();
            logUtil_.putF(TStringMaker.Create().append(TCommonLabels.getInstance().START_LABEL).append('What: ').appendint(what).append(' Extra: ').appendint(extra).toString(), TJava.Box(Self), Self.ON_ERROR);
            Self.androidMediaPlayerWrapperListener.androidMediaPlayerWrapper.update(IPlayerListener.ERROR);
            Exit(True);
end;

procedure TAndroidMediaPlayerOnCompletionListener.InitFields;
begin
  Self.ON_COMPLETE := 'onComplete()';
  
end;
    

    constructor TAndroidMediaPlayerOnCompletionListener.Create(androidMediaPlayerWrapperListener_: TAndroidMediaPlayerWrapperListener);
begin
        inherited Create;
        InitFields;
            Self.androidMediaPlayerWrapperListener := androidMediaPlayerWrapperListener_;
end;
    

    procedure TAndroidMediaPlayerOnCompletionListener.onCompletion(mp: TMediaPlayer);
var
  logUtil_: TLogUtil;
  commonStrings_: TCommonStrings;
begin
            logUtil_ := TLogUtil.getInstance();
            commonStrings_ := TCommonStrings.getInstance();
            logUtil_.putF(commonStrings_.START, TJava.Box(Self), Self.ON_COMPLETE);
            Self.androidMediaPlayerWrapperListener.androidMediaPlayerWrapper.update(IPlayerListener.END_OF_MEDIA);
end;

procedure TAndroidMediaPlayerWrapperListener.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.androidMediaPlayerWrapper := TAndroidMediaPlayerWrapper.NULL_ANDROID_MEDIA_PLAYER_WRAPPER;
  Self.mOnBufferingUpdateListener := TAndroidMediaPlayerOnBufferingUpdateListener.Create(Self);
  Self.mOnPreparedListener := TAndroidMediaPlayerOnPreparedListener.Create(Self);
  Self.mOnErrorListener := TAndroidMediaPlayerOnErrorListener.Create(Self);
  Self.mOnCompletionListener := TAndroidMediaPlayerOnCompletionListener.Create(Self);
end;
    

constructor TAndroidMediaPlayerWrapperListener.Create(androidMediaPlayerWrapper_: TAndroidMediaPlayerWrapper);
var
  mediaPlayer_: TMediaPlayer;
begin
    inherited Create;
    InitFields;
        try
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
            Self.androidMediaPlayerWrapper := androidMediaPlayerWrapper_;
            mediaPlayer_ := androidMediaPlayerWrapper_.getMediaPlayer();
            mediaPlayer_.setOnCompletionListener(Self.mOnCompletionListener);
            mediaPlayer_.setOnBufferingUpdateListener(Self.mOnBufferingUpdateListener);
            mediaPlayer_.setOnPreparedListener(Self.mOnPreparedListener);
            mediaPlayer_.setOnErrorListener(Self.mOnErrorListener);
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_, TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

