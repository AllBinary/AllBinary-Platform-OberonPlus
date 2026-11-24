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
// package org.allbinary.logic.visual.dhtml.style
unit StyleData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TStyleData = class(TObject)
  public
    NAME: string;
    NAMEMAXLEN: Integer;
    class var instance: TStyleData;
    procedure InitFields;
        class function getInstance: TStyleData; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TStyleData.InitFields;
begin
  Self.NAME := 'STYLE_NAME';
  Self.NAMEMAXLEN := 255;
end;
    

class function TStyleData.getInstance: TStyleData;
begin
        Exit(TStyleData.instance);
end;
    

constructor TStyleData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TStyleData.instance := TStyleData.Create();
  {AB:END}

end.

