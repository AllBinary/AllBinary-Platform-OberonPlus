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
  // J2SEMediaMIDPMinimalJavaLibrary
  TAllBinaryMediaManager = class(TObject)
  public
    class var THIS: string;
    class var CREATE_PLAYER: string;
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
  Sounds, NoPlayer, PCClipWavPlayer, Manager, MediaException, TsUtil, AudioContentTypeDataFactory, ResourceUtil, Features, GameFeatureFactory, ProgressCanvasFactory, NullUtil, LogUtil, CommonStrings;


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
        TProgressCanvasFactory.getInstance().addNormalPortion(50, 'Media Manager');
        TSounds.Create(soundsFactoryInterface_).init();
end;
    

// throws Exception
class procedure TAllBinaryMediaManager.shutdown(soundsFactoryInterface_: ISoundsFactoryInterface);
begin
        TSounds.Create(soundsFactoryInterface_).stopAll();
        TSounds.Create(soundsFactoryInterface_).closeAll();
        TTsUtil.getInstance().gc();
end;
    

// throws Exception
class function TAllBinaryMediaManager.createPlayer(resource: string): IPlayer;
var
  inputStream_: TInputStream;
  bufferedInputStream_: TBufferedInputStream;
  logUtil_: TLogUtil;
  commonString: TCommonStrings;
begin
        if resource.StartsWith(TManager.TONE_DEVICE_LOCATOR) then begin
            Exit(TAllBinaryMediaManager.createPlayerFromInputStream(TByteArrayInputStream.Create(TNullUtil.getInstance().NULL_BYTE_ARRAY), TAudioContentTypeDataFactory.getInstance().MIME_AUDIO_TONE.getName()));
        end else if TFeatures.getInstance().isFeature(TGameFeatureFactory.getInstance().SOUND) then begin
            try
                inputStream_ := TResourceUtil.getInstance().getResourceAsStream(resource);
                bufferedInputStream_ := TBufferedInputStream.Create(inputStream_);
                Exit(TPCClipWavPlayer.Create(bufferedInputStream_));
            except
                on e: SysUtils.Exception do begin
                logUtil_ := TLogUtil.getInstance();
                commonString := TCommonStrings.getInstance();
                logUtil_.put(commonString.EXCEPTION, TJava.Box(TAllBinaryMediaManager.THIS), TAllBinaryMediaManager.CREATE_PLAYER, TJava.Box(e));
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
        raise TMediaException.Create('No Impl');
end;
    

// throws MediaException
class procedure TAllBinaryMediaManager.playTone(frequency: Integer; time: Integer; volume: Integer);
begin
    TJava.MonitorEnter(nil);
    try
        raise TMediaException.Create('No Impl');
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
  TAllBinaryMediaManager.THIS := 'AllBinaryMediaManagerPC';
  TAllBinaryMediaManager.CREATE_PLAYER := 'createPlayer';
  {AB:END}

end.

