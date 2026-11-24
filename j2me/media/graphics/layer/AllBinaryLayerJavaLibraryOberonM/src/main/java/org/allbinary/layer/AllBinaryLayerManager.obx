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
unit AllBinaryLayerManager;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LayerManagerEvent, LayerManagerEventHandler, AllBinaryLayer, LayerProcessor, ABLayerManager;

type
  {AB:TYPES}
  TAllBinaryLayerManager = class(TABLayerManager)
  public
    layerManagerEventHandler: TLayerManagerEventHandler;
    createLayerManagerEvent: TLayerManagerEvent;
    deleteLayerManagerEvent: TLayerManagerEvent;
    basicLayerProcessorArray: TArray<TLayerProcessor>;
    procedure InitFields;
        constructor Create;
        function getLayerProcessorArray: TArray<TLayerProcessor>; virtual;
        procedure setLayerProcessorArray(layerProcessorArray: TArray<TLayerProcessor>); virtual;
        procedure log;
        procedure append(layerInterface: TAllBinaryLayer); override;
        procedure appendAt(layerInterface: TAllBinaryLayer; index: Integer); override;
        procedure appendProcessors(layerInterface: TAllBinaryLayer);
        procedure remove(layerInterface: TAllBinaryLayer); override;
        procedure process; virtual;
        procedure cleanup; override;
  end;

implementation
uses
  LayerManagerNoDebug;


{AB:CODE}

procedure TAllBinaryLayerManager.InitFields;
begin
  Self.layerManagerEventHandler := TLayerManagerEventHandler.getInstance();
  Self.createLayerManagerEvent := TLayerManagerEvent.Create(Self, Self.layerManagerEventHandler.CREATE_);
  Self.deleteLayerManagerEvent := TLayerManagerEvent.Create(Self, Self.layerManagerEventHandler.DELETE_);
  Self.basicLayerProcessorArray := nil;
end;
    

constructor TAllBinaryLayerManager.Create;
begin
        inherited Create(TLayerManagerNoDebug.getInstance());
        InitFields;
end;
    

function TAllBinaryLayerManager.getLayerProcessorArray: TArray<TLayerProcessor>;
begin
        Exit(Self.basicLayerProcessorArray);
end;
    

procedure TAllBinaryLayerManager.setLayerProcessorArray(layerProcessorArray: TArray<TLayerProcessor>);
begin
        Self.basicLayerProcessorArray := layerProcessorArray;
end;
    

procedure TAllBinaryLayerManager.log;
var
  size: Integer;
  layerProcessorInterface: TLayerProcessor;
  index: Integer;
begin
        size := System.Length(Self.basicLayerProcessorArray);
        for index := 0 to size - 1 do begin
            layerProcessorInterface := Self.basicLayerProcessorArray[index];
        end;
end;
    

// throws Exception
procedure TAllBinaryLayerManager.append(layerInterface: TAllBinaryLayer);
begin
        if not (Self.contains(layerInterface)) then begin
            Self.appendProcessors(layerInterface);
            inherited append(layerInterface);
        end;
end;
    

// throws Exception
procedure TAllBinaryLayerManager.appendAt(layerInterface: TAllBinaryLayer; index: Integer);
begin
        if not (Self.contains(layerInterface)) then begin
            Self.appendProcessors(layerInterface);
            inherited appendAt(layerInterface, index);
        end;
end;
    

// throws Exception
procedure TAllBinaryLayerManager.appendProcessors(layerInterface: TAllBinaryLayer);
var
  layerProcessorInterface: TLayerProcessor;
  index: Integer;
begin
        Self.createLayerManagerEvent.setLayerInterface(layerInterface);
        Self.layerManagerEventHandler.fireEvent(Self.createLayerManagerEvent);
        
        index := System.Length(Self.basicLayerProcessorArray);
        while (TJava.PreDec(index)) >= (0) do begin
            layerProcessorInterface := Self.basicLayerProcessorArray[index];
            if layerProcessorInterface.isProcessorLayer(layerInterface) then begin
                layerProcessorInterface.getLayerManager().append(layerInterface);
            end;
        end;
end;
    

// throws Exception
procedure TAllBinaryLayerManager.remove(layerInterface: TAllBinaryLayer);
var
  layerProcessorInterface: TLayerProcessor;
  index: Integer;
begin
    TJava.MonitorEnter(Self);
    try
        Self.deleteLayerManagerEvent.setLayerInterface(layerInterface);
        Self.layerManagerEventHandler.fireDeleteEvent(Self.deleteLayerManagerEvent);
        
        index := System.Length(Self.basicLayerProcessorArray);
        while (TJava.PreDec(index)) >= (0) do begin
            layerProcessorInterface := Self.basicLayerProcessorArray[index];
            layerProcessorInterface.getLayerManager().remove(layerInterface);
        end;
        inherited remove(layerInterface);
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
procedure TAllBinaryLayerManager.process;
var
  layerProcessorInterface: TLayerProcessor;
  size: Integer;
  index: Integer;
begin
        
        size := System.Length(Self.basicLayerProcessorArray);
        for index := 0 to size - 1 do begin
            layerProcessorInterface := Self.basicLayerProcessorArray[index];
            layerProcessorInterface.process(Self);
        end;
end;
    

// throws Exception
procedure TAllBinaryLayerManager.cleanup;
var
  layerProcessorInterface: TLayerProcessor;
  size: Integer;
  index: Integer;
begin
        
        size := System.Length(Self.basicLayerProcessorArray);
        for index := 0 to size - 1 do begin
            layerProcessorInterface := Self.basicLayerProcessorArray[index];
            layerProcessorInterface.getLayerManager().cleanup();
        end;
        inherited cleanup();
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

