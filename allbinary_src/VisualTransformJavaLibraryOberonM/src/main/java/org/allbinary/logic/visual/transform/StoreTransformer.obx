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
// package org.allbinary.logic.visual.transform
unit StoreTransformer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbeClientInformationInterface, TransformInfoInterface, BasicTransformer;

type
  {AB:TYPES}
  TStoreTransformer = class(TBasicTransformer)
  public
        constructor Create(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface);
  end;

implementation
uses
  BasicUriResolver, StoreUriResolver;


{AB:CODE}
    

constructor TStoreTransformer.Create(abeClientInformation: IAbeClientInformationInterface; transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(abeClientInformation, transformInfoInterface_);
        Self.setURIResolver(TURIResolver(TJava.ToObject(TStoreUriResolver.Create(Self.getTransformInfoInterface(), TBasicUriResolver(TJava.ToObject(Self.getURIResolver()))))));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

