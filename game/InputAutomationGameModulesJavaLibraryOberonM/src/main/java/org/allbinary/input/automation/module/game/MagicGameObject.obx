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
unit MagicGameObject;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, MeteredGameObject, MagicGameObjectInterface;

type
  {AB:TYPES}
  TMagicGameObject = class(TMeteredGameObject, IMagicGameObjectInterface)
  public
    MP_LABEL: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(bufferedImage: TArray<TBufferedImage>; minX: Integer; maxX: Integer; y: Integer);
        function toString: string; override;
  end;

implementation
uses
  StringMaker, CommonSeps;


{AB:CODE}

procedure TMagicGameObject.InitFields;
begin
  Self.MP_LABEL := 'MP:';
end;

function TMagicGameObject.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TMagicGameObject.Create(bufferedImage: TArray<TBufferedImage>; minX: Integer; maxX: Integer; y: Integer);
begin
        inherited Create(bufferedImage, minX, maxX, y);
        InitFields;
end;
    

function TMagicGameObject.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append(TCommonSeps.getInstance().NEW_LINE);
        stringBuffer.append(Self.MP_LABEL);
        stringBuffer.append(inherited toString());
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

