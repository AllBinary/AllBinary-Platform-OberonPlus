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
// package org.allbinary.logic.visual.transform.info
unit TransformInfosData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TTransformInfosData = class(TObject)
  public
    NAME: string;
    GROUP: string;
    ALL: string;
    PREVIEW: string;
    SMALL_PREVIEW: string;
    class var instance: TTransformInfosData;
    procedure InitFields;
        constructor Create;
        class function getInstance: TTransformInfosData; static;
  end;

implementation

{AB:CODE}

procedure TTransformInfosData.InitFields;
begin
  Self.NAME := 'TRANSFORM_INFOS_NAME';
  Self.GROUP := 'TRANSFORM_INFOS_GROUP';
  Self.ALL := 'TRANSFORM_INFOS_ALL';
  Self.PREVIEW := 'TRANSFORM_INFOS_PREVIEW';
  Self.SMALL_PREVIEW := 'TRANSFORM_INFOS_SMALL_PREVIEW';
end;
    

constructor TTransformInfosData.Create;
begin
    inherited Create;
    InitFields;
end;
    

class function TTransformInfosData.getInstance: TTransformInfosData;
begin
        Exit(TTransformInfosData.instance);
end;

initialization
  {AB:INITIALIZATION}
  TTransformInfosData.instance := TTransformInfosData.Create();
  {AB:END}

end.

