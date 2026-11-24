// Generated Code Do Not Modify
// package org.allbinary.media.audio.music
unit MusicManager;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Activity, Intent, AndroidServicesUtil, ResourceUtil, Sound, CommonStateStrings, CommonStrings, GameTickTimeDelayHelper, TimeDelayHelper, BasicArrayList, BasicArrayListUtil, MusicStrings;

type
  {AB:TYPES}
  TMusicManager = class(TObject)
  public
    PLAY: string;
    FOR: string;
    commonStrings: TCommonStrings;
    musicStrings: TMusicStrings;
    commonStateStrings: TCommonStateStrings;
    basicArrayListUtil: TBasicArrayListUtil;
    resourceUtil: TResourceUtil;
    androidServicesUtil: TAndroidServicesUtil;
    gameTickTimeDelayHelper: TGameTickTimeDelayHelper;
    timeDelayHelper: TTimeDelayHelper;
    timeDelayHelper2: TTimeDelayHelper;
    songList: TBasicArrayList;
    currentSongSound: TSound;
    nextSongSound: TSound;
    leftVolume: Integer;
    rightVolume: Integer;
    musicServiceClass: TClass;
    currentIntent: TIntent;
    procedure InitFields;
        constructor Create(musicServiceClass: TClass; songList: TBasicArrayList);
        procedure nextSong(nextSongSound: TSound; leftVolume: Integer; rightVolume: Integer); virtual;
        procedure reset; virtual;
        procedure process; virtual;
        procedure show; virtual;
        procedure startNewSong; virtual;
        procedure stop; virtual;
        class procedure pause(activity_: TActivity; musicServiceClass: TClass); static;
        class procedure resume(activity_: TActivity; musicServiceClass: TClass); static;
  end;

implementation
uses
  Context, PreLogUtil, StringMaker, StringUtil, NoSound, GameTickTimeDelayHelperFactory;


{AB:CODE}

procedure TMusicManager.InitFields;
begin
  Self.PLAY := 'Play ';
  Self.FOR := ' for: ';
  Self.commonStrings := TCommonStrings.getInstance();
  Self.musicStrings := TMusicStrings.getInstance();
  Self.commonStateStrings := TCommonStateStrings.getInstance();
  Self.basicArrayListUtil := TBasicArrayListUtil.getInstance();
  Self.resourceUtil := TResourceUtil.getInstance();
  Self.androidServicesUtil := TAndroidServicesUtil.getInstance();
  Self.gameTickTimeDelayHelper := TGameTickTimeDelayHelperFactory.getInstance();
  Self.timeDelayHelper := TTimeDelayHelper.Create(0);
  Self.timeDelayHelper2 := TTimeDelayHelper.Create(1200);
  
  Self.currentSongSound := TNoSound.getInstance();
  Self.nextSongSound := TNoSound.getInstance();
  Self.leftVolume := 100;
  Self.rightVolume := 100;
  
  
end;
    

constructor TMusicManager.Create(musicServiceClass: TClass; songList: TBasicArrayList);
begin
    inherited Create;
    InitFields;
        TPreLogUtil.put((Self.commonStateStrings.CONTEXT) + (Self.resourceUtil.getContext()), TJava.Box(Self), Self.commonStrings.CONSTRUCTOR_);
        Self.musicServiceClass := musicServiceClass;
        Self.currentIntent := TIntent.Create(Self.resourceUtil.getContext(), musicServiceClass);
        Self.songList := songList;
end;
    

procedure TMusicManager.nextSong(nextSongSound: TSound; leftVolume: Integer; rightVolume: Integer);
begin
        if (nextSongSound) = (nil) then begin
            nextSongSound := TNoSound.getInstance();
        end;
        Self.nextSongSound := nextSongSound;
        Self.leftVolume := leftVolume;
        Self.rightVolume := rightVolume;
        Self.reset();
end;
    

procedure TMusicManager.reset;
begin
        Self.timeDelayHelper.delay := 0;
end;
    

