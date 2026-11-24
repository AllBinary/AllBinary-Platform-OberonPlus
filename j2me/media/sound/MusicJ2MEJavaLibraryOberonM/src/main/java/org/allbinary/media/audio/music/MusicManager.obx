// Generated Code Do Not Modify
// package org.allbinary.media.audio.music
unit MusicManager;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Player, PlayerListener, PlayerStateUtil, Sound, CommonSeps, CommonStrings, GameTickTimeDelayHelper, TimeDelayHelper, BasicArrayList, BasicArrayListUtil;

type
  {AB:TYPES}
  // Handle Media ending for Avian
  TMusicManagerPlayerListener = class(TInterfacedObject, IPlayerListener)
  public
    musicManager: TMusicManager;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(musicManager_: TMusicManager);
        procedure playerUpdate(player_: IPlayer; event: string; eventData: TObject); virtual;
  end;
  TMusicManager = class(TObject)
  public
    commonStrings: TCommonStrings;
    commonSeps: TCommonSeps;
    basicArrayListUtil: TBasicArrayListUtil;
    gameTickTimeDelayHelper: TGameTickTimeDelayHelper;
    playerStateUtil: TPlayerStateUtil;
    timeDelayHelper: TTimeDelayHelper;
    playerListener: IPlayerListener;
    PLAY: string;
    SONG: string;
    NEXT_SONG: string;
    STOPPING: string;
    ENDING: string;
    WAITING_FOR_MEDIA_TO_END: string;
    ALREADY_PLAYING: string;
    ALREADY_ENDED: string;
    songList: TBasicArrayList;
    currentSongSound: TSound;
    nextSongSound: TSound;
    reset_: Boolean;
    noDuration: Boolean;
    stopped: Boolean;
    procedure InitFields;
        constructor Create(musicServiceClass: TClass; songList: TBasicArrayList);
        procedure startNewSong; virtual;
        procedure nextSong(nextSongSound: TSound; leftVolume: Integer; rightVolume: Integer); virtual;
        procedure reset; virtual;
        procedure process; virtual;
        procedure waitForStateChange(endingCurrentSongSound: TSound; startingCurrentSongSound: TSound);
        procedure stop; virtual;
  end;

implementation
uses
  ARunnable, AvianUtil, PreLogUtil, StringMaker, StringUtil, NoSound, CommonLabels, GameTickTimeDelayHelperFactory;


{AB:CODE}

procedure TMusicManagerPlayerListener.InitFields;
begin
  
end;

function TMusicManagerPlayerListener.JavaObject: TObject;
begin
  Result := Self;
end;
    

    constructor TMusicManagerPlayerListener.Create(musicManager_: TMusicManager);
begin
        inherited Create;
        InitFields;
            Self.musicManager := musicManager_;
end;
    

    procedure TMusicManagerPlayerListener.playerUpdate(player_: IPlayer; event: string; eventData: TObject);
begin
            TPreLogUtil.put(event, TJava.Box(Self), Self.musicManager.commonStrings.PROCESS);
            if ((TJava.Equals(event, IPlayerListener.END_OF_MEDIA)) or (TJava.Equals(event, IPlayerListener.STOPPED))) or (TJava.Equals(event, IPlayerListener.CLOSED)) then begin
                Self.musicManager.reset();
            end;
end;

procedure TMusicManager.InitFields;
begin
  Self.commonStrings := TCommonStrings.getInstance();
  Self.commonSeps := TCommonSeps.getInstance();
  Self.basicArrayListUtil := TBasicArrayListUtil.getInstance();
  Self.gameTickTimeDelayHelper := TGameTickTimeDelayHelperFactory.getInstance();
  Self.playerStateUtil := TPlayerStateUtil.getInstance();
  Self.timeDelayHelper := TTimeDelayHelper.Create(0);
  Self.playerListener := TMusicManagerPlayerListener.Create(Self);
  Self.PLAY := 'Play ';
  Self.SONG := ' for: ';
  Self.NEXT_SONG := TJava.ToString(TCommonLabels.getInstance().NEXT) + ' Song: ';
  Self.STOPPING := 'Stopping Current Song: ';
  Self.ENDING := 'Ending Current Song: ';
  Self.WAITING_FOR_MEDIA_TO_END := 'Waiting for media to end';
  Self.ALREADY_PLAYING := 'Already Playing: ';
  Self.ALREADY_ENDED := 'Last Song already ended: ';
  
  Self.currentSongSound := TNoSound.getInstance();
  Self.nextSongSound := TNoSound.getInstance();
  
  
  Self.stopped := True;
