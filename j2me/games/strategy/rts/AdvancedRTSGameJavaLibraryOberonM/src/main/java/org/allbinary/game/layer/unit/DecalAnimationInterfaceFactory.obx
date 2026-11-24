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
unit DecalAnimationInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicGameResources, AnimationInterfaceFactoryInterface, BasicColor;

type
  {AB:TYPES}
  TDecalAnimationInterfaceFactory = class(TObject)
  public
    class var instance: TDecalAnimationInterfaceFactory;
    constructor Create;
        class function getInstance: TDecalAnimationInterfaceFactory; static;
        function getAnimationFactory(basicGameResources_: TBasicGameResources; basicColor_: TBasicColor): IAnimationInterfaceFactoryInterface; virtual;
  end;

implementation
uses
  FeaturedAnimationInterfaceFactoryInterfaceFactory, NullRotationAnimationFactory, BasicColorFactory;


{AB:CODE}

constructor TDecalAnimationInterfaceFactory.Create;
begin
  inherited Create;
end;
    

class function TDecalAnimationInterfaceFactory.getInstance: TDecalAnimationInterfaceFactory;
begin
        Exit(TDecalAnimationInterfaceFactory.instance);
end;
    

// throws Exception
function TDecalAnimationInterfaceFactory.getAnimationFactory(basicGameResources_: TBasicGameResources; basicColor_: TBasicColor): IAnimationInterfaceFactoryInterface;
var
  animationInterfaceFactoryInterface_: IAnimationInterfaceFactoryInterface;
begin
        
        if (basicColor_) = (TBasicColorFactory.getInstance().RED) then begin
            animationInterfaceFactoryInterface_ := TFeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance().get(basicGameResources_.RESOURCE);
        end else begin
            animationInterfaceFactoryInterface_ := TNullRotationAnimationFactory.getFactoryInstance();
        end;
        Exit(animationInterfaceFactoryInterface_);
end;

initialization
  {AB:INITIALIZATION}
  TDecalAnimationInterfaceFactory.instance := TDecalAnimationInterfaceFactory.Create();
  {AB:END}

end.

