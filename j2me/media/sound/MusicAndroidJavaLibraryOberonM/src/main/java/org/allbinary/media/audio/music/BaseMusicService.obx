// Generated Code Do Not Modify
// package org.allbinary.media.audio.music
unit BaseMusicService;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Service, Intent, MediaPlayer, IBinder, LogUtil, CommonStateStrings, CommonStrings;

type
  {AB:TYPES}
  TBaseMusicService = class(TService)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    commonStateStrings: TCommonStateStrings;
    ALREADY_PLAYING: string;
    WAITING_FOR_MUSIC_TO_END: string;
    player: TMediaPlayer;
    songId: Integer;
    leftVolume: Integer;
    rightVolume: Integer;
    procedure InitFields;
    constructor Create;
        function onBind(intent_: TIntent): TIBinder; override;
        procedure onCreate; override;
        procedure onDestroy; override;
        procedure pause; virtual;
        procedure resume; virtual;
        procedure start; virtual;
        procedure onStart(intent_: TIntent; startid: Integer); override;
        function onStartCommand(intent_: TIntent; flags: Integer; startId: Integer): Integer; override;
        procedure onStartCommandIntent(intent_: TIntent); virtual;
  end;

implementation
uses
  MusicStrings, NullAndroidCanvas, CommonLabels, ARunnable;


{AB:CODE}

procedure TBaseMusicService.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.commonStateStrings := TCommonStateStrings.getInstance();
  Self.ALREADY_PLAYING := 'This is one song per music service';
  Self.WAITING_FOR_MUSIC_TO_END := 'Waiting for music to end';
  Self.player := TNullAndroidCanvas.NULL_MEDIA_PLAYER;
  Self.songId := -1;
  Self.leftVolume := -1;
  Self.rightVolume := -1;
end;

constructor TBaseMusicService.Create;
begin
  inherited Create;
  InitFields;
end;
    

function TBaseMusicService.onBind(intent_: TIntent): TIBinder;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStateStrings.BIND);
        Exit(nil);
end;
    

procedure TBaseMusicService.onCreate;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStateStrings.CREATE_);
end;
    

procedure TBaseMusicService.onDestroy;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStateStrings.DESTROY);
        if (Self.player) <> (TNullAndroidCanvas.NULL_MEDIA_PLAYER) then begin
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStateStrings.PAUSE);
            Self.player.stop();
            Self.player.reset();
            Self.player.release();
        end;
end;
    

procedure TBaseMusicService.pause;
begin
        if (Self.player) <> (TNullAndroidCanvas.NULL_MEDIA_PLAYER) then begin
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStateStrings.PAUSE);
            Self.player.pause();
        end;
end;
    

procedure TBaseMusicService.resume;
begin
        if ((Self.player) <> (TNullAndroidCanvas.NULL_MEDIA_PLAYER)) and (not (Self.player.isPlaying())) then begin
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStateStrings.RESUME);
            Self.player.start();
        end;
end;
    

procedure TBaseMusicService.start;
begin
        Self.player := TMediaPlayer.create_(Self, Self.songId);
        Self.player.setVolume(((Self.leftVolume)) / (100.0), ((Self.rightVolume)) / (100.0));
        Self.player.setLooping(False);
        Self.player.start();
end;
    

procedure TBaseMusicService.onStart(intent_: TIntent; startid: Integer);
begin
        Self.onStartCommandIntent(intent_);
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStateStrings.START);
end;
    

function TBaseMusicService.onStartCommand(intent_: TIntent; flags: Integer; startId: Integer): Integer;
begin
        Self.onStartCommandIntent(intent_);
        Exit(TService.START_STICKY);
end;
    

procedure TBaseMusicService.onStartCommandIntent(intent_: TIntent);
var
  musicStrings_: TMusicStrings;
  command: Integer;
  player: TMediaPlayer;
  runnable: IRunnable;
  thread: TThread;
begin
        Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), Self.commonStateStrings.ON_START_COMMAND);
        musicStrings_ := TMusicStrings.getInstance();
        if (intent_) <> (nil) then begin
            command := intent_.getIntExtra(Self.commonStateStrings.ON_START_COMMAND, -1);
            Self.logUtil.putF((TCommonLabels.getInstance().COMMAND_LABEL) + (command), TJava.Box(Self), Self.commonStateStrings.ON_START_COMMAND);
            if (command) = (1) then begin
                Self.pause();
                Exit;
            end else if (command) = (2) then begin
                Self.resume();
                Exit;
            end else begin
                Self.songId := intent_.getIntExtra(musicStrings_.SONG_EXTRA, -1);
                Self.leftVolume := intent_.getIntExtra(musicStrings_.LEFT_VOLUME, -1);
                Self.rightVolume := intent_.getIntExtra(musicStrings_.RIGHT_VOLUME, -1);
            end;
        end else begin
            raise SysUtils.Exception.Create('Started service without intent');
        end;
        if (Self.songId) <> (-1) then begin
            TJava.Nothing;
            if ((Self.player) <> (TNullAndroidCanvas.NULL_MEDIA_PLAYER)) and (Self.player.isPlaying()) then begin
                player := Self.player;
                Self.logUtil.putF(Self.ALREADY_PLAYING, TJava.Box(Self), Self.commonStateStrings.ON_START_COMMAND);
                { Java local class MusicRunnable: move it to the unit }
                runnable := TMusicRunnable.Create(Self);
                thread := TThread.Create(True);
                thread.start();
                Exit;
            end;
            Self.start();
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

