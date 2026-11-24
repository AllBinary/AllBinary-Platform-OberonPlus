{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.media.audio.music
unit MusicManagerFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, MusicManager;

type
  {AB:TYPES}
  TMusicManagerFactory = class(TObject)
  public
    constructor Create;
        class function createMusicManager(soundList: TBasicArrayList): TMusicManager; static;
  end;

implementation
uses
  MusicService;


{AB:CODE}

constructor TMusicManagerFactory.Create;
begin
  inherited Create;
end;
    

class function TMusicManagerFactory.createMusicManager(soundList: TBasicArrayList): TMusicManager;
begin
        Exit(TMusicManager.Create(TMusicService, soundList));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

