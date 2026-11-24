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
unit BasicUriResolver;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, URIResolverStrings;

type
  {AB:TYPES}
  TBasicUriResolver = class(TInterfacedObject, IURIResolver)
  public
    logUtil: TLogUtil;
    uriResolverStrings: TURIResolverStrings;
    extension: string;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(extension: string);
        function getExtension: string; virtual;
        function resolve(href: string; base: string): TSource; virtual;
        function toString: string; virtual;
  end;

implementation
uses
  FREEBLISKET_PATH_GLOBALS, URLGLOBALS, CryptFileReader, AbFilePath, AbPath, StringMaker, TransformInfoTemplateData;


{AB:CODE}

procedure TBasicUriResolver.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.uriResolverStrings := TURIResolverStrings.getInstance();
  
end;

function TBasicUriResolver.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TBasicUriResolver.Create(extension: string);
begin
    inherited Create;
    InitFields;
        Self.extension := extension;
end;
    

function TBasicUriResolver.getExtension: string;
begin
        Exit(Self.extension);
end;
    

// throws TransformerException
function TBasicUriResolver.resolve(href: string; base: string): TSource;
var
  stringBuffer: TStringMaker;
  abPath_: TAbPath;
begin
        try
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(TURLGLOBALS.getMainPath());
            stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH);
            stringBuffer.append(href);
            abPath_ := TAbPath(TJava.ToObject(TAbFilePath.Create(stringBuffer.toString())));
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().XMLLOGGING) then begin
                stringBuffer.delete_(0, stringBuffer.length());
                stringBuffer.append(Self.uriResolverStrings.ATTEMPT);
                stringBuffer.append(href);
                stringBuffer.append(Self.uriResolverStrings.BASE);
                stringBuffer.append(base);
                stringBuffer.append(Self.uriResolverStrings.NEW_PATH);
                stringBuffer.append(abPath_.toString());
                stringBuffer.append(Self.uriResolverStrings.NOTE);
                stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH);
                stringBuffer.append(Self.uriResolverStrings.URL_GLOBAL);
                stringBuffer.append(Self.uriResolverStrings.REQUIRED_EXTENSION);
                stringBuffer.append(Self.extension);
                Self.logUtil.putF(stringBuffer.toString(), TJava.Box(Self), Self.uriResolverStrings.RESOLVE);
            end;
            Exit(TStreamSource.Create(TCryptFileReader.Create(TTransformInfoTemplateData.getInstance().UNCRYPTED_EXTENSION, TTransformInfoTemplateData.getInstance().ENCRYPTED_EXTENSION).getInputStream(abPath_)));
        except
            on e: TTransformerException do begin
            raise e;
            end;
            on e: SysUtils.Exception do begin
            raise TTransformerException.Create(e);
            end;
        end;
end;
    

function TBasicUriResolver.toString: string;
var
  stringBuffer: TStringMaker;
begin
        try
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(TURLGLOBALS.getMainPath());
            stringBuffer.append(FREEBLISKET_PATH_GLOBALS.getInstance().XSLPATH);
            stringBuffer.append(Self.uriResolverStrings.IMPORT_URL);
            Exit(stringBuffer.toString());
        except
            on e: SysUtils.Exception do begin
            Exit('BasicUriResolver - Does not work without webapp path should be changed');
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

