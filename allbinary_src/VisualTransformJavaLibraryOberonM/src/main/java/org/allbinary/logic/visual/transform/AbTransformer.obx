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
unit AbTransformer;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, TransformInfoInterface, CommonStrings, BasicTransformerInterface;

type
  {AB:TYPES}
  TAbTransformer = class(TInterfacedObject, IBasicTransformerInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    transformInfoInterface: ITransformInfoInterface;
    inputStream: TInputStream;
    uriResolver: TURIResolver;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function getTransformInfoInterface: ITransformInfoInterface; virtual;
        procedure setInputStream(inputStream_: TInputStream); virtual;
        procedure setURIResolver(uriResolver_: TURIResolver); virtual;
        function getInputStream: TInputStream; virtual;
        function getURIResolver: TURIResolver; virtual;
        function getStreamSource: TStreamSource; virtual;
        function translate(xmlDocumentStr: string): string; virtual;
  end;

implementation
uses
  XslHelper, TransformInfoObjectConfigGenerator, TransformInfoObjectConfigGeneratorFactory;


{AB:CODE}

procedure TAbTransformer.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
  
  
end;

function TAbTransformer.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAbTransformer.Create(transformInfoInterface_: ITransformInfoInterface);
begin
    inherited Create;
    InitFields;
        Self.transformInfoInterface := transformInfoInterface_;
end;
    

function TAbTransformer.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(Self.transformInfoInterface);
end;
    

procedure TAbTransformer.setInputStream(inputStream_: TInputStream);
begin
        Self.inputStream := inputStream_;
end;
    

procedure TAbTransformer.setURIResolver(uriResolver_: TURIResolver);
begin
        Self.uriResolver := uriResolver_;
end;
    

function TAbTransformer.getInputStream: TInputStream;
begin
        Exit(Self.inputStream);
end;
    

function TAbTransformer.getURIResolver: TURIResolver;
begin
        Exit(Self.uriResolver);
end;
    

function TAbTransformer.getStreamSource: TStreamSource;
begin
        Exit(TStreamSource.Create(Self.getInputStream()));
end;
    

// throws Exception
function TAbTransformer.translate(xmlDocumentStr: string): string;
var
  result_: string;
  transformInfoObjectConfigGeneratorInterface: TTransformInfoObjectConfigGenerator;
begin
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().XMLLOGGING) then begin
                Self.logUtil.putF('xml: '#10'' + xmlDocumentStr, TJava.Box(Self), 'translate(String xmlDocumentStr)');
            end;
            if (Self.getURIResolver()) = (nil) then begin
                raise SysUtils.Exception.Create('No URIResolver');
            end;
            result_ := TXslHelper.getInstance().translate(Self.getURIResolver(), TStreamSource.Create(Self.getInputStream()), TStreamSource.Create(TStringBufferInputStream.Create(xmlDocumentStr)));
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().XSLLOGGING) then begin
                Self.logUtil.putF('translated xml: ' + result_, TJava.Box(Self), 'translate(String xmlDocumentStr)');
            end;
            transformInfoObjectConfigGeneratorInterface := TTransformInfoObjectConfigGeneratorFactory.getInstance().getInstance(Self.getTransformInfoInterface());
            Exit(transformInfoObjectConfigGeneratorInterface.process(result_));
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put(Self.transformInfoInterface.log(), TJava.Box(Self), 'translate(document)', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

