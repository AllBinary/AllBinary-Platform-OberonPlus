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
unit WorkFlowsView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, DomNodeInterface, LogUtil, TransformInfoInterface, Document, Node, HttpStoreComponentView;

type
  {AB:TYPES}
  TWorkFlowsView = class(THttpStoreComponentView, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    workFlowsVector: TBasicArrayList;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        procedure addDomNodeInterfaces; virtual;
        function view: string; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  BasicArrayListD, WorkFlowEntityFactory, WorkFlowData, WorkFlowInterface, LicensingException;


{AB:CODE}

procedure TWorkFlowsView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;

function TWorkFlowsView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TWorkFlowsView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        Self.workFlowsVector := TWorkFlowEntityFactory.getInstance().create2().get(Self.getWeblisketSession().getStoreName());
end;
    

procedure TWorkFlowsView.addDomNodeInterfaces;
begin
        Self.addDomNodeInterface((TJava.ToObject(Self) as IDomNodeInterface));
end;
    

// throws Exception
function TWorkFlowsView.view: string;
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
    

function TWorkFlowsView.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
  size: Integer;
  workFlowInterface_: IWorkFlowInterface;
  index: Integer;
begin
        try
            node_ := document_.createElement(TWorkFlowData.getInstance().WORKFLOWS);
            size := Self.workFlowsVector.size();
            for index := 0 to size - 1 do begin
                workFlowInterface_ := (TJava.ToObject(Self.workFlowsVector.get(index)) as IWorkFlowInterface);
            end;
            Exit(node_);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().VIEWERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'toXmlNode()', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

