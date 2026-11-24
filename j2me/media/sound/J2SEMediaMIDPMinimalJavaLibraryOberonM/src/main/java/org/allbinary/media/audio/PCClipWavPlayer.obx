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
unit PCClipWavPlayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Control, LogUtil, BasicPlayer;

type
  {AB:TYPES}
  TPCClipWavPlayer = class(TBasicPlayer, ILineListener)
  public
    logUtil: TLogUtil;
    audioInputStream: TAudioInputStream;
    clip: TClip;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(inputStream_: TInputStream);
        procedure close; virtual;
        procedure close2;
        function getContentType: string; virtual;
        procedure start; virtual;
        procedure start2;
        function create_(audioInputStream_: TAudioInputStream): TClip;
        procedure stop; virtual;
        procedure stop2;
        function getControl(controlType: string): TControl; virtual;
        function getControls: TArray<TControl>; virtual;
        procedure setVolume(leftVolume: Integer; rightVolume: Integer); virtual;
        function getVolume: Single;
        procedure setVolumeF(volume: Single);
        function getDuration: Int64; virtual;
        procedure update(event: TLineEvent); virtual;
  end;

implementation
uses
  NullAudioFormat, NullClip, NullControl, ARunnable, MediaException, PlayerListener, NullUtil, PreLogUtil, StringUtil, MusicThreadPool;


{AB:CODE}

procedure TPCClipWavPlayer.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
end;

function TPCClipWavPlayer.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TPCClipWavPlayer.Create(inputStream_: TInputStream);
var
  audioInputStream_: TAudioInputStream;
  clip_: TClip;
begin
    inherited Create;
    InitFields;
        audioInputStream_ := TAudioInputStream.Create(TByteArrayInputStream.Create(TNullUtil.getInstance().NULL_BYTE_ARRAY), TNullAudioFormat.NULL_AUDIO_FORMAT, 0);
        clip_ := TNullClip.Create();
        try
            audioInputStream_ := TAudioSystem.getAudioInputStream(inputStream_);
            clip_ := Self.create_(audioInputStream_);
            if (clip_) = (nil) then begin
                Self.logUtil.put('Clip was null', TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_, TJava.Box(SysUtils.Exception.Create('')));
                raise SysUtils.Exception.Create('');
            end;
        except
            on e: SysUtils.Exception do begin
            Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_, TJava.Box(e));
            end;
        end;
        Self.audioInputStream := audioInputStream_;
        Self.clip := clip_;
end;
    

procedure TPCClipWavPlayer.close;
begin
        TMusicThreadPool.getInstance().runTask(TARunnable.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.run;
begin
                try
                    Self.close2();
                except
                    on e: SysUtils.Exception do begin
                    TPreLogUtil.putOE(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.PROCESS, TJava.Box(e));
                    end;
                end;
end;
*));
end;
    

// throws Exception
procedure TPCClipWavPlayer.close2;
begin
        Self.clip.drain();
        Self.clip.flush();
        Self.clip.close();
end;
    

function TPCClipWavPlayer.getContentType: string;
begin
        Exit(TStringUtil.getInstance().EMPTY_STRING);
end;
    

// throws MediaException
procedure TPCClipWavPlayer.start;
begin
    TJava.MonitorEnter(Self);
    try
        TMusicThreadPool.getInstance().runTask(TARunnable.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.run;
begin
                try
                    Self.start2();
                except
                    on e: SysUtils.Exception do begin
                    TPreLogUtil.putOE(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.PROCESS, TJava.Box(e));
                    end;
                end;
end;
*));
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
procedure TPCClipWavPlayer.start2;
begin
        Self.clip.setFramePosition(0);
        Self.clip.loop(Self.getLoopCount());
        Self.clip.start();
        inherited start();
end;
    

// throws Exception
function TPCClipWavPlayer.create_(audioInputStream_: TAudioInputStream): TClip;
var
  clip_: TClip;
begin
        clip_ := TAudioSystem.getClip();
        clip_.addLineListener(Self);
        clip_.open(audioInputStream_);
        Exit(clip_);
end;
    

// throws MediaException
procedure TPCClipWavPlayer.stop;
begin
    TJava.MonitorEnter(Self);
    try
        TMusicThreadPool.getInstance().runTask(TARunnable.Create() (* Java anonymous class body: implement it as a named class
            

        procedure T.run;
begin
                try
                    Self.stop2();
                except
                    on e: SysUtils.Exception do begin
                    TPreLogUtil.putOE(Self.commonStrings.EXCEPTION, TJava.Box(Self), Self.commonStrings.PROCESS, TJava.Box(e));
                    end;
                end;
end;
*));
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
procedure TPCClipWavPlayer.stop2;
begin
        Self.clip.stop();
        inherited stop();
end;
    

function TPCClipWavPlayer.getControl(controlType: string): TControl;
begin
        Exit(TNullControl.Create());
end;
    

function TPCClipWavPlayer.getControls: TArray<TControl>;
begin
        Exit(nil);
end;
    

procedure TPCClipWavPlayer.setVolume(leftVolume: Integer; rightVolume: Integer);
begin
        Self.setVolumeF(((leftVolume)) / (100.0));
end;
    

function TPCClipWavPlayer.getVolume: Single;
var
  masterGainFloatControl: TFloatControl;
begin
        masterGainFloatControl := TFloatControl(TJava.ToObject(Self.clip.getControl(TFloatControl.Type_.MASTER_GAIN)));
        Exit((1.0 * (Power(10.0, (masterGainFloatControl.getValue()) / (20.0)))));
end;
    

procedure TPCClipWavPlayer.setVolumeF(volume: Single);
var
  masterGainFloatControl: TFloatControl;
begin
        if ((volume) < (0.0)) or ((volume) > (1.0)) then begin
            raise SysUtils.Exception.Create('Volume: ' + FloatToStr(volume));
        end;
        masterGainFloatControl := TFloatControl(TJava.ToObject(Self.clip.getControl(TFloatControl.Type_.MASTER_GAIN)));
        masterGainFloatControl.setValue((20.0) * ((1.0 * (TMath.log10(volume)))));
end;
    

function TPCClipWavPlayer.getDuration: Int64;
begin
        Exit((Self.clip.getMicrosecondLength()) div (1000));
end;
    

procedure TPCClipWavPlayer.update(event: TLineEvent);
var
  size: Integer;
  listener: IPlayerListener;
  index: Integer;
begin
        if TJava.Equals(event.getType(), TLineEvent.Type_.STOP) then begin
            size := Self.listenersList.size();
            for index := 0 to size - 1 do begin
                listener := (TJava.ToObject(Self.listenersList.get(size)) as IPlayerListener);
                listener.playerUpdate(Self, IPlayerListener.END_OF_MEDIA, nil);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

