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
unit AllBinaryMediaManager;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Player, SoundsFactoryInterface;

type
  {AB:TYPES}
  // AndroidMediaMIDPLibrary
  TAllBinaryMediaManager = class(TObject)
  public
    class var THIS: string;
    class var mostUsedTotal: Integer;
        constructor Create;
        class function isMuted: Boolean; static;
        class procedure setMuted(aMuted: Boolean); static;
        class function update: Boolean; static;
        class procedure init(soundsFactoryInterface_: ISoundsFactoryInterface); static;
        class procedure shutdown(soundsFactoryInterface_: ISoundsFactoryInterface); static;
        class function createPlayer(resource: string): IPlayer; static;
        class function createPlayerFromInputStream(stream: TInputStream; type_: string): IPlayer; static;
        class procedure playTone(frequency: Integer; time: Integer; volume: Integer); static;
        class function isInitialized: Boolean; static;
  end;

implementation
uses
  Sounds, Sound, AndroidMediaPlayerWrapper, PlayerComposite, MediaPlayerUtil, NoPlayer, MediaException, TsUtil, Features, GameFeatureFactory, ProgressCanvasFactory, ABSystemWrapper, LogUtil, CommonLabels, CommonStrings;


{AB:CODE}
    

constructor TAllBinaryMediaManager.Create;
begin
    inherited Create;
end;
    

class function TAllBinaryMediaManager.isMuted: Boolean;
begin
        Exit(False);
end;
    

class procedure TAllBinaryMediaManager.setMuted(aMuted: Boolean);
begin
end;
    

class function TAllBinaryMediaManager.update: Boolean;
begin
        Exit(True);
end;
    

// throws Exception
class procedure TAllBinaryMediaManager.init(soundsFactoryInterface_: ISoundsFactoryInterface);
var
  logUtil_: TLogUtil;
  commonString: TCommonStrings;
begin
        logUtil_ := TLogUtil.getInstance();
        commonString := TCommonStrings.getInstance();
        logUtil_.putF(commonString.START, TJava.Box(TAllBinaryMediaManager.THIS), commonString.INIT);
        TAllBinaryMediaManager.shutdown(soundsFactoryInterface_);
        TProgressCanvasFactory.getInstance().addNormalPortion(50, 'Media Manager');
        TTsUtil.getInstance().gc();
        TSounds.Create(soundsFactoryInterface_).init();
        logUtil_.putF(commonString.END_, TJava.Box(TAllBinaryMediaManager.THIS), commonString.INIT);
end;
    

// throws Exception
class procedure TAllBinaryMediaManager.shutdown(soundsFactoryInterface_: ISoundsFactoryInterface);
var
  logUtil_: TLogUtil;
  commonString: TCommonStrings;
  soundInterfaceArray: TArray<TSound>;
  player_: IPlayer;
  player2: IPlayer;
  androidMediaPlayerWrapper_: TAndroidMediaPlayerWrapper;
  i: Integer;
begin
        logUtil_ := TLogUtil.getInstance();
        commonString := TCommonStrings.getInstance();
        logUtil_.putF(commonString.START, TJava.Box(TAllBinaryMediaManager.THIS), 'shutdown');
        if soundsFactoryInterface_.isInitialized() then begin
            TSounds.Create(soundsFactoryInterface_).stopAll();
            soundInterfaceArray := soundsFactoryInterface_.getSoundInterfaceArray();
            
            
            
            for i := 0 to System.Length(soundInterfaceArray) - 1 do begin
                if (soundInterfaceArray[i]) <> (nil) then begin
                    player_ := soundInterfaceArray[i].getPlayerP();
                    if (player_) <> (nil) then begin
                        player2 := (TPlayerComposite(TJava.ToObject(player_))).getPlayerP();
                        if (TJava.ToObject(player2) is TAndroidMediaPlayerWrapper) then begin
                            androidMediaPlayerWrapper_ := TAndroidMediaPlayerWrapper(TJava.ToObject(player2));
                            TMediaPlayerUtil.getInstance().waitForMediaPlayer(androidMediaPlayerWrapper_.getMediaPlayer());
                        end else begin
                            raise SysUtils.Exception.Create('Unknown Property Player: ' + TJava.ToObject(player_).ClassType.ClassName);
                        end;
                    end;
                end;
            end;
            TSounds.Create(soundsFactoryInterface_).closeAll();
            TTsUtil.getInstance().gc();
            soundsFactoryInterface_.setInitialized(False);
            TAllBinaryMediaManager.mostUsedTotal := 0;
        end;
        logUtil_.putF(commonString.START, TJava.Box(TAllBinaryMediaManager.THIS), 'shutdown');
end;
    

// throws Exception
class function TAllBinaryMediaManager.createPlayer(resource: string): IPlayer;
var
  logUtil_: TLogUtil;
begin
        Inc(TAllBinaryMediaManager.mostUsedTotal);
        logUtil_ := TLogUtil.getInstance();
        if TFeatures.getInstance().isFeature(TGameFeatureFactory.getInstance().SOUND) then begin
            try
                Exit(TAndroidMediaPlayerWrapper.Create(resource));
            except
                on e: SysUtils.Exception do begin
                logUtil_.put('Could not create AndroidMediaPlayerWrapper using NoPlayer at ' + TJava.ToString(TCommonLabels.getInstance().TOTAL_LABEL) + IntToStr(TAllBinaryMediaManager.mostUsedTotal), TJava.Box(TAllBinaryMediaManager.THIS), 'createPlayer', TJava.Box(e));
                Exit(TNoPlayer.NO_PLAYER);
                end;
            end;
        end else begin
            Exit(TNoPlayer.NO_PLAYER);
        end;
end;
    

// throws IOException, MediaException
class function TAllBinaryMediaManager.createPlayerFromInputStream(stream: TInputStream; type_: string): IPlayer;
begin
        raise TMediaException.Create('No Input Stream Player');
end;
    

// throws MediaException
class procedure TAllBinaryMediaManager.playTone(frequency: Integer; time: Integer; volume: Integer);
begin
    TJava.MonitorEnter(nil);
    try
        raise TMediaException.Create('No Tone Player');
    finally
    TJava.MonitorExit(nil);
    end;
end;
    

class function TAllBinaryMediaManager.isInitialized: Boolean;
begin
        Exit(True);
end;

initialization
  {AB:INITIALIZATION}
  TAllBinaryMediaManager.THIS := 'AllBinaryMediaManagerAndroid';
  TAllBinaryMediaManager.mostUsedTotal := 0;
  {AB:END}

end.

