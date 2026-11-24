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
unit PlayerOwnedRTSLayers;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList;

type
  {AB:TYPES}
  TPlayerOwnedRTSLayers = class(TObject)
  public
    rtsLayerList: TBasicArrayList;
    procedure InitFields;
    constructor Create;
        function toString: string; virtual;
  end;

implementation
uses
  StringMaker, BasicArrayListD;


{AB:CODE}

procedure TPlayerOwnedRTSLayers.InitFields;
begin
  Self.rtsLayerList := TBasicArrayListD.Create();
end;

constructor TPlayerOwnedRTSLayers.Create;
begin
  inherited Create;
  InitFields;
end;
    

function TPlayerOwnedRTSLayers.toString: string;
var
  stringBuffer: TStringMaker;
begin
        stringBuffer := TStringMaker.Create();
        stringBuffer.append('All: ');
        stringBuffer.appendint(Self.rtsLayerList.size());
        Exit(stringBuffer.toString());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

