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
// package views.admin.workflow
unit WorkFlowView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, LogUtil, WorkFlowInterface, TransformInfoInterface, Document, Node, HttpStoreComponentView;

type
  {AB:TYPES}
  TWorkFlowView = class(THttpStoreComponentView, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    workFlowInterface: IWorkFlowInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function toXmlNode(document_: TDocument): TNode; virtual;
        procedure addDomNodeInterfaces; virtual;
        function view: string; virtual;
  end;

implementation

{AB:CODE}

procedure TWorkFlowView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TWorkFlowView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TWorkFlowView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
end;
    

function TWorkFlowView.toXmlNode(document_: TDocument): TNode;
begin
        try
            Exit(nil);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'toXmlNode()', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

procedure TWorkFlowView.addDomNodeInterfaces;
begin
        Self.addDomNodeInterface((TJava.ToObject(Self) as IDomNodeInterface));
end;
    

// throws Exception
function TWorkFlowView.view: string;
begin
        try
            Self.addDomNodeInterfaces();
            Exit(inherited view());
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().TAGHELPERERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'view()', TJava.Box(e));
            end;
            raise e;
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

