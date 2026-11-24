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
// package org.allbinary.game.layer.hud.basic
unit ImageHealthGraphic;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, Image, AnimationInterface, HealthInterface, HealthGraphic;

type
  {AB:TYPES}
  TImageHealthGraphic = class(THealthGraphic)
  public
    image: TArray<TImage>;
    procedure InitFields;
        constructor Create(animationInterface_: IAnimationInterface; healthInterface_: IHealthInterface; location: Integer; direction: Integer);
        procedure paint(graphics_: TGraphics); virtual;
  end;

implementation
uses
  Anchor, ImageCacheFactory;


{AB:CODE}

procedure TImageHealthGraphic.InitFields;
begin
  
end;
    

constructor TImageHealthGraphic.Create(animationInterface_: IAnimationInterface; healthInterface_: IHealthInterface; location: Integer; direction: Integer);
var
  imageCacheFactory_: TImageCacheFactory;
  numOfHealth: Integer;
  index: Integer;
begin
        inherited Create(animationInterface_, healthInterface_, location, direction);
        InitFields;
        Self.image := TJava.NewArray<TImage>(Self.healthInterface.getMaxHealth());
        imageCacheFactory_ := TImageCacheFactory.getInstance();
        for numOfHealth := 0 to Self.max do begin
            Self.image[numOfHealth] := imageCacheFactory_.get(Self, (numOfHealth) + ((1) * (10)), 10);
        end;
        for numOfHealth := 0 to Self.max do begin
            for index := 0 to numOfHealth - 1 do begin
                Self.animationInterface.paint(Self.image[numOfHealth].getGraphics(), (numOfHealth) * (10), 0);
            end;
        end;
end;
    

procedure TImageHealthGraphic.paint(graphics_: TGraphics);
begin
        graphics_.drawImage(Self.image[Self.max], Self.x, Self.y, TAnchor.TOP_LEFT);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

