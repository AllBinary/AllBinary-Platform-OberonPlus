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
// package org.allbinary.data.tree.dom
unit SimpleTransform;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbPath;

type
  {AB:TYPES}
  TSimpleTransform = class(TObject)
  public
    xsltFilePath: TAbPath;
    dataFilePath: TAbPath;
    procedure InitFields;
        constructor Create(xsltFilePath: TAbPath; dataFilePath: TAbPath);
        function transform: string; virtual;
  end;

implementation
uses
  XslHelper, DomDocumentHelper, XmlDocumentHelper, AbFileLocalInputStream, AbFile, Document;


{AB:CODE}

procedure TSimpleTransform.InitFields;
begin
  
  
end;
    

constructor TSimpleTransform.Create(xsltFilePath: TAbPath; dataFilePath: TAbPath);
begin
    inherited Create;
    InitFields;
        Self.xsltFilePath := xsltFilePath;
        Self.dataFilePath := dataFilePath;
end;
    

// throws Exception
function TSimpleTransform.transform: string;
var
  inputStream: TAbFileLocalInputStream;
  document_: TDocument;
  result_: string;
begin
        inputStream := TAbFileLocalInputStream.Create(TAbFile.createAbFileFromAbPath(Self.xsltFilePath));
        document_ := TDomDocumentHelper.create_(TAbFileLocalInputStream.Create(TAbFile.createAbFileFromAbPath(Self.dataFilePath)));
        result_ := TXslHelper.getInstance().translate(TStreamSource.Create(inputStream), TStreamSource.Create(TStringBufferInputStream.Create(TXmlDocumentHelper.toString(document_))));
        Exit(result_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

