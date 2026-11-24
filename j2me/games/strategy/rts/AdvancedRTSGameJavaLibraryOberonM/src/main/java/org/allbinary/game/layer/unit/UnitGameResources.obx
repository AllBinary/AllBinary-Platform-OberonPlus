{
 
  AllBinary Open License Version 1 
  Copyright (c) 2006 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer.unit
unit UnitGameResources;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicGameResources;

type
  {AB:TYPES}
  TUnitGameResources = class(TBasicGameResources)
  public
    NAME: string;
    RESOURCE_ICON_ANIMATION: string;
    RESOURCE_ICON_BUILD: string;
    RESOURCE_ICON: string;
    ICON_SIZE: string;
    class var ICON: string;
    class var BUILD: string;
    class var DESTROY: string;
    class var ICON_BUILD: string;
    procedure InitFields;
        constructor Create;
        procedure append(ROOT: string; sizeString: string); override;
        function getString: string; override;
  end;

implementation
uses
  GameGraphicsResourceUtil, AndroidUtil, GraphicsFeatureFactory, StringUtil;


{AB:CODE}

procedure TUnitGameResources.InitFields;
begin
  Self.NAME := TStringUtil.getInstance().EMPTY_STRING;
  Self.RESOURCE_ICON_ANIMATION := TStringUtil.getInstance().EMPTY_STRING;
  Self.RESOURCE_ICON_BUILD := TStringUtil.getInstance().EMPTY_STRING;
  Self.RESOURCE_ICON := TStringUtil.getInstance().EMPTY_STRING;
  Self.ICON_SIZE := '_64_by_64.png';
end;
    

constructor TUnitGameResources.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
procedure TUnitGameResources.append(ROOT: string; sizeString: string);
var
  string_: string;
begin
        inherited append(ROOT, sizeString);
        string_ := TGameGraphicsResourceUtil.getInstance().getName();
        TBasicGameResources.stringBuffer.delete_(0, TBasicGameResources.stringBuffer.length());
        TBasicGameResources.stringBuffer.append(ROOT);
        TBasicGameResources.stringBuffer.append(TUnitGameResources.DESTROY);
        TBasicGameResources.stringBuffer.append(string_);
        TBasicGameResources.stringBuffer.append(sizeString);
        Self.RESOURCE_DESTROY := TJava.ToString(TBasicGameResources.stringBuffer);
        TBasicGameResources.stringBuffer.delete_(0, TBasicGameResources.stringBuffer.length());
        TBasicGameResources.stringBuffer.append(TUnitGameResources.ICON);
        TBasicGameResources.stringBuffer.append(ROOT);
        Self.RESOURCE_ICON_ANIMATION := TJava.ToString(TBasicGameResources.stringBuffer);
        TBasicGameResources.stringBuffer.delete_(0, TBasicGameResources.stringBuffer.length());
        TBasicGameResources.stringBuffer.append(ROOT);
        TBasicGameResources.stringBuffer.append(TUnitGameResources.ICON);
        TBasicGameResources.stringBuffer.append(string_);
        TBasicGameResources.stringBuffer.append(Self.ICON_SIZE);
        Self.RESOURCE_ICON := TJava.ToString(TBasicGameResources.stringBuffer);
        TBasicGameResources.stringBuffer.delete_(0, TBasicGameResources.stringBuffer.length());
        TBasicGameResources.stringBuffer.append(ROOT);
        TBasicGameResources.stringBuffer.append(TUnitGameResources.ICON_BUILD);
        TBasicGameResources.stringBuffer.append(string_);
        TBasicGameResources.stringBuffer.append(Self.ICON_SIZE);
        Self.RESOURCE_ICON_BUILD := TJava.ToString(TBasicGameResources.stringBuffer);
end;
    

// throws Exception
function TUnitGameResources.getString: string;
begin
        if TAndroidUtil.isAndroid() then begin
            Exit(TGameGraphicsResourceUtil.getInstance().getStringForFeature(TGraphicsFeatureFactory.getInstance().SPRITE_QUARTER_ROTATION_GRAPHICS));
        end else begin
            Exit(inherited getString());
        end;
end;

initialization
  {AB:INITIALIZATION}
  TUnitGameResources.ICON := '_icon';
  TUnitGameResources.BUILD := '_build';
  TUnitGameResources.DESTROY := '_destroy';
  TUnitGameResources.ICON_BUILD := '_icon' + TJava.ToString(TUnitGameResources.BUILD);
  {AB:END}

end.

