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
// package org.allbinary.logic.visual.transform.template.customizer.bodies
unit BodyData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TBodyData = class(TObject)
  public
    NAME: string;
    VIEWNAMEKEY: string;
    MIN: Integer;
    class var instance: TBodyData;
    procedure InitFields;
        constructor Create;
        class function getInstance: TBodyData; static;
  end;

implementation

{AB:CODE}

procedure TBodyData.InitFields;
begin
  Self.NAME := 'BODY_NAME';
  Self.VIEWNAMEKEY := 'Body';
  Self.MIN := 0;
end;
    

constructor TBodyData.Create;
begin
    inherited Create;
    InitFields;
end;
    

class function TBodyData.getInstance: TBodyData;
begin
        Exit(TBodyData.instance);
end;

initialization
  {AB:INITIALIZATION}
  TBodyData.instance := TBodyData.Create();
  {AB:END}

end.

