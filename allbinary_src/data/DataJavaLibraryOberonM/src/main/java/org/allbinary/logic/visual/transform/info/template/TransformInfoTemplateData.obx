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
// package org.allbinary.logic.visual.transform.info.template
unit TransformInfoTemplateData;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TTransformInfoTemplateData = class(TObject)
  public
    UNCRYPTED_EXTENSION: string;
    ENCRYPTED_EXTENSION: string;
    class var instance: TTransformInfoTemplateData;
    procedure InitFields;
        class function getInstance: TTransformInfoTemplateData; static;
        constructor Create;
  end;

implementation

{AB:CODE}

procedure TTransformInfoTemplateData.InitFields;
begin
  Self.UNCRYPTED_EXTENSION := 'xsl';
  Self.ENCRYPTED_EXTENSION := 'abv';
end;
    

class function TTransformInfoTemplateData.getInstance: TTransformInfoTemplateData;
begin
        Exit(TTransformInfoTemplateData.instance);
end;
    

constructor TTransformInfoTemplateData.Create;
begin
    inherited Create;
    InitFields;
end;

initialization
  {AB:INITIALIZATION}
  TTransformInfoTemplateData.instance := TTransformInfoTemplateData.Create();
  {AB:END}

end.

