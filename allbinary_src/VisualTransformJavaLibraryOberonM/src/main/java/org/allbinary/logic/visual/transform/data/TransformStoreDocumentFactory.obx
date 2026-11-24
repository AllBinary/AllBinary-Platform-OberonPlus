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
// package org.allbinary.logic.visual.transform.data
unit TransformStoreDocumentFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, WeblisketSession, SearchRequest, TransformDocumentInterface;

type
  {AB:TYPES}
  TTransformStoreDocumentFactory = class(TObject)
  public
        constructor Create;
        class function getInstance(pageContext_: TPageContext; weblisketSession_: TWeblisketSession): ITransformDocumentInterface; overload; static;
        class function getInstance(searchRequest_: TSearchRequest): ITransformDocumentInterface; overload; static;
  end;

implementation
uses
  TransformStoreDocument;


{AB:CODE}
    

constructor TTransformStoreDocumentFactory.Create;
begin
    inherited Create;
end;
    

// throws Exception
class function TTransformStoreDocumentFactory.getInstance(pageContext_: TPageContext; weblisketSession_: TWeblisketSession): ITransformDocumentInterface;
begin
        Exit((TJava.ToObject(TTransformStoreDocument.Create(pageContext_, weblisketSession_)) as ITransformDocumentInterface));
end;
    

// throws Exception
class function TTransformStoreDocumentFactory.getInstance(searchRequest_: TSearchRequest): ITransformDocumentInterface;
begin
        Exit((TJava.ToObject(TTransformStoreDocument.Create(searchRequest_)) as ITransformDocumentInterface));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

