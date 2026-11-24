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
// package org.allbinary.media.graphics.geography.map
unit PathData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TPathData = class(TObject)
  public
    OFFSET: Integer;
    class var instance: TPathData;
    procedure InitFields;
    constructor Create;
        class function getInstance: TPathData; static;
  end;

implementation

{AB:CODE}

procedure TPathData.InitFields;
begin
  Self.OFFSET := 400;
end;

constructor TPathData.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TPathData.getInstance: TPathData;
begin
        Exit(TPathData.instance);
end;

initialization
  {AB:INITIALIZATION}
  TPathData.instance := TPathData.Create();
  {AB:END}

end.

