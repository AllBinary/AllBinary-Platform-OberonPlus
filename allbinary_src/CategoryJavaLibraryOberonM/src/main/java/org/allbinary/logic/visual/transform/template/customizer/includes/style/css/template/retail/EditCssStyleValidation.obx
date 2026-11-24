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
// package org.allbinary.logic.visual.transform.template.customizer.includes.style.css.template.retail
unit EditCssStyleValidation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, ValidationInterface, Document, Node, CssStyleValidation;

type
  {AB:TYPES}
  TEditCssStyleValidation = class(TCssStyleValidation, IValidationInterface, IDomNodeInterface)
  public
    function JavaObject: TObject;
        constructor Create; overload;
        constructor Create(document_: TDocument); overload;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>); overload;
        function isValid: Boolean; virtual;
        function validationInfo: string; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  StyleData, StylesData, ColorsView;


{AB:CODE}

function TEditCssStyleValidation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TEditCssStyleValidation.Create;
begin
    inherited Create;
end;
    

constructor TEditCssStyleValidation.Create(document_: TDocument);
begin
        inherited Create(document_);
end;
    

constructor TEditCssStyleValidation.Create(hashMap_: TJavaHashMap<TObject, TObject>);
begin
        inherited Create(hashMap_);
end;
    

function TEditCssStyleValidation.isValid: Boolean;
begin
        Exit(inherited isValid());
end;
    

function TEditCssStyleValidation.validationInfo: string;
begin
        Exit(inherited validationInfo());
end;
    

function TEditCssStyleValidation.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TEditCssStyleValidation.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TEditCssStyleValidation.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
  styleNode: TNode;
  size: Integer;
  styleDomNodeInterface: IDomNodeInterface;
  i: Integer;
begin
        node_ := document_.createElement(TStylesData.getInstance().NAME);
        styleNode := document_.createElement(TStyleData.getInstance().NAME);
        node_.appendChild(styleNode);
        styleNode.appendChild(TColorsView.Create().toXmlNode(document_));
        size := Self.cssStyleElementVector.size();
        for i := 0 to size - 1 do begin
            styleDomNodeInterface := (TJava.ToObject(Self.cssStyleElementVector.get(i)) as IDomNodeInterface);
            styleNode.appendChild(styleDomNodeInterface.toXmlNode(document_));
        end;
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

