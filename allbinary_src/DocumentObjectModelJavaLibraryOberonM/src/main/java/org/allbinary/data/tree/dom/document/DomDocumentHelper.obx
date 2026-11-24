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
// package org.allbinary.data.tree.dom.document
unit DomDocumentHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Document;

type
  {AB:TYPES}
  TDomDocumentHelper = class(TObject)
  public
        constructor Create;
        class procedure init; static;
        class function create_: TDocument; overload; static;
        class function create_(inputStream_: TInputStream): TDocument; overload; static;
        class function create_(xmlString: string): TDocument; overload; static;
  end;

implementation
uses
  CommonPhoneStrings;


{AB:CODE}
    

constructor TDomDocumentHelper.Create;
begin
    inherited Create;
end;
    

class procedure TDomDocumentHelper.init;
var
  commonPhoneStrings_: TCommonPhoneStrings;
  LIMIT: string;
begin
        commonPhoneStrings_ := TCommonPhoneStrings.getInstance();
        TSystem.setProperty('jdk.xml.maxElementDepth', commonPhoneStrings_.ZERO);
        TSystem.setProperty('jdk.xml.xpathExprOpLimit', commonPhoneStrings_.ZERO);
        TSystem.setProperty('jdk.xml.xpathTotalOpLimit', commonPhoneStrings_.ZERO);
        LIMIT := '500000';
        TSystem.setProperty('jdk.xml.maxGeneralEntitySizeLimit', LIMIT);
        TSystem.setProperty('jdk.xml.totalEntitySizeLimit', LIMIT);
end;
    

class function TDomDocumentHelper.create_: TDocument;
var
  factory: TDocumentBuilderFactory;
  builder: TDocumentBuilder;
  document_: TDocument;
begin
        try
            factory := TDocumentBuilderFactory.newInstance();
            builder := factory.newDocumentBuilder();
            document_ := builder.newDocument();
            Exit(document_);
        except
            on e: SysUtils.Exception do begin
            Exit(nil);
            end;
        end;
end;
    

// throws Exception
class function TDomDocumentHelper.create_(inputStream_: TInputStream): TDocument;
var
  factory: TDocumentBuilderFactory;
  builder: TDocumentBuilder;
  document_: TDocument;
begin
        try
            factory := TDocumentBuilderFactory.newInstance();
            builder := factory.newDocumentBuilder();
            document_ := builder.parse(inputStream_);
            Exit(document_);
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
end;
    

// throws Exception
class function TDomDocumentHelper.create_(xmlString: string): TDocument;
var
  factory: TDocumentBuilderFactory;
  builder: TDocumentBuilder;
  document_: TDocument;
begin
        try
            factory := TDocumentBuilderFactory.newInstance();
            builder := factory.newDocumentBuilder();
            document_ := builder.parse(TStringBufferInputStream.Create(xmlString));
            Exit(document_);
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

