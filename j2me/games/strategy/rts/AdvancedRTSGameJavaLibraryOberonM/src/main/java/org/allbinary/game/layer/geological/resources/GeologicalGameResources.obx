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
// package org.allbinary.game.layer.geological.resources
unit GeologicalGameResources;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicGameResources;

type
  {AB:TYPES}
  TGeologicalGameResources = class(TBasicGameResources)
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
    

class function TGeologicalGameResources.getInstance: TBasicGameResources;
begin
        if (TGeologicalGameResources.instance) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TGeologicalGameResources.instance := TGeologicalGameResources.Create();
        end;
        Exit(TGeologicalGameResources(TJava.ToObject(TGeologicalGameResources.instance)));
end;
    

constructor TGeologicalGameResources.Create;
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
        ROOT := '/resource';
        SMALL := '_20_by_20.png';
        MEDIUM := SMALL;
        SIZE_FOUR := SMALL;
        SIZE_FIVE := SMALL;
        SIZE_SIX := SMALL;
        SIZE := TArray<string>.Create(SMALL, MEDIUM, SIZE_FOUR, SIZE_FIVE, SIZE_SIX);
        inherited init(ROOT, SIZE);
end;
    

// throws Exception
procedure TGeologicalGameResources.append(ROOT: string; sizeString: string);
begin
        inherited append(ROOT, sizeString);
end;
    

// throws Exception
function TGeologicalGameResources.getString: string;
begin
        if TAndroidUtil.isAndroid() then begin
            Exit(TGameGraphicsResourceUtil.getInstance().getStringForFeature(TGraphicsFeatureFactory.getInstance().SPRITE_QUARTER_ROTATION_GRAPHICS));
        end else begin
            Exit(inherited getString());
        end;
end;

initialization
  {AB:INITIALIZATION}
  TGeologicalGameResources.instance := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

