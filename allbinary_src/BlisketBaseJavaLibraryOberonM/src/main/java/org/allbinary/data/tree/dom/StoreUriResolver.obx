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
unit StoreUriResolver;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, TransformInfoInterface, URIResolverStrings, BasicUriResolver;

type
  {AB:TYPES}
  TStoreUriResolver = class(TInterfacedObject, IURIResolver)
  public
    logUtil: TLogUtil;
    uriResolverStrings: TURIResolverStrings;
    basicURIResolver: TBasicUriResolver;
    parentTransformInfoInterface: ITransformInfoInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(parentTransformInfoInterface: ITransformInfoInterface; basicURIResolver_: TBasicUriResolver);
        function resolve(href: string; base: string): TSource; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  FREEBLISKET_PATH_GLOBALS, URLGLOBALS, CryptFileReader, AbFilePath, AbPath, AbPathData, StringMaker, TransformInfoHttpStoreInterface, TransformInfoTemplateData;


{AB:CODE}

procedure TStoreUriResolver.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.uriResolverStrings := TURIResolverStrings.getInstance();
  
  
end;

function TStoreUriResolver.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TStoreUriResolver.Create(parentTransformInfoInterface: ITransformInfoInterface; basicURIResolver_: TBasicUriResolver);
begin
    inherited Create;
    InitFields;
        Self.parentTransformInfoInterface := parentTransformInfoInterface;
        Self.basicURIResolver := basicURIResolver_;
end;
    

// throws TransformerException
function TStoreUriResolver.resolve(href: string; base: string): TSource;
var
  stringBuffer: TStringMaker;
  transformInfoHttpStoreInterface_: ITransformInfoHttpStoreInterface;
  fileAbPath: TAbPath;
begin
        try
            stringBuffer := TStringMaker.Create();
            transformInfoHttpStoreInterface_ := (TJava.ToObject(Self.parentTransformInfoInterface) as ITransformInfoHttpStoreInterface);
            stringBuffer.append(TURLGLOBALS.getMainPath()).append(FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH).append(transformInfoHttpStoreInterface_.getStoreName()).append(TAbPathData.getInstance().SEPARATOR).append(href);
            fileAbPath := TAbPath(TJava.ToObject(TAbFilePath.Create(stringBuffer.toString())));
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().XMLLOGGING) then begin
                stringBuffer.delete_(0, stringBuffer.length());
                stringBuffer.append(Self.uriResolverStrings.ATTEMPT);
                stringBuffer.append(href);
                stringBuffer.append(Self.uriResolverStrings.BASE);
                stringBuffer.append(base);
                stringBuffer.append(Self.uriResolverStrings.NEW_PATH);
                stringBuffer.append(fileAbPath.toString());
                stringBuffer.append(Self.uriResolverStrings.NOTE);
                stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH);
                stringBuffer.append(Self.uriResolverStrings.URL_GLOBAL);
                stringBuffer.append(Self.uriResolverStrings.REQUIRED_EXTENSION);
                stringBuffer.append(Self.basicURIResolver.getExtension());
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.uriResolverStrings.RESOLVE);
            end;
            Exit(TStreamSource.Create(TCryptFileReader.Create(TTransformInfoTemplateData.getInstance().UNCRYPTED_EXTENSION, TTransformInfoTemplateData.getInstance().ENCRYPTED_EXTENSION).getInputStream(fileAbPath)));
        except
            on e: TTransformerException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            raise TTransformerException.Create(e);
            end;
        end;
end;
    

function TStoreUriResolver.toString: string;
begin
        try
            Exit(TJava.ToString((TURLGLOBALS.getMainPath()) + (FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH)) + '{Store Name if Any}/{import url}');
        except
            on e: SysUtils.Exception do begin
            Exit('StoreUriResolver - Does not work without webapp path should be changed');
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

