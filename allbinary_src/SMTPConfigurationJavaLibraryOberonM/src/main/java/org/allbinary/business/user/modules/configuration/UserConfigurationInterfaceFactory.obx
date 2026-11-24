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
// package org.allbinary.business.user.modules.configuration
unit UserConfigurationInterfaceFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, UserRole, Document, UserConfigurationInterface;

type
  {AB:TYPES}
  TUserConfigurationInterfaceFactory = class(TObject)
  public
    class var configurationName: string;
        constructor Create;
        class function getInstance(document_: TDocument): IUserConfigurationInterface; overload; static;
        class function getInstance(userRole_: TUserRole): IUserConfigurationInterface; overload; static;
        class function getInstance: IUserConfigurationInterface; overload; static;
  end;

implementation
uses
  UserConfigurationData, UserConfigurationView, UserConfiguration, DomSearchHelper, DomDocumentHelper, FREEBLISKET_PATH_GLOBALS, URLGLOBALS, CryptFileReader, AbPath, AbPathData, Node;


{AB:CODE}
    

constructor TUserConfigurationInterfaceFactory.Create;
begin
    inherited Create;
end;
    

// throws Exception
class function TUserConfigurationInterfaceFactory.getInstance(document_: TDocument): IUserConfigurationInterface;
var
  configurationNode: TNode;
begin
        configurationNode := TDomSearchHelper.getNode(TUserConfigurationData.NAME, document_.getChildNodes());
        Exit((TJava.ToObject(TUserConfigurationView.Create(configurationNode).getUserConfigurationInterface()) as IUserConfigurationInterface));
end;
    

// throws Exception
class function TUserConfigurationInterfaceFactory.getInstance(userRole_: TUserRole): IUserConfigurationInterface;
var
  abPath_: TAbPath;
  documentString: string;
  document_: TDocument;
begin
        abPath_ := TAbPath.Create((TURLGLOBALS.getMainPath()) + (FREEBLISKET_PATH_GLOBALS.getInstance().USERCONFIGURATIONPATH), TJava.ToString(TUserConfigurationInterfaceFactory.configurationName) + userRole_.toString() + TJava.ToString(TAbPathData.getInstance().EXTENSION_SEP) + TJava.ToString(TUserConfigurationData.UNCRYPTED_EXTENSION));
        documentString := TCryptFileReader.Create(TUserConfigurationData.UNCRYPTED_EXTENSION, TUserConfigurationData.ENCRYPTED_EXTENSION).get(abPath_);
        document_ := TDomDocumentHelper.create_(documentString);
        Exit(TUserConfigurationInterfaceFactory.getInstance(document_));
end;
    

// throws Exception
class function TUserConfigurationInterfaceFactory.getInstance: IUserConfigurationInterface;
begin
        Exit(TUserConfiguration.Create());
end;

initialization
  {AB:INITIALIZATION}
  TUserConfigurationInterfaceFactory.configurationName := 'DefaultUserConfiguration';
  {AB:END}

end.

