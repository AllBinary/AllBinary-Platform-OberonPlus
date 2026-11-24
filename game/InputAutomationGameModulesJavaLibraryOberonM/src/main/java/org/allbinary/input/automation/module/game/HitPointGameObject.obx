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
// package org.allbinary.input.automation.module.game
unit HitPointGameObject;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MeteredGameObject, HitPointGameObjectInterface;

type
  {AB:TYPES}
  THitPointGameObject = class(TMeteredGameObject, IHitPointGameObjectInterface)
  public
    damaged: Boolean;
    closeDeath: Boolean;
    HP_LABEL: string;
    IS_DAMAGED_LABEL: string;
    IS_CLOSE_DEATH_LABEL: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(bufferedImage: TArray<TBufferedImage>; minX: Integer; maxX: Integer; y: Integer);
        function isMoreThan(aFloat: Single): Boolean; virtual;
        function isCloseDeath: Boolean; virtual;
        procedure setCloseDeath(closeDeath: Boolean); virtual;
        function isDamaged: Boolean; virtual;
        procedure setDamaged(damaged: Boolean); virtual;
        function toString: string; override;
  end;

implementation
uses
  StringMaker, CommonSeps;


{AB:CODE}

procedure THitPointGameObject.InitFields;
begin
  Self.damaged := False;
  Self.closeDeath := False;
  Self.HP_LABEL := 'HP: ';
  Self.IS_DAMAGED_LABEL := 'isDamaged: ';
  Self.IS_CLOSE_DEATH_LABEL := 'isCloseDeath: ';
end;

function THitPointGameObject.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor THitPointGameObject.Create(bufferedImage: TArray<TBufferedImage>; minX: Integer; maxX: Integer; y: Integer);
begin
        inherited Create(bufferedImage, minX, maxX, y);
        InitFields;
        if (Self.getRatios()[(System.Length(bufferedImage)) - (1)].doubleValue()) < (1.0) then begin
            Self.setDamaged(True);
        end else begin
            Self.setDamaged(False);
        end;
        if (Self.getRatios()[(System.Length(bufferedImage)) - (1)].doubleValue()) > (0.25) then begin
            Self.closeDeath := False;
        end else begin
            Self.closeDeath := True;
        end;
end;
    

function THitPointGameObject.isMoreThan(aFloat: Single): Boolean;
begin
        if (Self.getRatios()[(System.Length(Self.getRatios())) - (1)].doubleValue()) > (aFloat) then begin
            Exit(True);
        end else begin
            Exit(False);
        end;
end;
    

function THitPointGameObject.isCloseDeath: Boolean;
begin
        Exit(Self.closeDeath);
end;
    

procedure THitPointGameObject.setCloseDeath(closeDeath: Boolean);
begin
        Self.closeDeath := closeDeath;
end;
    

function THitPointGameObject.isDamaged: Boolean;
begin
        Exit(Self.damaged);
end;
    

procedure THitPointGameObject.setDamaged(damaged: Boolean);
begin
        Self.damaged := damaged;
end;
    

function THitPointGameObject.toString: string;
var
  commonSeps_: TCommonSeps;
  stringBuffer: TStringMaker;
begin
        commonSeps_ := TCommonSeps.getInstance();
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(Self.HP_LABEL);
        stringBuffer.append(inherited toString());
        stringBuffer.append(commonSeps_.NEW_LINE);
        stringBuffer.append(Self.IS_DAMAGED_LABEL);
        stringBuffer.appendboolean(Self.isDamaged());
        stringBuffer.append(commonSeps_.NEW_LINE);
        stringBuffer.append(Self.IS_CLOSE_DEATH_LABEL);
        stringBuffer.appendboolean(Self.isCloseDeath());
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

