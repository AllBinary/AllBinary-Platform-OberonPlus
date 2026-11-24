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
// package org.allbinary.game.layer
unit CollidableVehicleBehavior;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CollidableInterfaceCompositeInterface, CollidableDestroyableDamageableBehavior, CollidableCompositeLayer, VehiclePropertiesCompositeInterface;

type
  {AB:TYPES}
  TCollidableVehicleBehavior = class(TCollidableDestroyableDamageableBehavior)
  public
    totalImpactVelocity: Int64;
    halfImpactVelocityX: Int64;
    halfImpactVelocityY: Int64;
    procedure InitFields;
        constructor Create(collidable: Boolean);
        procedure collide(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface_: TCollidableCompositeLayer); override;
        procedure collideInterface(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface_: ICollidableInterfaceCompositeInterface); override;
        procedure collideVehicle(ownerLayer: TCollidableCompositeLayer; vehiclePropertiesCompositeInterface_: IVehiclePropertiesCompositeInterface); virtual;
        procedure collideFriction(vehiclePropertiesCompositeInterface_: IVehiclePropertiesCompositeInterface);
  end;

implementation
uses
  VehicleProperties, VehicleFrictionProperties, PickedUpLayerInterface, ForcedLogUtil, CollisionType, CollisionTypeFactory, CollidableDestroyableDamageableLayer;


{AB:CODE}

procedure TCollidableVehicleBehavior.InitFields;
begin
  Self.totalImpactVelocity := 0;
  
  
end;
    

constructor TCollidableVehicleBehavior.Create(collidable: Boolean);
begin
        inherited Create(collidable);
        InitFields;
end;
    

// throws Exception
procedure TCollidableVehicleBehavior.collide(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface_: TCollidableCompositeLayer);
var
  collisionTypeFactory_: TCollisionTypeFactory;
  collisionType_: TCollisionType;
  collidableDestroyableDamageableLayer_: TCollidableDestroyableDamageableLayer;
begin
        collisionTypeFactory_ := TCollisionTypeFactory.getInstance();
        collisionType_ := collidableInterfaceCompositeInterface_.getCollidableInferface().getCollisionTypeWith(ownerLayer);
        if (collisionType_) = (collisionTypeFactory_.PICKUP) then begin
            collidableDestroyableDamageableLayer_ := (TCollidableDestroyableDamageableLayer(TJava.ToObject(ownerLayer)));
            collidableDestroyableDamageableLayer_.getPickupBehavior().doPickupLayer((TJava.ToObject(collidableInterfaceCompositeInterface_) as IPickedUpLayerInterface));
        end else if (collisionType_) = (collisionTypeFactory_.COLLISION) then begin
            inherited collide(ownerLayer, collidableInterfaceCompositeInterface_);
        end else begin
            Self.collideVehicle(ownerLayer, (TJava.ToObject(collidableInterfaceCompositeInterface_) as IVehiclePropertiesCompositeInterface));
        end;
end;
    

procedure TCollidableVehicleBehavior.collideInterface(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface_: ICollidableInterfaceCompositeInterface);
begin
        TForcedLogUtil.log('Don''t Use Interface Version It Is Slower', TJava.Box(Self));
end;
    

procedure TCollidableVehicleBehavior.collideVehicle(ownerLayer: TCollidableCompositeLayer; vehiclePropertiesCompositeInterface_: IVehiclePropertiesCompositeInterface);
var
  ownerVehicleLayerInterface: IVehiclePropertiesCompositeInterface;
  ownerVehicleProperties: TVehicleProperties;
  vehicleProperties_: TVehicleProperties;
  impactVelocityX: Int64;
  impactVelocityY: Int64;
begin
        ownerVehicleLayerInterface := ((TJava.ToObject(ownerLayer) as IVehiclePropertiesCompositeInterface));
        ownerVehicleProperties := ownerVehicleLayerInterface.getVehicleProperties();
        vehicleProperties_ := vehiclePropertiesCompositeInterface_.getVehicleProperties();
        impactVelocityX := (ownerVehicleProperties.getVelocityProperties().getVelocityXBasicDecimalP().getUnscaled()) - (vehicleProperties_.getVelocityProperties().getVelocityXBasicDecimalP().getUnscaled());
        impactVelocityY := (ownerVehicleProperties.getVelocityProperties().getVelocityYBasicDecimalP().getUnscaled()) - (vehicleProperties_.getVelocityProperties().getVelocityYBasicDecimalP().getUnscaled());
        if (impactVelocityX) <> (0) then begin
            Self.halfImpactVelocityX := (TJava.SignedRightShift(impactVelocityX, 1));
            ownerVehicleProperties.getVelocityProperties().getVelocityXBasicDecimalP().addlong(Self.halfImpactVelocityX);
            vehicleProperties_.getVelocityProperties().getVelocityXBasicDecimalP().addlong(Self.halfImpactVelocityX);
        end else begin
        end;
        if (impactVelocityY) <> (0) then begin
            Self.halfImpactVelocityY := (TJava.SignedRightShift(impactVelocityY, 1));
            ownerVehicleProperties.getVelocityProperties().getVelocityYBasicDecimalP().addlong(Self.halfImpactVelocityY);
            vehicleProperties_.getVelocityProperties().getVelocityXBasicDecimalP().addlong(Self.halfImpactVelocityY);
        end else begin
        end;
        Self.collideFriction(ownerVehicleLayerInterface);
        Self.collideFriction(vehiclePropertiesCompositeInterface_);
        Self.totalImpactVelocity := (impactVelocityX) + (impactVelocityY);
end;
    

procedure TCollidableVehicleBehavior.collideFriction(vehiclePropertiesCompositeInterface_: IVehiclePropertiesCompositeInterface);
var
  vehicleFrictionProperties_: TVehicleFrictionProperties;
begin
        vehicleFrictionProperties_ := vehiclePropertiesCompositeInterface_.getVehicleProperties().getVehicleFrictionProperties();
        vehiclePropertiesCompositeInterface_.getVehicleProperties().getVehicleFrictionProperties().friction(vehiclePropertiesCompositeInterface_.getVehicleProperties().getVelocityProperties(), vehicleFrictionProperties_.getCrashFrictionNominator());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

