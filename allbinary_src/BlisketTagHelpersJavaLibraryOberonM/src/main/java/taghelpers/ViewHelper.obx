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
// package taghelpers
unit ViewHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, LogUtil, AbeClientInformationInterface, TransformInterface, TransformDocumentInterface, TransformInfoInterface, CommonStrings, Document;

type
  {AB:TYPES}
  TViewHelper = class(TInterfacedObject, ITransformInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    abeClientInformation: IAbeClientInformationInterface;
    componentInterface: ITransformInterface;
    NO_TYPE: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        function getTypeId: Integer; virtual;
        function view: string; virtual;
        function toXmlDoc: TDocument; virtual;
        function getViewObject: ITransformInterface; virtual;
        function getTransformInfoInterface: ITransformInfoInterface; virtual;
        function getTransformDocumentInterface: ITransformDocumentInterface; virtual;
        procedure setTransformDocumentInterface(viewDocumentInterface: ITransformDocumentInterface); virtual;
  end;

implementation
uses
  ServiceClientInformationInterfaceFactory, TransformFactory;


{AB:CODE}

procedure TViewHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.abeClientInformation := TServiceClientInformationInterfaceFactory.getInstance();
  
  Self.NO_TYPE := 0;
end;

function TViewHelper.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TViewHelper.Create(hashMap_: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
    inherited Create;
    InitFields;
        Self.componentInterface := TTransformFactory.getInstance().getInstance(Self.abeClientInformation, hashMap_, pageContext_);
end;
    

function TViewHelper.getTypeId: Integer;
begin
        Exit(Self.NO_TYPE);
end;
    

// throws Exception
function TViewHelper.view: string;
var
  error: string;
begin
        try
            Exit(Self.componentInterface.view());
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to View: ';
            if (Self.componentInterface) <> (nil) then begin
                error := error + TJava.ToObject(Self.componentInterface).ClassType.ClassName;
            end else begin
                error := error + 'Unknown';
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'view()', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

// throws Exception
function TViewHelper.toXmlDoc: TDocument;
var
  error: string;
begin
        try
            raise SysUtils.Exception.Create('Hmm: ' + TJava.ToString(Self.componentInterface.getTransformDocumentInterface().getDoc()));
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to View: ';
            if (Self.componentInterface) <> (nil) then begin
                error := error + TJava.ToObject(Self.componentInterface).ClassType.ClassName;
            end else begin
                error := error + 'Unknown';
            end;
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'view()', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;
    

function TViewHelper.getViewObject: ITransformInterface;
begin
        Exit(Self.componentInterface);
end;
    

// throws Exception
function TViewHelper.getTransformInfoInterface: ITransformInfoInterface;
begin
        Exit(Self.componentInterface.getTransformInfoInterface());
end;
    

function TViewHelper.getTransformDocumentInterface: ITransformDocumentInterface;
begin
        Exit(nil);
end;
    

procedure TViewHelper.setTransformDocumentInterface(viewDocumentInterface: ITransformDocumentInterface);
begin
        Exit;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

