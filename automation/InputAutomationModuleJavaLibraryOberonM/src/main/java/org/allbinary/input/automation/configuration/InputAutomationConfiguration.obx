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
// package org.allbinary.input.automation.configuration
unit InputAutomationConfiguration;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, InputAutomationModuleConfiguration, LogUtil;

type
  {AB:TYPES}
  // name="inputAutomationConfiguration", 
  TInputAutomationConfiguration = class(TObject)
  public
    logUtil: TLogUtil;
    installed: Boolean;
    inputAutomationModuleConfigurationList: IList<TInputAutomationModuleConfiguration>;
    class var FILENAME: string;
    procedure InitFields;
        constructor Create;
        class function getFile: TFile; static;
        function isInstalled: Boolean; virtual;
        procedure setInstalled(installed: Boolean); virtual;
        function getInputAutomationModuleConfigurationList: IList<TInputAutomationModuleConfiguration>; virtual;
        procedure save; virtual;
  end;

implementation
uses
  DomDocumentFileHelper, DomDocumentHelper, FileUtil, FileWrapperUtil, AbPath, StringUtil, Document;


{AB:CODE}

procedure TInputAutomationConfiguration.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
  
end;
    

constructor TInputAutomationConfiguration.Create;
begin
    inherited Create;
    InitFields;
end;
    

class function TInputAutomationConfiguration.getFile: TFile;
begin
        Exit(TFile.Create(TInputAutomationConfiguration.FILENAME));
end;
    

function TInputAutomationConfiguration.isInstalled: Boolean;
begin
        Exit(Self.installed);
end;
    

procedure TInputAutomationConfiguration.setInstalled(installed: Boolean);
begin
        Self.installed := installed;
        Self.logUtil.putF('Installed: ' + BoolToStr(installed, True), TJava.Box(Self), 'setIntalled');
end;
    

function TInputAutomationConfiguration.getInputAutomationModuleConfigurationList: IList<TInputAutomationModuleConfiguration>;
begin
        Exit(Self.inputAutomationModuleConfigurationList);
end;
    

// throws Exception
procedure TInputAutomationConfiguration.save;
var
  document_: TDocument;
  file_: TFile;
  jaxbContext_: TJAXBContext;
  marshaller_: TMarshaller;
begin
        document_ := TDomDocumentHelper.create_();
        file_ := TFile.Create(TInputAutomationConfiguration.FILENAME);
        TFileUtil.getInstance().copy(TAbPath.Create(file_.getAbsolutePath(), TStringUtil.getInstance().EMPTY_STRING), TAbPath.Create(TJava.ToString(file_.getAbsolutePath()) + '.bak.xml', TStringUtil.getInstance().EMPTY_STRING));
        jaxbContext_ := TJAXBContext.newInstance(TInputAutomationConfiguration);
        marshaller_ := jaxbContext_.createMarshaller();
        marshaller_.setProperty(TMarshaller.JAXB_FORMATTED_OUTPUT, True);
        marshaller_.marshal(Self, document_);
        TDomDocumentFileHelper.save(TFileWrapperUtil.wrapFile(file_), document_);
end;

initialization
  {AB:INITIALIZATION}
  TInputAutomationConfiguration.FILENAME := 'InputAutomationConfig.xml';
  {AB:END}

end.

