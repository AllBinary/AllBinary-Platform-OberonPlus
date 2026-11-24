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
// package org.allbinary.game.gd.resource
unit GDLazyResources;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TGDLazyResources = class(TObject)
  public
    imageResourceWidthArray: TArray<Integer>;
    imageResourceHeightArray: TArray<Integer>;
    requiredResourcesBeforeLoadingArray: TArray<string>;
    class var instance: TGDLazyResources;
    procedure InitFields;
    constructor Create;
        class function getInstance: TGDLazyResources; static;
  end;

implementation

{AB:CODE}

procedure TGDLazyResources.InitFields;
begin
  Self.imageResourceWidthArray := nil;
  Self.imageResourceHeightArray := nil;
  Self.requiredResourcesBeforeLoadingArray := nil;
end;

constructor TGDLazyResources.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TGDLazyResources.getInstance: TGDLazyResources;
begin
        Exit(TGDLazyResources.instance);
end;

initialization
  {AB:INITIALIZATION}
  TGDLazyResources.instance := TGDLazyResources.Create();
  {AB:END}

end.

