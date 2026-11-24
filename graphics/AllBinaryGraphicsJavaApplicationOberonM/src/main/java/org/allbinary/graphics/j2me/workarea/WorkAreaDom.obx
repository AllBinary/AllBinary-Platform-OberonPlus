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
// package org.allbinary.graphics.j2me.workarea
unit WorkAreaDom;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, Document;

type
  {AB:TYPES}
  TWorkAreaDom = class(TObject)
  public
    name: string;
    canvasNodeList: TBasicArrayList;
    class var WORKAREA: string;
    class var NAME_: string;
    class var FRAMES: string;
    procedure InitFields;
        constructor Create(document_: TDocument);
        function getName: string; virtual;
        function getCanvasNodes: TBasicArrayList; virtual;
  end;

implementation
uses
  DomHelper, Node, NodeList;


{AB:CODE}

procedure TWorkAreaDom.InitFields;
begin
  
  
end;
    

constructor TWorkAreaDom.Create(document_: TDocument);
var
  workAreaNodeList: TNodeList;
  numberOfworkAreas: Integer;
  numberOfNodes: Integer;
  nameNode: TNode;
  nameTextNode: TNode;
begin
    inherited Create;
    InitFields;
        workAreaNodeList := document_.getElementsByTagName(Self.WORKAREA);
        if (workAreaNodeList) <> (nil) then begin
            numberOfworkAreas := workAreaNodeList.getLength();
            if (numberOfworkAreas) = (1) then begin
                numberOfNodes := workAreaNodeList.getLength();
                nameNode := TDomHelper.getInstance().searchNodeList(Self.NAME_, workAreaNodeList.item(0).getChildNodes());
                nameTextNode := nameNode.getFirstChild();
                Self.name := nameTextNode.getNodeValue();
            end else begin
                raise SysUtils.Exception.Create('Wrong Number of WorkAreas: ' + IntToStr(numberOfworkAreas));
            end;
            Self.canvasNodeList := TDomHelper.getInstance().getChildrenWithoutTextNodes(TWorkAreaDom.FRAMES, workAreaNodeList.item(0).getChildNodes());
        end else begin
            raise SysUtils.Exception.Create('workArea Node Not Found');
        end;
end;
    

function TWorkAreaDom.getName: string;
begin
        Exit(Self.name);
end;
    

function TWorkAreaDom.getCanvasNodes: TBasicArrayList;
begin
        Exit(Self.canvasNodeList);
end;

initialization
  {AB:INITIALIZATION}
  TWorkAreaDom.WORKAREA := 'workArea';
  TWorkAreaDom.NAME_ := 'name';
  TWorkAreaDom.FRAMES := 'frames';
  {AB:END}

end.