end;
    

constructor TMusicManager.Create(musicServiceClass: TClass; songList: TBasicArrayList);
begin
    inherited Create;
    InitFields;
        Self.songList := songList;
end;
    

procedure TMusicManager.startNewSong;
var
  randomSongSound: TSound;
begin
        if (Self.nextSongSound) = (TNoSound.getInstance()) then begin
            randomSongSound := TSound(TJava.ToObject(Self.basicArrayListUtil.getRandom(Self.songList)));
            Self.nextSong(randomSongSound, 0, 0);
        end;
        Self.process();
end;
    

procedure TMusicManager.nextSong(nextSongSound: TSound; leftVolume: Integer; rightVolume: Integer);
begin
        TPreLogUtil.put(TStringMaker.Create().append(Self.NEXT_SONG).append(nextSongSound.getResource()).toString(), TJava.Box(Self), Self.commonStrings.PROCESS);
        Self.nextSongSound := nextSongSound;
        Self.reset();
        Self.stopped := False;
end;
    

procedure TMusicManager.reset;
begin
        Self.reset_ := True;
end;
    

procedure TMusicManager.process;
var
  endingCurrentSongSound: TSound;
  nextSongSound: TSound;
  startingCurrentSongSound: TSound;
  duration: Int64;
  NO_DURATION_FOR: string;
  resource: string;
begin
        try
            if Self.stopped then begin
                Exit;
            end;
            if (Self.songList.size()) = (0) then begin
                Exit;
            end;
            if (((Self.timeDelayHelper.isTime(Self.gameTickTimeDelayHelper.startTime)) and (not (Self.noDuration)))) or (Self.reset_) then begin
                Self.reset_ := False;
                Self.noDuration := False;
                endingCurrentSongSound := Self.currentSongSound;
                nextSongSound := Self.nextSongSound;
                Self.nextSongSound := TNoSound.getInstance();
                if (nextSongSound) = (TNoSound.getInstance()) then begin
                    Self.currentSongSound := TSound(TJava.ToObject(TBasicArrayListUtil.getInstance().getRandom(Self.songList)));
                end else begin
                    Self.currentSongSound := nextSongSound;
                end;
                startingCurrentSongSound := Self.currentSongSound;
                duration := Int64(Trunc(Self.currentSongSound.getDuration()));
                Self.timeDelayHelper.delay := Integer(duration);
                if (duration) <= (0) then begin
                    NO_DURATION_FOR := 'No Duration for: ';
                    TPreLogUtil.put(TStringMaker.Create().append(NO_DURATION_FOR).append(Self.currentSongSound.getResource()).toString(), TJava.Box(Self), Self.commonStrings.PROCESS);
                    Self.currentSongSound.getPlayerP().addPlayerListener(Self.playerListener);
                    Self.noDuration := True;
                end;
                if (endingCurrentSongSound) <> (TNoSound.getInstance()) then begin
                    if ((endingCurrentSongSound) = (startingCurrentSongSound)) and ((endingCurrentSongSound.getPlayerP().getState()) = (IPlayer.STARTED)) then begin
                        TPreLogUtil.put(TStringMaker.Create().append(Self.ALREADY_PLAYING).append(endingCurrentSongSound.getResource()).toString(), TJava.Box(Self), Self.commonStrings.PROCESS);
                        TPreLogUtil.put(TStringMaker.Create().append(Self.STOPPING).append(endingCurrentSongSound.getResource()).append(Self.SONG).appendlong(duration).toString(), TJava.Box(Self), Self.commonStrings.PROCESS);
                        endingCurrentSongSound.getPlayerP().stop();
                        Self.waitForStateChange(endingCurrentSongSound, startingCurrentSongSound);
                    end else begin
                        if (endingCurrentSongSound.getPlayerP().getState()) = (IPlayer.STARTED) then begin
                            TPreLogUtil.put(TStringMaker.Create().append(Self.STOPPING).append(endingCurrentSongSound.getResource()).append(Self.SONG).appendlong(duration).toString(), TJava.Box(Self), Self.commonStrings.PROCESS);
                            endingCurrentSongSound.getPlayerP().stop();
                            Self.waitForStateChange(endingCurrentSongSound, startingCurrentSongSound);
                        end else begin
                            TPreLogUtil.put(TStringMaker.Create().append(Self.ALREADY_ENDED).append(Self.PLAY).append(startingCurrentSongSound.getResource()).toString(), TJava.Box(Self), Self.commonStrings.PROCESS);
                            if TAvianUtil.isAvian() then begin
                                endingCurrentSongSound.getPlayerP().stop();
                                startingCurrentSongSound.getPlayerP().stop();
                            end;
                            startingCurrentSongSound.getPlayerP().start();
                        end;
                    end;
                end else begin
                    TPreLogUtil.put(TStringMaker.Create().append(Self.PLAY).append(Self.currentSongSound.getResource()).append(Self.SONG).appendlong(duration).toString(), TJava.Box(Self), Self.commonStrings.PROCESS);
                    Self.currentSongSound.getPlayerP().start();
                end;
            end;
        except
            on e: SysUtils.Exception do begin
            resource := TStringUtil.getInstance().EMPTY_STRING;
            if (Self.currentSongSound) <> (TNoSound.getInstance()) then begin
                resource := Self.currentSongSound.getResource();
            end;
            TPreLogUtil.putOE(TJava.ToString(Self.commonStrings.EXCEPTION_LABEL) + resource, TJava.Box(Self), Self.commonStrings.PROCESS, TJava.Box(e));
            end;
        end;
