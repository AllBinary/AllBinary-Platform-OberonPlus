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
// package org.allbinary.game.view
unit StaticTileLayerViewPositionFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ViewPositionBase, ViewPositionFactoryInterface;

type
  {AB:TYPES}
  TStaticTileLayerViewPositionFactory = class(TInterfacedObject, IViewPositionFactoryInterface)
  public
    function JavaObject: TObject;
    constructor Create;
        function getInstance: TViewPositionBase; virtual;
  end;

implementation
uses
  StaticTileLayerIntoPositionViewPosition;


{AB:CODE}

function TStaticTileLayerViewPositionFactory.JavaObject: TObject;
begin
  Result := Self;
end;

constructor TStaticTileLayerViewPositionFactory.Create;
begin
  inherited Create;
end;
    

// throws Exception
function TStaticTileLayerViewPositionFactory.getInstance: TViewPositionBase;
begin
        Exit(TStaticTileLayerIntoPositionViewPosition.Create());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

