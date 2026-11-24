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
// package org.allbinary.media.audio
unit AndroidMediaPlayerWrapper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, PlayerListener, MediaPlayer, LogUtil, BasicPlayer;

type
  {AB:TYPES}
  TAndroidMediaPlayerWrapper = class(TBasicPlayer)
  public
    logUtil: TLogUtil;
    mediaPlayer: TMediaPlayer;
    class var NULL_ANDROID_MEDIA_PLAYER_WRAPPER: TAndroidMediaPlayerWrapper;
    procedure InitFields;
        class function createPlayerWrapper: TAndroidMediaPlayerWrapper; static;
        constructor Create(resource: string);
        procedure setLoopCount(count: Integer); override;
        procedure addPlayerListener(playerListener_: IPlayerListener); override;
        procedure removePlayerListener(playerListener_: IPlayerListener); override;
        function getState: Integer; override;
        procedure close; override;
        procedure start; override;
        procedure stop; override;
        procedure update(event: string); virtual;
        procedure setVolume(leftVolume: Integer; rightVolume: Integer); override;
        function getDuration: Int64; override;
        procedure setMediaPlayer(mediaPlayer_: TMediaPlayer); virtual;
        function getMediaPlayer: TMediaPlayer; virtual;
  end;

implementation
uses
  MediaException, Player, NullAndroidCanvas, ResourceUtil, NullUtil, StringMaker, StringUtil;


{AB:CODE}

procedure TAndroidMediaPlayerWrapper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.mediaPlayer := TNullAndroidCanvas.NULL_MEDIA_PLAYER;
end;
    

class function TAndroidMediaPlayerWrapper.createPlayerWrapper: TAndroidMediaPlayerWrapper;
begin
        try
            Exit(TAndroidMediaPlayerWrapper.Create(TStringUtil.getInstance().EMPTY_STRING));
        except
            on e: SysUtils.Exception do begin
            raise SysUtils.Exception.Create('');
            end;
        end;
end;
    

constructor TAndroidMediaPlayerWrapper.Create(resource: string);
var
  resourceUtil_: TResourceUtil;
  mediaPlayer_: TMediaPlayer;
begin
    inherited Create;
    InitFields;
        try
            if TJava.Equals(resource, TStringUtil.getInstance().EMPTY_STRING) then begin
            end else begin
                resourceUtil_ := TResourceUtil.getInstance();
                mediaPlayer_ := TMediaPlayer.create_(resourceUtil_.getContext(), resourceUtil_.getResourceId(resource).intValue());
                if (mediaPlayer_) = (nil) then begin
                    raise SysUtils.Exception.Create(TStringMaker.Create().append('Failed to create media player for: ').append(resource).append(' with id: ').append(resourceUtil_.getResourceId(resource).toString()).toString());
                end;
                Self.setMediaPlayer(mediaPlayer_);
                Self.mediaPlayer.setLooping(False);
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(TJava.ToString(Self.commonStrings.EXCEPTION_LABEL) + resource, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_, TJava.Box(e));
            raise e;
            end;
        end;
end;
    

procedure TAndroidMediaPlayerWrapper.setLoopCount(count: Integer);
begin
        inherited setLoopCount(count);
        if ((Self.mediaPlayer) <> (TNullAndroidCanvas.NULL_MEDIA_PLAYER)) and ((Self.mediaPlayer) <> (nil)) then begin
            if (count) = (0) then begin
                Self.mediaPlayer.setLooping(False);
            end else begin
            end;
        end;
end;
    

procedure TAndroidMediaPlayerWrapper.addPlayerListener(playerListener_: IPlayerListener);
begin
    TJava.MonitorEnter(Self);
    try
        inherited addPlayerListener(playerListener_);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TAndroidMediaPlayerWrapper.removePlayerListener(playerListener_: IPlayerListener);
begin
        inherited removePlayerListener(playerListener_);
end;
    

function TAndroidMediaPlayerWrapper.getState: Integer;
begin
        if Self.mediaPlayer.isPlaying() then begin
            Exit(IPlayer.STARTED);
        end else begin
            Exit(IPlayer.PREFETCHED);
        end;
end;
    

procedure TAndroidMediaPlayerWrapper.close;
begin
        try
            Self.mediaPlayer.release();
            Self.mediaPlayer := TNullAndroidCanvas.NULL_MEDIA_PLAYER;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.CLOSE, TJava.Box(e));
            end;
        end;
end;
    

// throws MediaException
procedure TAndroidMediaPlayerWrapper.start;
begin
    TJava.MonitorEnter(Self);
    try
        try
            if Self.mediaPlayer.isPlaying() then begin
                Self.mediaPlayer.pause();
                Self.mediaPlayer.seekTo(0);
            end;
            Self.mediaPlayer.start();
            inherited start();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.START_METHOD_NAME, TJava.Box(e));
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws MediaException
procedure TAndroidMediaPlayerWrapper.stop;
begin
    TJava.MonitorEnter(Self);
    try
        try
            Self.mediaPlayer.stop();
            Self.mediaPlayer.prepare();
            inherited stop();
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'stop', TJava.Box(e));
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TAndroidMediaPlayerWrapper.update(event: string);
var
  size: Integer;
  listener: IPlayerListener;
  index: Integer;
begin
        Self.logUtil.putF('LineEvent: ' + event, TJava.Box(Self), Self.commonStrings.UPDATE);
        size := Self.listenersList.size();
        for index := 0 to size - 1 do begin
            listener := (TJava.ToObject(Self.listenersList.objectArray[index]) as IPlayerListener);
            listener.playerUpdate(Self, event, TJava.Box(TNullUtil.getInstance().NULL_OBJECT));
        end;
end;
    

procedure TAndroidMediaPlayerWrapper.setVolume(leftVolume: Integer; rightVolume: Integer);
begin
        Self.mediaPlayer.setVolume(((leftVolume)) / (100.0), ((rightVolume)) / (100.0));
end;
    

function TAndroidMediaPlayerWrapper.getDuration: Int64;
begin
        Exit(Int64(Trunc(Self.mediaPlayer.getDuration())));
end;
    

procedure TAndroidMediaPlayerWrapper.setMediaPlayer(mediaPlayer_: TMediaPlayer);
begin
        Self.mediaPlayer := mediaPlayer_;
end;
    

function TAndroidMediaPlayerWrapper.getMediaPlayer: TMediaPlayer;
begin
        Exit(Self.mediaPlayer);
end;

initialization
  {AB:INITIALIZATION}
  TAndroidMediaPlayerWrapper.NULL_ANDROID_MEDIA_PLAYER_WRAPPER := TAndroidMediaPlayerWrapper.createPlayerWrapper();
  {AB:END}

end.

