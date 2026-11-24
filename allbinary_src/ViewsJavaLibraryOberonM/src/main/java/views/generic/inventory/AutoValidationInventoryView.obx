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
// package views.generic.inventory
unit AutoValidationInventoryView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ValidationComponentInterface, TransformInfoInterface, Document, Node, InventoryView;

type
  {AB:TYPES}
  TAutoValidationInventoryView = class(TInventoryView, IValidationComponentInterface)
  public
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function isValid: Boolean; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function validationInfo: string; virtual;
        function getTransformInfoInterface: ITransformInfoInterface; virtual;
  end;

implementation

{AB:CODE}

function TAutoValidationInventoryView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAutoValidationInventoryView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
end;
    

function TAutoValidationInventoryView.isValid: Boolean;
begin
        Exit(True);
end;
    

function TAutoValidationInventoryView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TAutoValidationInventoryView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

function TAutoValidationInventoryView.validationInfo: string;
begin
        Exit(nil);
end;
    

// throws Exception
function TAutoValidationInventoryView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

