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
// package org.allbinary.logic.visual.transform.info
unit TransformInfoInterfaceView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, Document, Node, TransformInfoInterface;

type
  {AB:TYPES}
  TTransformInfoInterfaceView = class(TInterfacedObject, IDomNodeInterface)
  public
    transformInfoInterface: ITransformInfoInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(transformInfoInterface_: ITransformInfoInterface);
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  TransformInfoData, ModDomHelper;


{AB:CODE}

procedure TTransformInfoInterfaceView.InitFields;
begin
  
end;

function TTransformInfoInterfaceView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TTransformInfoInterfaceView.Create(transformInfoInterface_: ITransformInfoInterface);
begin
    inherited Create;
    InitFields;
        Self.transformInfoInterface := transformInfoInterface_;
end;
    

// throws Exception
function TTransformInfoInterfaceView.toXmlNode(document_: TDocument): TNode;
begin
        Exit(TModDomHelper.createNameValueNodes(document_, TTransformInfoData.getInstance().NAME, Self.transformInfoInterface.toHashMap()));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

