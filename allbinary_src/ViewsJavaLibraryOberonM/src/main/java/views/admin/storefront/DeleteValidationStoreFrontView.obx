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
// package views.admin.storefront
unit DeleteValidationStoreFrontView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, ValidationComponentInterface, TransformInfoInterface, Document, Node, StoreFrontComponent;

type
  {AB:TYPES}
  TDeleteValidationStoreFrontView = class(TStoreFrontComponent, IValidationComponentInterface)
  public
    logUtil: TLogUtil;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function isValid: Boolean; virtual;
        function validationInfo: string; virtual;
        function toValidationInfoDoc: TDocument; virtual;
        function toValidationInfoNode(document_: TDocument): TNode; virtual;
        function getTransformInfoInterface: ITransformInfoInterface; virtual;
  end;

implementation
uses
  StoreFrontFactory, StringMaker;


{AB:CODE}

procedure TDeleteValidationStoreFrontView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
end;

function TDeleteValidationStoreFrontView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TDeleteValidationStoreFrontView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
end;
    

function TDeleteValidationStoreFrontView.isValid: Boolean;
var
  valid: Boolean;
begin
        try
            valid := True;
            if (Self.newStoreFrontInterface.isNameValid()) = (False) then begin
                valid := False;
            end;
            if TJava.IsNull(TStoreFrontFactory.getInstance(Self.newStoreFrontInterface.getName())) then begin
                valid := False;
            end;
            Self.newStoreFrontInterface := TStoreFrontFactory.getInstance(Self.newStoreFrontInterface.getName());
            Exit(valid);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Failed to validate form', TJava.Box(Self), Self.commonStrings.IS_VALID, TJava.Box(e));
            end;
            Exit(False);
            end;
        end;
end;
    

function TDeleteValidationStoreFrontView.validationInfo: string;
var
  stringBuffer: TStringMaker;
begin
        try
            stringBuffer := TStringMaker.Create();
            if (Self.newStoreFrontInterface.isNameValid()) = (False) then begin
                stringBuffer.append(Self.newStoreFrontInterface.nameValidationInfo());
            end;
            if TJava.IsNull(TStoreFrontFactory.getInstance(Self.newStoreFrontInterface.getName())) then begin
                stringBuffer.append(TJava.ToString(Self.newStoreFrontInterface) + ' does not exist.<br>');
            end;
            Exit('Unkown Error');
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put('Failed to generate validation error info', TJava.Box(Self), 'validationInfo()', TJava.Box(e));
            end;
            Exit('Error Validating Form');
            end;
        end;
end;
    

function TDeleteValidationStoreFrontView.toValidationInfoDoc: TDocument;
begin
        Exit(nil);
end;
    

function TDeleteValidationStoreFrontView.toValidationInfoNode(document_: TDocument): TNode;
begin
        Exit(nil);
end;
    

// throws Exception
function TDeleteValidationStoreFrontView.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(inherited getTransformInfoInterface());
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

