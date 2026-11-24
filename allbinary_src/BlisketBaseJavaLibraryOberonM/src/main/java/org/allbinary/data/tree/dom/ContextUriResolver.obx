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
unit ContextUriResolver;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, URIResolverStrings, BasicUriResolver;

type
  {AB:TYPES}
  TContextUriResolver = class(TInterfacedObject, IURIResolver)
  public
    logUtil: TLogUtil;
    uriResolverStrings: TURIResolverStrings;
    basicURIResolver: TBasicUriResolver;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(basicURIResolver_: TBasicUriResolver);
        function resolve(href: string; base: string): TSource; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  FREEBLISKET_PATH_GLOBALS, URLGLOBALS, CryptFileReader, AbFilePath, AbPath, AbPathData, StringMaker, TransformInfoTemplateData;


{AB:CODE}

procedure TContextUriResolver.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.uriResolverStrings := TURIResolverStrings.getInstance();
  
end;

function TContextUriResolver.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TContextUriResolver.Create(basicURIResolver_: TBasicUriResolver);
begin
    inherited Create;
    InitFields;
        Self.basicURIResolver := basicURIResolver_;
end;
    

// throws TransformerException
function TContextUriResolver.resolve(href: string; base: string): TSource;
var
  stringBuffer: TStringMaker;
  fileAbPath: TAbPath;
begin
        try
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(TURLGLOBALS.getMainPath());
            stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH);
            stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().INSTALLPATH);
            stringBuffer.append(TAbPathData.getInstance().SEPARATOR);
            stringBuffer.append(href);
            fileAbPath := TAbFilePath.Create(stringBuffer.toString());
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
    

function TContextUriResolver.toString: string;
begin
        try
            Exit(((TURLGLOBALS.getMainPath()) + (FREEBLISKET_PATH_GLOBALS.getInstance().INSTALLPATH)) + (Self.uriResolverStrings.IMPORT_URL));
        except
            on e: SysUtils.Exception do begin
            Exit('ContextUriResolver - Does not work without webapp path should be changed');
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

