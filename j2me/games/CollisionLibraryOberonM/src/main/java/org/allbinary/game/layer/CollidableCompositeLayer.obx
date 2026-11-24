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
unit CollidableCompositeLayer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ArtificialIntelligenceInterface, CollidableBaseBehavior, CollidableBaseBehaviorFactory, CollidableInterfaceCompositeInterface, Rectangle, StringMaker, ViewPositionBase, AllBinaryGameLayer;

type
  {AB:TYPES}
  TCollidableCompositeLayer = class(TAllBinaryGameLayer, ICollidableInterfaceCompositeInterface)
  public
    collidableInferface: TCollidableBaseBehavior;
    class var NULL_COLLIDABLE_COMPOSITE_LAYER: TObject;
    procedure InitFields;
    function JavaObject: TObject;
        class function getNullInstance: TCollidableCompositeLayer; static;
        constructor Create(name: string; layerInfo: TRectangle; viewPosition: TViewPositionBase; collidableBaseBehaviorFactory_: TCollidableBaseBehaviorFactory);
        function getArtificialIntelligenceInterface: IArtificialIntelligenceInterface; virtual;
        function getCollidableInferface: TCollidableBaseBehavior; virtual;
        procedure setCollidableInferface(collidableInferface: TCollidableBaseBehavior); virtual;
        function implmentsCollidableInterface: Boolean; virtual;
        procedure toStringAppend(stringBuffer: TStringMaker); virtual;
        function toString: string; override;
  end;

implementation
uses
  ArtificialIntelligence, CollidableNeverCollideBehaviorFactory, RectangleFactory, ForcedLogUtil, StringUtil, CommonSeps, NullUtil;


{AB:CODE}

procedure TCollidableCompositeLayer.InitFields;
begin
  Self.collidableInferface := TCollidableNeverCollideBehaviorFactory.getInstance().createBehavior();
end;

function TCollidableCompositeLayer.JavaObject: TObject;
begin
  Result := Self;
end;
    

class function TCollidableCompositeLayer.getNullInstance: TCollidableCompositeLayer;
begin
        if (TCollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER) = (TNullUtil.getInstance().NULL_OBJECT) then begin
            TCollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER := TCollidableCompositeLayer.Create(TStringUtil.getInstance().EMPTY_STRING, TRectangleFactory.SINGLETON, TViewPositionBase.NULL_VIEW_POSITION, TCollidableNeverCollideBehaviorFactory.getInstance());
        end;
        Exit(TCollidableCompositeLayer(TJava.ToObject(TCollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER)));
end;
    

constructor TCollidableCompositeLayer.Create(name: string; layerInfo: TRectangle; viewPosition: TViewPositionBase; collidableBaseBehaviorFactory_: TCollidableBaseBehaviorFactory);
begin
        inherited Create(name, layerInfo, viewPosition);
        InitFields;
        if (collidableBaseBehaviorFactory_) <> (TCollidableNeverCollideBehaviorFactory.getInstance()) then begin
            Self.setCollidableInferface(collidableBaseBehaviorFactory_.createBehavior());
        end;
end;
    

function TCollidableCompositeLayer.getArtificialIntelligenceInterface: IArtificialIntelligenceInterface;
begin
        TForcedLogUtil.log(Self.commonStrings.NOT_IMPLEMENTED, TJava.Box(Self));
        Exit(TArtificialIntelligence.getInstance());
end;
    

function TCollidableCompositeLayer.getCollidableInferface: TCollidableBaseBehavior;
begin
        Exit(Self.collidableInferface);
end;
    

procedure TCollidableCompositeLayer.setCollidableInferface(collidableInferface: TCollidableBaseBehavior);
begin
        Self.collidableInferface := collidableInferface;
end;
    

function TCollidableCompositeLayer.implmentsCollidableInterface: Boolean;
begin
        Exit(True);
end;
    

procedure TCollidableCompositeLayer.toStringAppend(stringBuffer: TStringMaker);
var
  commonSeps_: TCommonSeps;
begin
        commonSeps_ := TCommonSeps.getInstance();
        inherited toStringAppend(stringBuffer);
        stringBuffer.append(commonSeps_.NEW_LINE);
        stringBuffer.append(Self.getCollidableInferface().toString());
end;
    

function TCollidableCompositeLayer.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        Self.toStringAppend(stringBuffer);
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  TCollidableCompositeLayer.NULL_COLLIDABLE_COMPOSITE_LAYER := TJava.Box(TNullUtil.getInstance().NULL_OBJECT);
  {AB:END}

end.

