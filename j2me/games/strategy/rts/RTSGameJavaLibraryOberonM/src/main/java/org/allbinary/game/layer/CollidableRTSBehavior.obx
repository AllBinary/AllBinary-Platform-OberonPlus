{
 
  AllBinary Open License Version 1 
  Copyright (c) 2003 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer
unit CollidableRTSBehavior;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CollidableDestroyableDamageableBehavior, CollidableCompositeLayer;

type
  {AB:TYPES}
  TCollidableRTSBehavior = class(TCollidableDestroyableDamageableBehavior)
  public
        constructor Create(collidable: Boolean);
        function isCollision(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface: TCollidableCompositeLayer): Boolean; override;
        procedure collide(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface: TCollidableCompositeLayer); override;
        procedure collideNone(ownerLayer: TCollidableCompositeLayer; collidableInterface: TCollidableCompositeLayer); virtual;
  end;

implementation
uses
  CollisionType, CollisionTypeFactory;


{AB:CODE}
    

constructor TCollidableRTSBehavior.Create(collidable: Boolean);
begin
        inherited Create(collidable);
end;
    

function TCollidableRTSBehavior.isCollision(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface: TCollidableCompositeLayer): Boolean;
var
  collisionTypeFactory_: TCollisionTypeFactory;
  collisionType_: TCollisionType;
begin
        collisionTypeFactory_ := TCollisionTypeFactory.getInstance();
        collisionType_ := collidableInterfaceCompositeInterface.getCollidableInferface().getCollisionTypeWith(ownerLayer);
        if (collisionType_) = (collisionTypeFactory_.PICKUP) then begin
        end else if (collisionType_) = (collisionTypeFactory_.COLLISION) then begin
            Exit(inherited isCollision(ownerLayer, collidableInterfaceCompositeInterface));
        end else begin
            if ((((collidableInterfaceCompositeInterface.getX2()) <= (ownerLayer.getXP())) or ((collidableInterfaceCompositeInterface.getY2()) <= (ownerLayer.getYP()))) or ((collidableInterfaceCompositeInterface.getYP()) >= (ownerLayer.getY2()))) or ((collidableInterfaceCompositeInterface.getXP()) >= (ownerLayer.getX2())) then begin
                Exit(False);
            end else begin
                Exit(True);
            end;
        end;
        Exit(False);
end;
    

// throws Exception
procedure TCollidableRTSBehavior.collide(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface: TCollidableCompositeLayer);
var
  collisionTypeFactory_: TCollisionTypeFactory;
  collisionType_: TCollisionType;
begin
        collisionTypeFactory_ := TCollisionTypeFactory.getInstance();
        collisionType_ := collidableInterfaceCompositeInterface.getCollidableInferface().getCollisionTypeWith(ownerLayer);
        if (collisionType_) = (collisionTypeFactory_.PICKUP) then begin
        end else if (collisionType_) = (collisionTypeFactory_.COLLISION) then begin
            inherited collide(ownerLayer, collidableInterfaceCompositeInterface);
        end else begin
            Self.collideNone(ownerLayer, collidableInterfaceCompositeInterface);
        end;
end;
    

// throws Exception
procedure TCollidableRTSBehavior.collideNone(ownerLayer: TCollidableCompositeLayer; collidableInterface: TCollidableCompositeLayer);
begin
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

