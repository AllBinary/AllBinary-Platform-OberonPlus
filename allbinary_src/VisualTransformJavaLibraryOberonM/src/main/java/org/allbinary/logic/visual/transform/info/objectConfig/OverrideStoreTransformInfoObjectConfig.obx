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
// package org.allbinary.logic.visual.transform.info.objectConfig
unit OverrideStoreTransformInfoObjectConfig;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbeClientInformationInterface, TransformInfoInterface, Document, GenericStoreTransformInfoObjectConfig;

type
  {AB:TYPES}
  TOverrideStoreTransformInfoObjectConfig = class(TGenericStoreTransformInfoObjectConfig)
  public
        constructor Create(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface); overload;
        constructor Create(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface; document_: TDocument); overload;
        constructor Create(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface; name: string; type_: string); overload;
        function generate(objectConfigDocument: TDocument): TDocument; virtual;
  end;

implementation

{AB:CODE}
    

constructor TOverrideStoreTransformInfoObjectConfig.Create(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(abeClientInformation, transformInfoInterface_);
end;
    

constructor TOverrideStoreTransformInfoObjectConfig.Create(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface; document_: TDocument);
begin
        inherited Create(abeClientInformation, transformInfoInterface_, document_);
        Self.setDocument(Self.generate(Self.toXmlDoc()));
end;
    

constructor TOverrideStoreTransformInfoObjectConfig.Create(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface; name: string; type_: string);
begin
        inherited Create(abeClientInformation, transformInfoInterface_, name, type_);
        Self.setDocument(Self.generate(Self.toXmlDoc()));
end;
    

// throws Exception
function TOverrideStoreTransformInfoObjectConfig.generate(objectConfigDocument: TDocument): TDocument;
var
  newObjectConfigDocument: TDocument;
begin
        newObjectConfigDocument := inherited generate(objectConfigDocument);
        Exit(newObjectConfigDocument);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

