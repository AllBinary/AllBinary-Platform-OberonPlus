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
// package org.allbinary.game.health
unit HealthBarFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AllBinaryLayer, HealthBar, Health;

type
  {AB:TYPES}
  THealthBarFactory = class(TObject)
  public
    constructor Create;
        function getInstance(layerInterface: TAllBinaryLayer; healthInterface: THealth; location: Integer; direction: Integer): THealthBar; virtual;
  end;

implementation
uses
  HealthBarTwodAnimation, HealthBarAnimationInterfaceFactory, OpenGLFeatureUtil, FeaturedAnimationInterfaceFactoryInterfaceFactory;


{AB:CODE}

constructor THealthBarFactory.Create;
begin
  inherited Create;
end;
    

// throws Exception
function THealthBarFactory.getInstance(layerInterface: TAllBinaryLayer; healthInterface: THealth; location: Integer; direction: Integer): THealthBar;
var
  featuredAnimationInterfaceFactoryInterfaceFactory_: TFeaturedAnimationInterfaceFactoryInterfaceFactory;
  healthBarAnimationInterfaceFactory_: THealthBarAnimationInterfaceFactory;
begin
        if TOpenGLFeatureUtil.getInstance().isAnyThreed() then begin
            featuredAnimationInterfaceFactoryInterfaceFactory_ := TFeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance();
            healthBarAnimationInterfaceFactory_ := THealthBarAnimationInterfaceFactory(TJava.ToObject(featuredAnimationInterfaceFactoryInterfaceFactory_.get(THealth.NAME)));
            Exit(THealthBar.Create(layerInterface, healthInterface, healthBarAnimationInterfaceFactory_.getInstanceByLocation(layerInterface, location), direction));
        end else begin
            Exit(THealthBar.Create(layerInterface, healthInterface, THealthBarTwodAnimation.Create(layerInterface, location), direction));
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