procedure TMusicManager.process;
begin
        if (Self.songList.size()) = (0) then begin
            Exit;
        end;
        if Self.timeDelayHelper.isTime(Self.gameTickTimeDelayHelper.startTime) then begin
            Self.startNewSong();
            Exit;
        end;
        if Self.timeDelayHelper2.isTime(Self.gameTickTimeDelayHelper.startTime) then begin
            if Self.androidServicesUtil.isServiceRunning(Self.musicServiceClass.ClassName) then begin
            end else begin
                Self.startNewSong();
            end;
        end;
end;
    

procedure TMusicManager.show;
var
  sound_: TSound;
  duration: Int64;
  index: Integer;
begin
        index := Self.songList.size();
        while (TJava.PreDec(index)) >= (0) do begin
            sound_ := TSound(TJava.ToObject(Self.songList.get(index)));
            duration := Int64(Trunc(sound_.getDuration()));
            TPreLogUtil.put(TStringMaker.Create().append(Self.PLAY).append(sound_.getResource()).append(Self.FOR).appendlong(duration).toString(), TJava.Box(Self), Self.commonStrings.PROCESS);
        end;
end;
    

procedure TMusicManager.startNewSong;
var
  duration: Int64;
  resource: string;
begin
        try
            Self.resourceUtil.getContext().stopService(Self.currentIntent);
            if (Self.nextSongSound) = (TNoSound.getInstance()) then begin
                Self.currentSongSound := TSound(TJava.ToObject(Self.basicArrayListUtil.getRandom(Self.songList)));
            end else begin
                Self.currentSongSound := Self.nextSongSound;
                Self.nextSongSound := TNoSound.getInstance();
            end;
            duration := Int64(Trunc(Self.currentSongSound.getDuration()));
            TPreLogUtil.put(TStringMaker.Create().append(Self.PLAY).append(Self.currentSongSound.getResource()).append(Self.FOR).appendlong(duration).toString(), TJava.Box(Self), Self.commonStrings.PROCESS);
            Self.timeDelayHelper.delay := Integer(duration);
            Self.currentIntent.putExtra(Self.musicStrings.SONG_EXTRA, Self.resourceUtil.getResourceId(Self.currentSongSound.getResource()).intValue());
            Self.currentIntent.putExtra(Self.musicStrings.LEFT_VOLUME, Self.leftVolume);
            Self.currentIntent.putExtra(Self.musicStrings.RIGHT_VOLUME, Self.rightVolume);
            Self.resourceUtil.getContext().startService(Self.currentIntent);
        except
            on e: SysUtils.Exception do begin
            resource := TStringUtil.getInstance().EMPTY_STRING;
            if (Self.currentSongSound) <> (nil) then begin
                resource := Self.currentSongSound.getResource();
            end;
            TPreLogUtil.putOE(TJava.ToString(Self.commonStrings.EXCEPTION_LABEL) + resource, TJava.Box(Self), Self.commonStrings.PROCESS, TJava.Box(e));
            end;
        end;
end;
    

// throws Exception
procedure TMusicManager.stop;
begin
        Self.resourceUtil.getContext().stopService(Self.currentIntent);
end;
    

class procedure TMusicManager.pause(activity_: TActivity; musicServiceClass: TClass);
var
  commonStateStrings_: TCommonStateStrings;
  musicPauseIntent: TIntent;
begin
        commonStateStrings_ := TCommonStateStrings.getInstance();
        musicPauseIntent := TIntent.Create(TContext(TJava.ToObject(activity_)), musicServiceClass);
        musicPauseIntent.putExtra(commonStateStrings_.ON_START_COMMAND, 1);
        activity_.startService(musicPauseIntent);
end;
    

class procedure TMusicManager.resume(activity_: TActivity; musicServiceClass: TClass);
var
  commonStateStrings_: TCommonStateStrings;
  musicResumeIntent: TIntent;
begin
        if TAndroidServicesUtil.getInstance().isServiceRunning(musicServiceClass.ClassName) then begin
            commonStateStrings_ := TCommonStateStrings.getInstance();
            musicResumeIntent := TIntent.Create(activity_, musicServiceClass);
            musicResumeIntent.putExtra(commonStateStrings_.ON_START_COMMAND, 2);
            activity_.startService(musicResumeIntent);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

