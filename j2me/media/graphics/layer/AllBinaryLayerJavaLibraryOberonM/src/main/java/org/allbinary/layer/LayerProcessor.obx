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
// package org.allbinary.layer
unit LayerProcessor;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CommonStrings, ABLayerManager, AllBinaryLayerManager, AllBinaryLayer, LayerProcessorInterface, BasicLayerProcessorInterface;

type
  {AB:TYPES}
  TLayerProcessor = class(TInterfacedObject, ILayerProcessorInterface, IBasicLayerProcessorInterface)
  public
    commonStrings: TCommonStrings;
    layerManager: TABLayerManager;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(layerManager: TABLayerManager);
        procedure processAt(allBinaryLayerManager_: TAllBinaryLayerManager; layerInterface: TAllBinaryLayer; index: Integer); virtual;
        function isProcessorLayer(layerInterface: TAllBinaryLayer): Boolean; virtual;
        function getLayerManager: TABLayerManager; virtual;
        procedure process(allBinaryLayerManager_: TAllBinaryLayerManager); virtual;
  end;

implementation

{AB:CODE}

procedure TLayerProcessor.InitFields;
begin
  Self.commonStrings := TCommonStrings.getInstance();
  
end;

function TLayerProcessor.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TLayerProcessor.Create(layerManager: TABLayerManager);
begin
    inherited Create;
    InitFields;
        Self.layerManager := layerManager;
end;
    

// throws Exception
procedure TLayerProcessor.processAt(allBinaryLayerManager_: TAllBinaryLayerManager; layerInterface: TAllBinaryLayer; index: Integer);
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

// throws Exception
function TLayerProcessor.isProcessorLayer(layerInterface: TAllBinaryLayer): Boolean;
begin
        raise SysUtils.Exception.Create(Self.commonStrings.NOT_IMPLEMENTED);
end;
    

function TLayerProcessor.getLayerManager: TABLayerManager;
begin
        Exit(Self.layerManager);
end;
    

// throws Exception
procedure TLayerProcessor.process(allBinaryLayerManager_: TAllBinaryLayerManager);
var
  layerManager: TABLayerManager;
  size: Integer;
  index: Integer;
begin
        layerManager := Self.getLayerManager();
        size := layerManager.getSize();
        for index := 0 to size - 1 do begin
            Self.processAt(allBinaryLayerManager_, TAllBinaryLayer(TJava.ToObject(layerManager.getLayerAt(index))), index);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

