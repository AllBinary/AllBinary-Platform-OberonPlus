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
// package views.business.context.modules.storefront.customizer.template.objectConfig
unit InsertTemplateCustomizerTransformInfoObjectConfig;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, TransformInfoInterface, Document, NoTemplateTransformInfoObjectConfig;

type
  {AB:TYPES}
  TInsertTemplateCustomizerTransformInfoObjectConfig = class(TNoTemplateTransformInfoObjectConfig)
  public
    logUtil: TLogUtil;
    procedure InitFields;
        constructor Create(transformInfoInterface_: ITransformInfoInterface); overload;
        constructor Create(transformInfoInterface_: ITransformInfoInterface; document_: TDocument); overload;
        constructor Create(transformInfoInterface_: ITransformInfoInterface; name: string; type_: string); overload;
        procedure set_(aParentViewName: string); virtual;
  end;

implementation
uses
  TransformInfoDomNodeView, TransformInfosData, TransformInfoObjectConfigData, Node, NodeList;


{AB:CODE}

procedure TInsertTemplateCustomizerTransformInfoObjectConfig.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;
    

constructor TInsertTemplateCustomizerTransformInfoObjectConfig.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
end;
    

constructor TInsertTemplateCustomizerTransformInfoObjectConfig.Create(transformInfoInterface_: ITransformInfoInterface; document_: TDocument);
begin
        inherited Create(transformInfoInterface_, document_);
        InitFields;
        Self.setDocument(Self.generate(Self.toXmlDoc()));
end;
    

constructor TInsertTemplateCustomizerTransformInfoObjectConfig.Create(transformInfoInterface_: ITransformInfoInterface; name: string; type_: string);
begin
        inherited Create(transformInfoInterface_, name, type_);
        InitFields;
        Self.setDocument(Self.generate(Self.toXmlDoc()));
end;
    

// throws Exception
procedure TInsertTemplateCustomizerTransformInfoObjectConfig.set_(aParentViewName: string);
var
  document_: TDocument;
  parentComponentsNodeList: TNodeList;
  objectConfigNode: TNode;
  parentComponentsNode: TNode;
  transformInfoDomNodeView_: TTransformInfoDomNodeView;
  componentNode: TNode;
begin
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
            Self.logUtil.putF('Setting: ' + aParentViewName, TJava.Box(Self), 'set()');
        end;
        document_ := Self.toXmlDoc();
        parentComponentsNodeList := document_.getElementsByTagName(TTransformInfosData.getInstance().NAME);
        if ((parentComponentsNodeList) <> (nil)) and ((parentComponentsNodeList.getLength()) > (0)) then begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('Replacing', TJava.Box(Self), 'set()');
            end;
            componentNode := parentComponentsNodeList.item(0).getChildNodes().item(0);
            if (componentNode) <> (nil) then begin
                document_.removeChild(componentNode);
            end;
            parentComponentsNodeList.item(0).appendChild(TTransformInfoDomNodeView.Create(aParentViewName).toXmlNode(document_));
        end else begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEW) then begin
                Self.logUtil.putF('Setting', TJava.Box(Self), 'set()');
            end;
            objectConfigNode := document_.getElementsByTagName(TTransformInfoObjectConfigData.getInstance().NAME).item(0);
            parentComponentsNode := document_.createElement(TTransformInfosData.getInstance().NAME);
            objectConfigNode.appendChild(parentComponentsNode);
            transformInfoDomNodeView_ := TTransformInfoDomNodeView.Create(aParentViewName);
            parentComponentsNode.appendChild(transformInfoDomNodeView_.toXmlNode(document_));
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

