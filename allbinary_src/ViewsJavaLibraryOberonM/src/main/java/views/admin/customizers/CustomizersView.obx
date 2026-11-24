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
// package views.admin.customizers
unit CustomizersView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, DomNodeInterface, LogUtil, TransformInfoInterface, CommonStrings, Document, Node, HttpStoreComponentView;

type
  {AB:TYPES}
  TCustomizersView = class(THttpStoreComponentView, IDomNodeInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    customizersVector: TBasicArrayList;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function toXmlNode(document_: TDocument): TNode; virtual;
        procedure addDomNodeInterfaces; virtual;
        function view: string; virtual;
  end;

implementation
uses
  BasicArrayListD, TransformInfoEntityBuilder, ModDomHelper, GLOBALS2, StdUtil, StringComparator, CustomizerTransformInfoData, TransformTemplateCustomizerData, TransformTemplateCustomizersData, BodyData, TitleData, TransformTemplateCustomizerUtil;


{AB:CODE}

procedure TCustomizersView.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  
end;

function TCustomizersView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCustomizersView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
        inherited Create(transformInfoInterface_);
        InitFields;
        Self.customizersVector := TTransformInfoEntityBuilder.getInstance().getNames(Self.getWeblisketSession().getStoreName());
end;
    

function TCustomizersView.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
  unsortedCustomizerViewVector: TBasicArrayList;
  size: Integer;
  viewName: string;
  index: Integer;
  objectArray: TArray<TObject>;
  viewNameNode: TNode;
begin
        try
            node_ := document_.createElement(TTransformTemplateCustomizersData.NAME);
            unsortedCustomizerViewVector := TBasicArrayListD.Create();
            size := Self.customizersVector.size();
            for index := 0 to size - 1 do begin
                viewName := TJava.UnboxString(TJava.ToObject(Self.customizersVector.get(index)));
                if (((((Pos(TJava.ToString(TCustomizerTransformInfoData.NAME), viewName) - 1)) > (0)) and (((Pos(TJava.ToString(GLOBALS2.EDIT), viewName) - 1)) > (0))) and (((Pos(TJava.ToString(TBodyData.getInstance().VIEWNAMEKEY), viewName) - 1)) > (0))) and (((Pos(TJava.ToString(TTitleData.getInstance().VIEWNAMEKEY), viewName) - 1)) > (0)) then begin
                    unsortedCustomizerViewVector.add(TJava.Box(viewName));
                end;
            end;
            objectArray := ToObjectArray(unsortedCustomizerViewVector.toArray());
            TArrays.sort(objectArray, TStringComparator.Create());
            for index := 0 to System.Length(objectArray) - 1 do begin
                viewName := TJava.UnboxString(TJava.ToObject(objectArray[index]));
                viewNameNode := TModDomHelper.createNameValueNodes(document_, TTransformTemplateCustomizerData.NAME, viewName, TTransformTemplateCustomizerUtil.getInstance().getPageNameHack(viewName, Self.getWeblisketSession().getStoreName()));
                node_.appendChild(viewNameNode);
            end;
            Exit(node_);
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().XSLLOGGINGERROR) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'toXmlNode', TJava.Box(e));
            end;
            Exit(nil);
            end;
        end;
end;
    

procedure TCustomizersView.addDomNodeInterfaces;
begin
        Self.addDomNodeInterface((TJava.ToObject(Self) as IDomNodeInterface));
end;
    

// throws Exception
function TCustomizersView.view: string;
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

