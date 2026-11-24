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
unit TransformInfoData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TTransformInfoData = class(TObject)
  public
    PARENT: string;
    MAPPED: string;
    NAME: string;
    DESCRIPTION: string;
    CATEGORY: string;
    OBJECTFILENAME: string;
    OBJECT_: string;
    OBJECTCONFIGFILENAME: string;
    OBJECTCONFIG: string;
    TEMPLATEFILENAME: string;
    TEMPLATE: string;
    DATAFILENAME: string;
    DATA: string;
    LABEL_: string;
    OWNER: string;
    PARTIAL: string;
    class var instance: TTransformInfoData;
    procedure InitFields;
        class function getInstance: TTransformInfoData; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TTransformInfoData.InitFields;
begin
  Self.PARENT := 'TRANSFORM_INFO_PARENT';
  Self.MAPPED := 'TRANSFORM_INFO_MAPPED';
  Self.NAME := 'TRANSFORM_INFO_NAME';
  Self.DESCRIPTION := 'TRANSFORM_INFO_DESCRIPTION';
  Self.CATEGORY := 'TRANSFORM_INFO_CATEGORY';
  Self.OBJECTFILENAME := 'TRANSFORM_INFO_OBJECTFILENAME';
  Self.OBJECT_ := 'TRANSFORM_INFO_OBJECT';
  Self.OBJECTCONFIGFILENAME := 'TRANSFORM_INFO_OBJECTCONFIGFILENAME';
  Self.OBJECTCONFIG := 'TRANSFORM_INFO_OBJECTCONFIG';
  Self.TEMPLATEFILENAME := 'TRANSFORM_INFO_TEMPLATEFILENAME';
  Self.TEMPLATE := 'TRANSFORM_INFO_TEMPLATE';
  Self.DATAFILENAME := 'TRANSFORM_INFO_DATAFILENAME';
  Self.DATA := 'TRANSFORM_INFO_DATA';
  Self.LABEL_ := 'TRANSFORM_INFO_LABEL';
  Self.OWNER := 'OWNER_' + Self.NAME;
  Self.PARTIAL := 'PARTIAL_' + Self.NAME;
end;
    

class function TTransformInfoData.getInstance: TTransformInfoData;
begin
        Exit(TTransformInfoData.instance);
end;
    

constructor TTransformInfoData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TTransformInfoData.instance := TTransformInfoData.Create();
  {AB:END}

end.

