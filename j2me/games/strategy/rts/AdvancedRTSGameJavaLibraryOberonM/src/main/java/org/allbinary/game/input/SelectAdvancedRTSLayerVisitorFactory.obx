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
unit SelectAdvancedRTSLayerVisitorFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Visitor, SelectedRTSLayersPlayerGameInput, SelectRTSLayerVisitorFactoryInterface;

type
  {AB:TYPES}
  TSelectAdvancedRTSLayerVisitorFactory = class(TInterfacedObject, ISelectRTSLayerVisitorFactoryInterface)
  public
    class var instance: TSelectAdvancedRTSLayerVisitorFactory;
    function JavaObject: TObject;
        class function getInstance: TSelectAdvancedRTSLayerVisitorFactory; static;
        constructor Create;
        function create_(selectedRTSLayersPlayerGameInput_: TSelectedRTSLayersPlayerGameInput): TVisitor; virtual;
  end;

implementation
uses
  SelectAdvancedRTSLayerVisitor;


{AB:CODE}

function TSelectAdvancedRTSLayerVisitorFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

class function TSelectAdvancedRTSLayerVisitorFactory.getInstance: TSelectAdvancedRTSLayerVisitorFactory;
begin
        Exit(TSelectAdvancedRTSLayerVisitorFactory.instance);
end;
    

constructor TSelectAdvancedRTSLayerVisitorFactory.Create;
begin
    inherited Create;
end;
    

function TSelectAdvancedRTSLayerVisitorFactory.create_(selectedRTSLayersPlayerGameInput_: TSelectedRTSLayersPlayerGameInput): TVisitor;
begin
        Exit(TSelectAdvancedRTSLayerVisitor.Create(selectedRTSLayersPlayerGameInput_));
end;

initialization
  {AB:INITIALIZATION}
  TSelectAdvancedRTSLayerVisitorFactory.instance := TSelectAdvancedRTSLayerVisitorFactory.Create();
  {AB:END}

end.