end;
    

// throws Exception
procedure TMusicManager.waitForStateChange(endingCurrentSongSound: TSound; startingCurrentSongSound: TSound);
begin
        while (endingCurrentSongSound.getPlayerP().getState()) = (IPlayer.STARTED) do begin
            TPreLogUtil.put(Self.WAITING_FOR_MEDIA_TO_END, TJava.Box(Self), Self.commonStrings.PROCESS);
            SysUtils.Sleep(100);
        end;
        TPreLogUtil.put(TStringMaker.Create().append(Self.playerStateUtil.convert(endingCurrentSongSound.getPlayerP().getState())).append(Self.commonSeps.SPACE).append(Self.PLAY).append(startingCurrentSongSound.getResource()).toString(), TJava.Box(Self), Self.commonStrings.PROCESS);
        startingCurrentSongSound.getPlayerP().start();
end;
    

// throws Exception
procedure TMusicManager.stop;
var
  currentSongSound: TSound;
  resource: string;
begin
        try
            currentSongSound := Self.currentSongSound;
            if (currentSongSound) <> (TNoSound.getInstance()) then begin
                Self.stopped := True;
                TPreLogUtil.put(TStringMaker.Create().append(Self.ENDING).append(currentSongSound.getResource()).toString(), TJava.Box(Self), Self.commonStrings.PROCESS);
                currentSongSound.getPlayerP().stop();
            end;
            Self.timeDelayHelper.setStartTime(0);
            TPreLogUtil.put(TStringMaker.Create().append(Self.commonStrings.END_).append(TStringUtil.getInstance().toString(currentSongSound)).toString(), TJava.Box(Self), Self.commonStrings.END_);
        except
            on e: SysUtils.Exception do begin
            resource := TStringUtil.getInstance().EMPTY_STRING;
            if (currentSongSound) <> (TNoSound.getInstance()) then begin
                resource := currentSongSound.getResource();
            end;
            TPreLogUtil.putOE(TJava.ToString(Self.commonStrings.EXCEPTION_LABEL) + resource, TJava.Box(Self), Self.commonStrings.END_, TJava.Box(e));
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

