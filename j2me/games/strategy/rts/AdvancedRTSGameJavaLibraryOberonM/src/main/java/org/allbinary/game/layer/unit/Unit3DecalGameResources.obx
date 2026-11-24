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
unit Unit3DecalGameResources;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicGameResources;

type
  {AB:TYPES}
  TUnit3DecalGameResources = class(TBasicGameResources)
  public
    class var instance: TObject;
        class function getInstance: TBasicGameResources; static;
        constructor Create;
        procedure append(ROOT: string; sizeString: string); override;
        function getString: string; override;
  end;

implementation
uses
  GameGraphicsResourceUtil, AndroidUtil, GraphicsFeatureFactory, NullUtil;


{AB:CODE}
    

class function TUnit3DecalGameResources.getInstance: TBasicGameResources;
begin
        if (TUnit3DecalGameResources.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TUnit3DecalGameResources.instance := TUnit3DecalGameResources.Create();
        end;
        Exit(TUnit3DecalGameResources(TJava.ToObject(TUnit3DecalGameResources.instance)));
end;
    

constructor TUnit3DecalGameResources.Create;
var
  ROOT: string;
  SMALL: string;
  MEDIUM: string;
  SIZE_FOUR: string;
  SIZE_FIVE: string;
  SIZE_SIX: string;
  SIZE: TArray<string>;
begin
    inherited Create;
        ROOT := '/unit_decal';
        SMALL := '_40_by_40.png';
        MEDIUM := SMALL;
        SIZE_FOUR := SMALL;
        SIZE_FIVE := SMALL;
        SIZE_SIX := SMALL;
        SIZE := TArray<string>.Create(SMALL, MEDIUM, SIZE_FOUR, SIZE_FIVE, SIZE_SIX);
        inherited init(ROOT, SIZE);
end;
    

// throws Exception
procedure TUnit3DecalGameResources.append(ROOT: string; sizeString: string);
begin
        inherited append(ROOT, sizeString);
end;
    

// throws Exception
function TUnit3DecalGameResources.getString: string;
begin
        if TAndroidUtil.isAndroid() then begin
            Exit(TGameGraphicsResourceUtil.getInstance().getStringForFeature(TGraphicsFeatureFactory.getInstance().SPRITE_QUARTER_ROTATION_GRAPHICS));
        end else begin
            Exit(inherited getString());
        end;
end;

initialization
  {AB:INITIALIZATION}
  TUnit3DecalGameResources.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

