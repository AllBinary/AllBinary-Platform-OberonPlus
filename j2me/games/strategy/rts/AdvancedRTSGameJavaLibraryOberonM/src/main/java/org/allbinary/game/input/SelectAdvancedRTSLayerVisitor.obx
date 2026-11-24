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
// package org.allbinary.game.input
unit SelectAdvancedRTSLayerVisitor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Visitor, SelectedRTSLayersPlayerGameInput;

type
  {AB:TYPES}
  TSelectAdvancedRTSLayerVisitor = class(TVisitor)
  public
    selectedRTSLayersPlayerGameInput: TSelectedRTSLayersPlayerGameInput;
    procedure InitFields;
        constructor Create(selectedRTSLayersPlayerGameInput_: TSelectedRTSLayersPlayerGameInput);
        function visit(anyType: TObject): TObject; override;
  end;

implementation
uses
  AssignWaypointsUtil, AdvancedRTSGameLayer, RTSLayer, BuildingLayer, CollidableDestroyableDamageableLayer, UnitLayer, NullUtil, BasicArrayList;


{AB:CODE}

procedure TSelectAdvancedRTSLayerVisitor.InitFields;
begin
  
end;
    

constructor TSelectAdvancedRTSLayerVisitor.Create(selectedRTSLayersPlayerGameInput_: TSelectedRTSLayersPlayerGameInput);
begin
    inherited Create;
    InitFields;
        Self.selectedRTSLayersPlayerGameInput := selectedRTSLayersPlayerGameInput_;
end;
    

function TSelectAdvancedRTSLayerVisitor.visit(anyType: TObject): TObject;
var
  selectedLayer: TCollidableDestroyableDamageableLayer;
  rtsGameLayer: TAdvancedRTSGameLayer;
  assignWaypointsUtil_: TAssignWaypointsUtil;
  list: TBasicArrayList;
  currentRTSLayer: TRTSLayer;
  unitLayer_: TUnitLayer;
  index: Integer;
begin
        selectedLayer := TCollidableDestroyableDamageableLayer(TJava.ToObject(anyType));
        if ((selectedLayer) <> (TCollidableDestroyableDamageableLayer.getNullInstance())) and ((selectedLayer.getType()) = (TBuildingLayer.getStaticType())) then begin
            rtsGameLayer := TAdvancedRTSGameLayer(TJava.ToObject(selectedLayer));
            assignWaypointsUtil_ := TAssignWaypointsUtil.getInstance();
            list := Self.selectedRTSLayersPlayerGameInput.getSelectedBasicArrayList();
            
            
            for index := (list.size()) - (1) downto 0 do begin
                currentRTSLayer := TRTSLayer(TJava.ToObject(list.get(index)));
                if (currentRTSLayer.getType()) = (TUnitLayer.getStaticType()) then begin
                    unitLayer_ := TUnitLayer(TJava.ToObject(currentRTSLayer));
                    unitLayer_.setParentLayer(rtsGameLayer);
                    assignWaypointsUtil_.set_(unitLayer_, rtsGameLayer);
                end;
            end;
        end;
        Exit(TJava.Box(TNullUtil.getInstance().NULL_OBJECT));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

