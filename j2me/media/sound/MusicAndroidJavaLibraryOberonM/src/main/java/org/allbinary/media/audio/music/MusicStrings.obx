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
// package org.allbinary.media.audio.music
unit MusicStrings;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TMusicStrings = class(TObject)
  public
    SONG_EXTRA: string;
    LEFT_VOLUME: string;
    RIGHT_VOLUME: string;
    class var instance: TMusicStrings;
    procedure InitFields;
    constructor Create;
        class function getInstance: TMusicStrings; static;
  end;

implementation

{AB:CODE}

procedure TMusicStrings.InitFields;
begin
  Self.SONG_EXTRA := 'SONG';
  Self.LEFT_VOLUME := 'LEFT_VOLUME';
  Self.RIGHT_VOLUME := 'RIGHT_VOLUME';
end;

constructor TMusicStrings.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TMusicStrings.getInstance: TMusicStrings;
begin
        Exit(TMusicStrings.instance);
end;

initialization
  {AB:INITIALIZATION}
  TMusicStrings.instance := TMusicStrings.Create();
  {AB:END}

end.

