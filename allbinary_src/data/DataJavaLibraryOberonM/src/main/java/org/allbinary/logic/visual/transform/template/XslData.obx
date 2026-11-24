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
// package org.allbinary.logic.visual.transform.template
unit XslData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TXslData = class(TObject)
  public
    NAME: string;
    ROOT_IMPORT_URI: string;
    class var instance: TXslData;
    procedure InitFields;
        class function getInstance: TXslData; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TXslData.InitFields;
begin
  Self.NAME := 'XSL_NAME';
  Self.ROOT_IMPORT_URI := 'ROOT_IMPORT_URI';
end;
    

class function TXslData.getInstance: TXslData;
begin
        Exit(TXslData.instance);
end;
    

constructor TXslData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TXslData.instance := TXslData.Create();
  {AB:END}

end.

