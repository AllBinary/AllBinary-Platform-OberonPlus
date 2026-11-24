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
unit DomDocumentFileHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbFile, Document;

type
  {AB:TYPES}
  TDomDocumentFileHelper = class(TObject)
  public
        constructor Create;
        class function createDocument(xmlFile: TAbFile): TDocument; static;
        class procedure save(file_: TAbFile; document_: TDocument); static;
  end;

implementation
uses
  DomDocumentHelper, AbDataOutputStream, AbFileInputStream, DataOutputStreamFactory, StreamUtil;


{AB:CODE}
    

constructor TDomDocumentFileHelper.Create;
begin
    inherited Create;
end;
    

// throws Exception
class function TDomDocumentFileHelper.createDocument(xmlFile: TAbFile): TDocument;
begin
        try
            Exit(TDomDocumentHelper.create_(TAbFileInputStream.createFromAbFile(xmlFile)));
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
end;
    

// throws Exception
class procedure TDomDocumentFileHelper.save(file_: TAbFile; document_: TDocument);
var
  dataOutputStream: TAbDataOutputStream;
  copyTransformerFactory: TTransformerFactory;
  copyTransformer: TTransformer;
  domSource_: TDOMSource;
  streamResult_: TStreamResult;
begin
        dataOutputStream := nil;
        try
        try
            copyTransformerFactory := TTransformerFactory.newInstance();
            copyTransformer := copyTransformerFactory.newTransformer();
            domSource_ := TDOMSource.Create(document_);
            if file_.isFile() then begin
                file_.delete_();
            end;
            file_.createNewFile();
            dataOutputStream := TDataOutputStreamFactory.getInstance().getInstanceForAbFile(file_);
            streamResult_ := TStreamResult.Create(dataOutputStream);
            copyTransformer.transform(domSource_, streamResult_);
            dataOutputStream.flush();
        except
            on e: SysUtils.Exception do begin
            raise e;
            end;
        end;
        finally
            TStreamUtil.getInstance().close(dataOutputStream);
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

