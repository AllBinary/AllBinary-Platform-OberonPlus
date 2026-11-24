{
 
  To change this license header, choose License Headers in Project Properties. 
  To change this template file, choose Tools | Templates 
  and open the template in the editor.  
}
// Generated Code Do Not Modify
// package org.allbinary.input.automation.actions.script
unit JTreeInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, JTreeInterface;

type
  {AB:TYPES}
  TJTreeInterfaceFactory = class(TObject)
  public
    jTreeInterface: IJTreeInterface;
    class var instance: TJTreeInterfaceFactory;
    procedure InitFields;
    constructor Create;
        class function getInstance: TJTreeInterfaceFactory; static;
        procedure set_(jTreeInterface_: IJTreeInterface); virtual;
        function getJTreeInterface: IJTreeInterface; virtual;
  end;

implementation

{AB:CODE}

procedure TJTreeInterfaceFactory.InitFields;
begin
  
end;

constructor TJTreeInterfaceFactory.Create;
begin
  inherited Create;
  InitFields;
end;
    

class function TJTreeInterfaceFactory.getInstance: TJTreeInterfaceFactory;
begin
        Exit(TJTreeInterfaceFactory.instance);
end;
    

procedure TJTreeInterfaceFactory.set_(jTreeInterface_: IJTreeInterface);
begin
        Self.jTreeInterface := jTreeInterface_;
end;
    

function TJTreeInterfaceFactory.getJTreeInterface: IJTreeInterface;
begin
        Exit(Self.jTreeInterface);
end;

initialization
  {AB:INITIALIZATION}
  TJTreeInterfaceFactory.instance := TJTreeInterfaceFactory.Create();
  {AB:END}

end.

