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
// package org.allbinary.logic.visual.theme
unit ThemesValidation;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, DomNodeInterface, Validation, Document, Node;

type
  {AB:TYPES}
  TThemesValidation = class(TValidation, IDomNodeInterface)
  public
    themeVector: TBasicArrayList;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create; overload;
        constructor Create(node_: TNode); overload;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>); overload;
        function isValid: Boolean; virtual;
        function validationInfo: string; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  ThemesData, BasicArrayListD, StdUtil;


{AB:CODE}

procedure TThemesValidation.InitFields;
begin
  
end;

function TThemesValidation.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TThemesValidation.Create;
begin
    inherited Create;
    InitFields;
        Self.themeVector := TBasicArrayListD.Create();
end;
    

constructor TThemesValidation.Create(node_: TNode);
begin
    inherited Create;
    InitFields;
end;
    

constructor TThemesValidation.Create(hashMap_: TJavaHashMap<TObject, TObject>);
begin
    inherited Create;
    InitFields;
end;
    

function TThemesValidation.isValid: Boolean;
begin
        Exit(True);
end;
    

function TThemesValidation.validationInfo: string;
begin
        Exit(nil);
end;
    

function TThemesValidation.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TThemesValidation.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TThemesValidation.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
  size: Integer;
  themeDomNodeInterface: IDomNodeInterface;
  i: Integer;
begin
        node_ := document_.createElement(TThemesData.getInstance().NAME);
        size := Self.themeVector.size();
        for i := 0 to size - 1 do begin
            themeDomNodeInterface := (TJava.ToObject(Self.themeVector.get(i)) as IDomNodeInterface);
            node_.appendChild(themeDomNodeInterface.toXmlNode(document_));
        end;
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

