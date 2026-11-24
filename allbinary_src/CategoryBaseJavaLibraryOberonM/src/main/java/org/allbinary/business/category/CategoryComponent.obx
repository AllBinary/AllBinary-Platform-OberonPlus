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
// package org.allbinary.business.category
unit CategoryComponent;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, TransformInterface, TransformDocumentInterface, TransformInfoInterface, Document, CategoryInterface, CategoryView;

type
  {AB:TYPES}
  TCategoryComponent = class(TCategoryView, ITransformInterface)
  public
    NO_TYPE: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(categoryInterface_: ICategoryInterface);
        function getTypeId: Integer; virtual;
        function getTransformDocumentInterface: ITransformDocumentInterface; virtual;
        function getTransformInfoInterface: ITransformInfoInterface; virtual;
        procedure setTransformDocumentInterface(viewDocumentInterface: ITransformDocumentInterface); virtual;
        function toXmlDoc: TDocument; virtual;
        function view: string; virtual;
  end;

implementation
uses
  DomDocumentHelper;


{AB:CODE}

procedure TCategoryComponent.InitFields;
begin
  Self.NO_TYPE := 0;
end;

function TCategoryComponent.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCategoryComponent.Create(categoryInterface_: ICategoryInterface);
begin
        inherited Create(categoryInterface_);
        InitFields;
end;
    

function TCategoryComponent.getTypeId: Integer;
begin
        Exit(Self.NO_TYPE);
end;
    

function TCategoryComponent.getTransformDocumentInterface: ITransformDocumentInterface;
begin
        Exit(nil);
end;
    

// throws Exception
function TCategoryComponent.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(nil);
end;
    

procedure TCategoryComponent.setTransformDocumentInterface(viewDocumentInterface: ITransformDocumentInterface);
begin
end;
    

// throws Exception
function TCategoryComponent.toXmlDoc: TDocument;
var
  document_: TDocument;
begin
        document_ := TDomDocumentHelper.create_();
        document_.appendChild(TCategoryView.Create(Self.getCategoryInterface()).toXmlNode(document_));
        Exit(document_);
end;
    

// throws Exception
function TCategoryComponent.view: string;
begin
        Exit(nil);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

