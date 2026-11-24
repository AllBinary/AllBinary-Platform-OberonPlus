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
// package org.allbinary.logic.visual.transform.info
unit TransformInfoDomNodeView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, Document, Node, TransformInfoInterface, TransformInfoDomNode;

type
  {AB:TYPES}
  TTransformInfoDomNodeView = class(TTransformInfoDomNode, IDomNodeInterface)
  public
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface; mapping: string); overload;
        constructor Create(transformInfoInterface_: ITransformInfoInterface); overload;
        constructor Create(name: string; mappedName: string); overload;
        constructor Create(name: string); overload;
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  TransformInfoData, Attr, NamedNodeMap;


{AB:CODE}

function TTransformInfoDomNodeView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TTransformInfoDomNodeView.Create(transformInfoInterface_: ITransformInfoInterface; mapping: string);
begin
        inherited Create(transformInfoInterface_, mapping);
end;
    

constructor TTransformInfoDomNodeView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
end;
    

constructor TTransformInfoDomNodeView.Create(name: string; mappedName: string);
begin
        inherited Create(name, mappedName);
end;
    

constructor TTransformInfoDomNodeView.Create(name: string);
begin
        inherited Create(name, nil);
end;
    

// throws Exception
function TTransformInfoDomNodeView.toXmlNode(document_: TDocument): TNode;
var
  transformInfoData_: TTransformInfoData;
  subViewNode: TNode;
  viewNameAttr: TAttr;
  componentNodeAttributes: TNamedNodeMap;
  mappedNameAttr: TAttr;
begin
        transformInfoData_ := TTransformInfoData.getInstance();
        subViewNode := document_.createElement(transformInfoData_.NAME);
        viewNameAttr := document_.createAttribute(transformInfoData_.NAME);
        viewNameAttr.setValue(Self.getTransformInfoInterface().getName());
        componentNodeAttributes := subViewNode.getAttributes();
        componentNodeAttributes.setNamedItem(viewNameAttr);
        if not TJava.IsNull(Self.getMappedName()) then begin
            mappedNameAttr := document_.createAttribute(transformInfoData_.MAPPED);
            mappedNameAttr.setValue(Self.getMappedName());
            componentNodeAttributes.setNamedItem(mappedNameAttr);
        end;
        Exit(subViewNode);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

