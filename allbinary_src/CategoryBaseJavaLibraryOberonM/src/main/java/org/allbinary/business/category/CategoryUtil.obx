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
// package org.allbinary.business.category
unit CategoryUtil;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, AbPath, Node;

type
  {AB:TYPES}
  TCategoryUtil = class(TObject)
  public
        constructor Create;
        class function getPathLevel(categoryPath: TAbPath): Integer; static;
        class function getNameFromNode(node_: TNode): string; static;
  end;

implementation
uses
  CategoryData, DomNodeHelper, DomSearchHelper, AbPathData, StringUtil, StringUtils, Attr, NamedNodeMap;


{AB:CODE}
    

constructor TCategoryUtil.Create;
begin
    inherited Create;
end;
    

class function TCategoryUtil.getPathLevel(categoryPath: TAbPath): Integer;
var
  count: Integer;
begin
    TJava.MonitorEnter(nil);
    try
        count := TStringUtils.countMatches(categoryPath.toString(), TAbPathData.getInstance().SEPARATOR);
        Exit(count);
    finally
    TJava.MonitorExit(nil);
    end;
end;
    

class function TCategoryUtil.getNameFromNode(node_: TNode): string;
var
  attributes: TNamedNodeMap;
  attrNode: TAttr;
  labelNode: TNode;
begin
    TJava.MonitorEnter(nil);
    try
        attributes := node_.getAttributes();
        attrNode := TAttr(TJava.ToObject(attributes.getNamedItem(TCategoryData.getInstance().LABEL_)));
        if (attrNode) <> (nil) then begin
            Exit(attrNode.getValue());
        end else begin
            labelNode := TDomSearchHelper.getNodeNoThrow(TCategoryData.getInstance().LABEL_, node_.getChildNodes());
            if (labelNode) <> (nil) then begin
                Exit(TDomNodeHelper.getTextNodeValue(labelNode));
            end;
        end;
        Exit(TStringUtil.getInstance().EMPTY_STRING);
    finally
    TJava.MonitorExit(nil);
    end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

