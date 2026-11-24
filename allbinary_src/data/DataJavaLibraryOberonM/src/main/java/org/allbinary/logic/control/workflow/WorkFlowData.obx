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
// package org.allbinary.logic.control.workflow
unit WorkFlowData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TWorkFlowData = class(TObject)
  public
    WORKFLOWS: string;
    WORKFLOW: string;
    NAME: string;
    DATA: string;
    class var instance: TWorkFlowData;
    procedure InitFields;
        class function getInstance: TWorkFlowData; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TWorkFlowData.InitFields;
begin
  Self.WORKFLOWS := 'WORKFLOWS';
  Self.WORKFLOW := 'WORKFLOW';
  Self.NAME := 'WORKFLOW_NAME';
  Self.DATA := 'WORKFLOW_DATA';
end;
    

class function TWorkFlowData.getInstance: TWorkFlowData;
begin
        Exit(TWorkFlowData.instance);
end;
    

constructor TWorkFlowData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TWorkFlowData.instance := TWorkFlowData.Create();
  {AB:END}

end.

