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
unit GameSkill;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, GameSkillType, GameSkillPropertyInterface;

type
  {AB:TYPES}
  TGameSkill = class(TObject)
  public
    gameSkillType: TGameSkillType;
    extra: string;
    time: Integer;
    vector: TBasicArrayList;
    GAME_SKILL_LABEL: string;
    EXTRA_LABEL: string;
    TIME_LABEL: string;
    class var hashMap: TJavaHashMap<TObject, TObject>;
    procedure InitFields;
        constructor Create(gameSkillType_: TGameSkillType; extra: string; time: Integer);
        function getGameSkillType: TGameSkillType; virtual;
        procedure setGameSkillType(gameSkillType_: TGameSkillType); virtual;
        function getExtra: string; virtual;
        procedure setExtra(extra: string); virtual;
        function getTime: Integer; virtual;
        procedure setTime(time: Integer); virtual;
        procedure addProperty(gameSkillPropertyInterface_: IGameSkillPropertyInterface); virtual;
        function getProperties: TBasicArrayList; virtual;
        class function getInstance(gameSkillType_: TGameSkillType; extra: string): TGameSkill; static;
        function toString: string; virtual;
  end;

implementation
uses
  BasicArrayListD, StdUtil, StringMaker, CommonSeps;


{AB:CODE}

procedure TGameSkill.InitFields;
begin
  
  
  
  
  Self.GAME_SKILL_LABEL := 'GameSkill: ';
  Self.EXTRA_LABEL := 'Extra: ';
  Self.TIME_LABEL := 'Time: ';
end;
    

constructor TGameSkill.Create(gameSkillType_: TGameSkillType; extra: string; time: Integer);
begin
    inherited Create;
    InitFields;
        Self.setGameSkillType(gameSkillType_);
        Self.setExtra(extra);
        Self.setTime(time);
        Self.vector := TBasicArrayListD.Create();
        TGameSkill.hashMap.put(TJava.Box(TStringMaker.Create().append(Self.getGameSkillType().getName()).append(TCommonSeps.getInstance().SPACE).append(extra).toString()), TJava.Box(Self));
end;
    

function TGameSkill.getGameSkillType: TGameSkillType;
begin
        Exit(Self.gameSkillType);
end;
    

procedure TGameSkill.setGameSkillType(gameSkillType_: TGameSkillType);
begin
        Self.gameSkillType := gameSkillType_;
end;
    

function TGameSkill.getExtra: string;
begin
        Exit(Self.extra);
end;
    

procedure TGameSkill.setExtra(extra: string);
begin
        Self.extra := extra;
end;
    

function TGameSkill.getTime: Integer;
begin
        Exit(Self.time);
end;
    

procedure TGameSkill.setTime(time: Integer);
begin
        Self.time := time;
end;
    

procedure TGameSkill.addProperty(gameSkillPropertyInterface_: IGameSkillPropertyInterface);
begin
        Self.vector.add(TJava.Box(gameSkillPropertyInterface_));
end;
    

function TGameSkill.getProperties: TBasicArrayList;
begin
        Exit(Self.vector);
end;
    

class function TGameSkill.getInstance(gameSkillType_: TGameSkillType; extra: string): TGameSkill;
begin
        Exit(TGameSkill(TJava.ToObject(TGameSkill.hashMap.get(TJava.Box(TStringMaker.Create().append(gameSkillType_.getName()).append(TCommonSeps.getInstance().SPACE).append(extra).toString())))));
end;
    

function TGameSkill.toString: string;
var
  commonSeps_: TCommonSeps;
  stringBuffer: TStringMaker;
begin
        commonSeps_ := TCommonSeps.getInstance();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.GAME_SKILL_LABEL);
        stringBuffer.append(Self.getGameSkillType().toString());
        stringBuffer.append(commonSeps_.SPACE);
        stringBuffer.append(Self.EXTRA_LABEL);
        stringBuffer.append(Self.getExtra());
        stringBuffer.append(commonSeps_.SPACE);
        stringBuffer.append(Self.TIME_LABEL);
        stringBuffer.appendlong(Int64(Self.getTime()));
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  TGameSkill.hashMap := TStdUtil.getInstance().createHashMap();
  {AB:END}

end.

