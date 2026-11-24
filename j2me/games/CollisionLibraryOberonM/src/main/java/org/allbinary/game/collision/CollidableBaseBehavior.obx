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
// package org.allbinary.game.collision
unit CollidableBaseBehavior;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Graphics, CollidableCompositeLayer, AllBinaryLayer, LogUtil, CommonStrings, LayerCollisionUtil, CollidableInterfaceCompositeInterface, CollisionType, CollidableInterface, NamedInterface;

type
  {AB:TYPES}
  TCollidableBaseBehavior = class(TInterfacedObject, ICollidableInterface, INamedInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    layerCollisionUtil: TLayerCollisionUtil;
    collidable: Boolean;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(collidable: Boolean);
        procedure update; virtual;
        function getName: string; virtual;
        procedure setCollidable(collidable: Boolean); virtual;
        function isCollidable(ownerLayer: TCollidableCompositeLayer): Boolean; virtual;
        procedure collide(ownerLayer: TCollidableCompositeLayer; allbinaryCollidableLayer: TCollidableCompositeLayer); virtual;
        function isCollision(ownerLayer: TCollidableCompositeLayer; collisionLayer: TCollidableCompositeLayer): Boolean; virtual;
        function isCollisionInterface(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface_: ICollidableInterfaceCompositeInterface): Boolean; virtual;
        procedure collideInterface(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface_: ICollidableInterfaceCompositeInterface); virtual;
        procedure paint(ownerLayer: TCollidableCompositeLayer; graphics_: TGraphics); virtual;
        function getCollisionTypeWith(layerInterface: TAllBinaryLayer): TCollisionType; virtual;
  end;

implementation
uses
  CollisionTypeFactory, StringMaker, CommonLabels;


{AB:CODE}

procedure TCollidableBaseBehavior.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.layerCollisionUtil := TLayerCollisionUtil.getInstance();
  Self.collidable := True;
end;

function TCollidableBaseBehavior.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCollidableBaseBehavior.Create(collidable: Boolean);
begin
    inherited Create;
    InitFields;
        Self.collidable := collidable;
end;
    

procedure TCollidableBaseBehavior.update;
begin
end;
    

function TCollidableBaseBehavior.getName: string;
begin
        Exit(Self.ClassType.ClassName);
end;
    

procedure TCollidableBaseBehavior.setCollidable(collidable: Boolean);
begin
        Self.collidable := collidable;
end;
    

function TCollidableBaseBehavior.isCollidable(ownerLayer: TCollidableCompositeLayer): Boolean;
begin
        Exit(Self.collidable);
end;
    

// throws Exception
procedure TCollidableBaseBehavior.collide(ownerLayer: TCollidableCompositeLayer; allbinaryCollidableLayer: TCollidableCompositeLayer);
begin
        raise SysUtils.Exception.Create(TStringMaker.Create().append(Self.commonStrings.NOT_IMPLEMENTED).append(TCommonLabels.getInstance().COLON_SEP).append(Self.ClassType.ClassName).toString());
end;
    

function TCollidableBaseBehavior.isCollision(ownerLayer: TCollidableCompositeLayer; collisionLayer: TCollidableCompositeLayer): Boolean;
begin
        Exit(Self.layerCollisionUtil.isCollision(ownerLayer, collisionLayer));
end;
    

function TCollidableBaseBehavior.isCollisionInterface(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface_: ICollidableInterfaceCompositeInterface): Boolean;
begin
        Exit(Self.layerCollisionUtil.isCollision(ownerLayer, TAllBinaryLayer(TJava.ToObject(collidableInterfaceCompositeInterface_))));
end;
    

// throws Exception
procedure TCollidableBaseBehavior.collideInterface(ownerLayer: TCollidableCompositeLayer; collidableInterfaceCompositeInterface_: ICollidableInterfaceCompositeInterface);
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

procedure TCollidableBaseBehavior.paint(ownerLayer: TCollidableCompositeLayer; graphics_: TGraphics);
begin
end;
    

function TCollidableBaseBehavior.getCollisionTypeWith(layerInterface: TAllBinaryLayer): TCollisionType;
begin
        Exit(TCollisionTypeFactory.getInstance().NONE);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

