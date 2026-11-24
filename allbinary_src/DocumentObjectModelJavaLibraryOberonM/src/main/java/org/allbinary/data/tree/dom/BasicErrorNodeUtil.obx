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
// package org.allbinary.data.tree.dom
unit BasicErrorNodeUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, Document, Node;

type
  {AB:TYPES}
  TBasicErrorNodeUtil = class(TObject)
  public
        constructor Create;
        class function get(document_: TDocument; errorText: string): TNode; static;
  end;

implementation
uses
  ModDomHelper, ErrorData;


{AB:CODE}
    

constructor TBasicErrorNodeUtil.Create;
begin
    inherited Create;
end;
    

// throws Exception
class function TBasicErrorNodeUtil.get(document_: TDocument; errorText: string): TNode;
var
  node_: TNode;
begin
        try
            node_ := document_.createElement(TErrorData.getInstance().NAME);
            node_.appendChild(TModDomHelper.createNameValueNodes(document_, TErrorData.getInstance().TEXT, errorText));
            Exit(node_);
        except
            on e: SysUtils.Exception do begin
            raise SysUtils.Exception.Create('Error Node Creation Failure');
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

