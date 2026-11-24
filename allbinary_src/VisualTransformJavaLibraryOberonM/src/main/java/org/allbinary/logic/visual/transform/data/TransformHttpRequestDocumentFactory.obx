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
unit TransformHttpRequestDocumentFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, WeblisketSession, TransformDocumentInterface;

type
  {AB:TYPES}
  TTransformHttpRequestDocumentFactory = class(TObject)
  public
        constructor Create;
        class function getInstance(pageContext_: TPageContext; weblisketSession_: TWeblisketSession): ITransformDocumentInterface; static;
  end;

implementation
uses
  TransformHttpRequestDocument;


{AB:CODE}
    

constructor TTransformHttpRequestDocumentFactory.Create;
begin
    inherited Create;
end;
    

// throws Exception
class function TTransformHttpRequestDocumentFactory.getInstance(pageContext_: TPageContext; weblisketSession_: TWeblisketSession): ITransformDocumentInterface;
begin
        Exit((TJava.ToObject(TTransformHttpRequestDocument.Create(pageContext_, weblisketSession_)) as ITransformDocumentInterface));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

