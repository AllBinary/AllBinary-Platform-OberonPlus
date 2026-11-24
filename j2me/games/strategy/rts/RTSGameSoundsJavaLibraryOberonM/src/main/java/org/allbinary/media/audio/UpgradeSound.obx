{
 
  AllBinary Open License Version 1 
  Copyright (c) 2002 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot  
}
// Generated Code Do Not Modify
// package org.allbinary.media.audio
unit UpgradeSound;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CompositeSound, Sound;

type
  {AB:TYPES}
  TUpgradeSound = class(TCompositeSound)
  public
    class var soundInterface: TSound;
        constructor Create;
        class function getInstance: TSound; static;
  end;

implementation

{AB:CODE}
    

constructor TUpgradeSound.Create;
begin
        inherited Create('resource:/wav/upgrade.wav');
end;
    

class function TUpgradeSound.getInstance: TSound;
begin
        Exit(TUpgradeSound.soundInterface);
end;

initialization
  {AB:INITIALIZATION}
  TUpgradeSound.soundInterface := TUpgradeSound.Create();
  {AB:END}

end.

