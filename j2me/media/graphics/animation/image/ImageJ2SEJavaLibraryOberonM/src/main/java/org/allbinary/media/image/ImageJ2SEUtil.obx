{
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.media.image
unit ImageJ2SEUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TImageJ2SEUtil = class(TObject)
  public
    TRANSPARENT_COLOR: TColor;
    class var instance: TImageJ2SEUtil;
    procedure InitFields;
    constructor Create;
        class function getInstance: TImageJ2SEUtil; static;
  end;

implementation

{AB:CODE}

procedure TImageJ2SEUtil.InitFields;
begin
  Self.TRANSPARENT_COLOR := TColor.Create(0, 0, 0, 0);
end;

constructor TImageJ2SEUtil.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TImageJ2SEUtil.getInstance: TImageJ2SEUtil;
begin
        Exit(TImageJ2SEUtil.instance);
end;

initialization
  {AB:INITIALIZATION}
  TImageJ2SEUtil.instance := TImageJ2SEUtil.Create();
  {AB:END}

end.

