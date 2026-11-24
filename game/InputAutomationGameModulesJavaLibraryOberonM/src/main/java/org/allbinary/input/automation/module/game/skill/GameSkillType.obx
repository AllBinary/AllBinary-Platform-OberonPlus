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
// package org.allbinary.input.automation.module.game.skill
unit GameSkillType;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TGameSkillType = class(TObject)
  public
    SPELL_GAME_SKILL_TYPE: string;
    name: string;
    class var MANA: TGameSkillType;
    class var REPLENISH: TGameSkillType;
    class var TIMED: TGameSkillType;
    class var ATTACK: TGameSkillType;
    class var TRANSPORT: TGameSkillType;
    procedure InitFields;
        constructor Create(name: string);
        function getName: string; virtual;
        procedure setName(name: string); virtual;
        function toString: string; virtual;
  end;

implementation

{AB:CODE}

procedure TGameSkillType.InitFields;
begin
  Self.SPELL_GAME_SKILL_TYPE := 'SpellGameSkillType: ';
  
end;
    

constructor TGameSkillType.Create(name: string);
begin
    inherited Create;
    InitFields;
        Self.setName(name);
end;
    

function TGameSkillType.getName: string;
begin
        Exit(Self.name);
end;
    

procedure TGameSkillType.setName(name: string);
begin
        Self.name := name;
end;
    

function TGameSkillType.toString: string;
begin
        Exit(Self.SPELL_GAME_SKILL_TYPE + Self.getName());
end;

initialization
  {AB:INITIALIZATION}
  TGameSkillType.MANA := TGameSkillType.Create('Mana');
  TGameSkillType.REPLENISH := TGameSkillType.Create('Replenish');
  TGameSkillType.TIMED := TGameSkillType.Create('Timed');
  TGameSkillType.ATTACK := TGameSkillType.Create('Attack');
  TGameSkillType.TRANSPORT := TGameSkillType.Create('Transport');
  {AB:END}

end.

