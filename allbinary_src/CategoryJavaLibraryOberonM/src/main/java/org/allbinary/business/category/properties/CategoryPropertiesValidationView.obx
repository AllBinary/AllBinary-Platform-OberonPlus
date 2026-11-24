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
// package org.allbinary.business.category.properties
unit CategoryPropertiesValidationView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ValidationInterface, Document, Node, CategoryPropertiesInterface, CategoryPropertiesView;

type
  {AB:TYPES}
  TCategoryPropertiesValidationView = class(TCategoryPropertiesView, IValidationInterface)
  public
    logUtil: TLogUtil;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(categoryPropertiesInterface_: ICategoryPropertiesInterface);
        function isValid: Boolean; virtual;
        function validationInfo: string; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  StringMaker;


{AB:CODE}

procedure TCategoryPropertiesValidationView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

function TCategoryPropertiesValidationView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCategoryPropertiesValidationView.Create(categoryPropertiesInterface_: ICategoryPropertiesInterface);
begin
        inherited Create(categoryPropertiesInterface_);
        InitFields;
end;
    

// throws Exception
function TCategoryPropertiesValidationView.isValid: Boolean;
begin
        Exit(Self.categoryPropertiesInterface.isValid());
end;
    

// throws Exception
function TCategoryPropertiesValidationView.validationInfo: string;
var
  stringBuffer: TStringMaker;
begin
        try
            stringBuffer := TStringMaker.Create();
            stringBuffer.append(Self.categoryPropertiesInterface.validationInfo());
            Exit(stringBuffer.toString());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Failed to generate validation info error', TJava.Box(Self), 'validationInfo()', TJava.Box(e));
            end;
            Exit('Error Validating Data');
            end;
        end;
end;
    

// throws Exception
function TCategoryPropertiesValidationView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

// throws Exception
function TCategoryPropertiesValidationView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

