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
// package org.allbinary.input.automation.module.configuration
unit InputAutomationModuleConfigurations;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbeClientInformationInterface, Document, InputAutomationModuleConfiguration;

type
  {AB:TYPES}
  TInputAutomationModuleConfigurations = class(TObject)
  public
    logUtil: TLogUtil;
    hashMap: TJavaHashMap<TObject, TObject>;
    procedure InitFields;
        constructor Create(abeClientInformation: IAbeClientInformationInterface; file_: TFile); overload;
        constructor Create(abeClientInformation: IAbeClientInformationInterface; document_: TDocument); overload;
        constructor Create(inputAutomationModuleConfigurationList: IList<TInputAutomationModuleConfiguration>); overload;
        constructor Create; overload;
        procedure add(inputAutomationModuleConfiguration_: TInputAutomationModuleConfiguration); virtual;
        procedure remove(inputAutomationModuleConfiguration_: TInputAutomationModuleConfiguration); virtual;
        function getHashMap: TJavaHashMap<TObject, TObject>; virtual;
        procedure setHashMap(hashMap_: TJavaHashMap<TObject, TObject>); virtual;
  end;

implementation
uses
  DomDocumentHelper, InputAutomationModuleData, NewInputAutomationModulesData, Node, NodeList;


{AB:CODE}

procedure TInputAutomationModuleConfigurations.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TInputAutomationModuleConfigurations.Create(abeClientInformation: IAbeClientInformationInterface; file_: TFile);
var
  bytes: TArray<ShortInt>;
  idFile: TFileInputStream;
  length: Integer;
  data: string;
  endIndex: Integer;
  document_: TDocument;
  nodeList_: TNodeList;
  nameNodeList: TNodeList;
  node_: TNode;
  index: Integer;
begin
    inherited Create;
    InitFields;
        Self.setHashMap(TJavaHashMap<TObject, TObject>.Create());
        bytes := TJava.NewArray<ShortInt>(100000);
        idFile := TFileInputStream.Create(file_);
        length := idFile.read(bytes);
        data := TJava.NewString(bytes);
        endIndex := (RPos(TJava.ToString('>'), data) - 1);
        document_ := TDomDocumentHelper.create_(Copy(data, (0) + 1, ((endIndex) + (1)) - (0)));
        nodeList_ := document_.getElementsByTagName(TNewInputAutomationModulesData.NAME);
        if (nodeList_.getLength()) > (0) then begin
            nameNodeList := document_.getElementsByTagName(TInputAutomationModuleData.NAME);
            Self.logUtil.putF('Number Of Module(s) Specified: ' + TJava.ToString(nameNodeList.getLength()), TJava.Box(Self), 'Contructor');
            for index := 0 to nameNodeList.getLength() - 1 do begin
                node_ := nameNodeList.item(index);
                Self.add(TInputAutomationModuleConfiguration.Create(abeClientInformation, node_));
            end;
        end;
end;
    

constructor TInputAutomationModuleConfigurations.Create(abeClientInformation: IAbeClientInformationInterface; document_: TDocument);
var
  nameNodeList: TNodeList;
  node_: TNode;
  index: Integer;
begin
    inherited Create;
    InitFields;
        Self.setHashMap(TJavaHashMap<TObject, TObject>.Create());
        nameNodeList := document_.getElementsByTagName(TInputAutomationModuleData.NAME);
        Self.logUtil.putF('Number Of Module(s) Specified: ' + TJava.ToString(nameNodeList.getLength()), TJava.Box(Self), 'Contructor');
        for index := 0 to nameNodeList.getLength() - 1 do begin
            node_ := nameNodeList.item(index);
            Self.add(TInputAutomationModuleConfiguration.Create(abeClientInformation, node_));
        end;
end;
    

constructor TInputAutomationModuleConfigurations.Create(inputAutomationModuleConfigurationList: IList<TInputAutomationModuleConfiguration>);
var
  size: Integer;
  inputAutomationModuleConfiguration_: TInputAutomationModuleConfiguration;
  index: Integer;
begin
    inherited Create;
    InitFields;
        Self.setHashMap(TJavaHashMap<TObject, TObject>.Create());
        size := inputAutomationModuleConfigurationList.size();
        
        for index := 0 to size - 1 do begin
            inputAutomationModuleConfiguration_ := inputAutomationModuleConfigurationList.get(index);
            Self.add(inputAutomationModuleConfiguration_);
        end;
end;
    

constructor TInputAutomationModuleConfigurations.Create;
begin
    inherited Create;
    InitFields;
        Self.setHashMap(TJavaHashMap<TObject, TObject>.Create());
end;
    

procedure TInputAutomationModuleConfigurations.add(inputAutomationModuleConfiguration_: TInputAutomationModuleConfiguration);
begin
        Self.getHashMap().put(inputAutomationModuleConfiguration_.getClassName(), inputAutomationModuleConfiguration_);
end;
    

procedure TInputAutomationModuleConfigurations.remove(inputAutomationModuleConfiguration_: TInputAutomationModuleConfiguration);
begin
        Self.getHashMap().remove(inputAutomationModuleConfiguration_.getClassName());
end;
    

function TInputAutomationModuleConfigurations.getHashMap: TJavaHashMap<TObject, TObject>;
begin
        Exit(Self.hashMap);
end;
    

procedure TInputAutomationModuleConfigurations.setHashMap(hashMap_: TJavaHashMap<TObject, TObject>);
begin
        Self.hashMap := hashMap_;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

