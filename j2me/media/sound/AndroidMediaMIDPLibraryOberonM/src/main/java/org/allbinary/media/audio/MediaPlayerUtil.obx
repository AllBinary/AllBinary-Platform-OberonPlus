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
unit MediaPlayerUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MediaPlayer, LogUtil;

type
  {AB:TYPES}
  TMediaPlayerUtil = class(TObject)
  public
    logUtil: TLogUtil;
    class var instance: TMediaPlayerUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TMediaPlayerUtil; static;
        procedure waitForMediaPlayer(mediaPlayer_: TMediaPlayer); virtual;
  end;

implementation

{AB:CODE}

procedure TMediaPlayerUtil.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

constructor TMediaPlayerUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TMediaPlayerUtil.getInstance: TMediaPlayerUtil;
begin
        Exit(TMediaPlayerUtil.instance);
end;
    

// throws Exception
procedure TMediaPlayerUtil.waitForMediaPlayer(mediaPlayer_: TMediaPlayer);
var
  MESSAGE: string;
  METHOD_NAME: string;
  index: Integer;
begin
        MESSAGE := 'Not Stopped Waiting';
        METHOD_NAME := 'wait';
        index := 0;
        while (mediaPlayer_.isPlaying()) and ((index) < (50)) do begin
            Self.logUtil.putF(MESSAGE, TJava.Box(Self), METHOD_NAME);
            SysUtils.Sleep(100);
            Inc(index);
        end;
end;

initialization
  {AB:INITIALIZATION}
  TMediaPlayerUtil.instance := TMediaPlayerUtil.Create();
  {AB:END}

end.

