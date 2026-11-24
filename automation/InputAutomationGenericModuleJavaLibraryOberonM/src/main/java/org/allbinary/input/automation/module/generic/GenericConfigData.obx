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
// package org.allbinary.input.automation.module.generic
unit GenericConfigData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TGenericConfigData = class(TObject)
  public
    class var RELATIVE_PATH: string;
    class var CONFIG_PATH: string;
    class var MODULE_RELATIVE_PATH: string;
    class var GAME_MODULE_RELATIVE_PATH: string;
    class var MMO_GAME_MODULE_RELATIVE_PATH: string;
    class var FREE_MMO_GAME_MODULE_RELATIVE_PATH: string;
        constructor Create;
  end;

implementation

{AB:CODE}
    

constructor TGenericConfigData.Create;
begin
    inherited Create;
end;

initialization
  {AB:INITIALIZATION}
  TGenericConfigData.RELATIVE_PATH := './';
  TGenericConfigData.CONFIG_PATH := 'modules/configs/';
  TGenericConfigData.MODULE_RELATIVE_PATH := TJava.ToString((TGenericConfigData.RELATIVE_PATH) + (TGenericConfigData.CONFIG_PATH)) + 'allbinary/input/automation/module/';
  TGenericConfigData.GAME_MODULE_RELATIVE_PATH := TJava.ToString(TGenericConfigData.MODULE_RELATIVE_PATH) + 'game/';
  TGenericConfigData.MMO_GAME_MODULE_RELATIVE_PATH := TJava.ToString(TGenericConfigData.GAME_MODULE_RELATIVE_PATH) + 'mmog/';
  TGenericConfigData.FREE_MMO_GAME_MODULE_RELATIVE_PATH := 'free/';
  {AB:END}

end.

