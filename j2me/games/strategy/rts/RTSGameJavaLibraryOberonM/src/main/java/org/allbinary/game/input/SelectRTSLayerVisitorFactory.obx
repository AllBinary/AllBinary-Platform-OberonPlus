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
// package org.allbinary.game.input
unit SelectRTSLayerVisitorFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Visitor, SelectedRTSLayersPlayerGameInput, SelectRTSLayerVisitorFactoryInterface;

type
  {AB:TYPES}
  TSelectRTSLayerVisitorFactory = class(TInterfacedObject, ISelectRTSLayerVisitorFactoryInterface)
  public
    class var instance: TSelectRTSLayerVisitorFactory;
    function JavaObject: TObject;
        class function getInstance: TSelectRTSLayerVisitorFactory; static;
        constructor Create;
        function create_(selectedRTSLayersPlayerGameInput_: TSelectedRTSLayersPlayerGameInput): TVisitor; virtual;
  end;

implementation
uses
  SelectRTSLayerVisitor;


{AB:CODE}

function TSelectRTSLayerVisitorFactory.JavaObject: TObject;
begin
  Result := Self;
end;
    

class function TSelectRTSLayerVisitorFactory.getInstance: TSelectRTSLayerVisitorFactory;
begin
        Exit(TSelectRTSLayerVisitorFactory.instance);
end;
    

constructor TSelectRTSLayerVisitorFactory.Create;
begin
    inherited Create;
end;
    

function TSelectRTSLayerVisitorFactory.create_(selectedRTSLayersPlayerGameInput_: TSelectedRTSLayersPlayerGameInput): TVisitor;
begin
        Exit(TSelectRTSLayerVisitor.Create());
end;

initialization
  {AB:INITIALIZATION}
  TSelectRTSLayerVisitorFactory.instance := TSelectRTSLayerVisitorFactory.Create();
  {AB:END}

end.

