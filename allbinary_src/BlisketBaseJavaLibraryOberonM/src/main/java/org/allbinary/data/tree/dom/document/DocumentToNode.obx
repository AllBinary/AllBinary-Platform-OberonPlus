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
// package org.allbinary.data.tree.dom.document
unit DocumentToNode;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto;

type
  {AB:TYPES}
  TDocumentToNode = class(TObject)
  public
    class var XMLROOT: string;
    class var XMLROOTSTART: string;
    class var XMLROOTEND: string;
    class var XMLJSPROOTSTART: string;
    class var XMLEND: string;
    class var XMLJSPROOTENDSTART: string;
        constructor Create;
        class function convertDocumentToNodeString(documentString: string): string; static;
        class function removeXmlDefinitionFromDocumentString(documentString: string): string; static;
        class function remove(documentString: string; start: string; end_: string): string; static;
  end;

implementation
uses
  StringUtil, Replace;


{AB:CODE}
    

constructor TDocumentToNode.Create;
begin
    inherited Create;
end;
    

// throws Exception
class function TDocumentToNode.convertDocumentToNodeString(documentString: string): string;
var
  replaceXmlRoot: TReplace;
begin
        documentString := TDocumentToNode.remove(documentString, TDocumentToNode.XMLJSPROOTSTART, TDocumentToNode.XMLEND);
        documentString := TDocumentToNode.remove(documentString, TDocumentToNode.XMLJSPROOTENDSTART, TDocumentToNode.XMLEND);
        replaceXmlRoot := TReplace.Create(TDocumentToNode.XMLROOT, TStringUtil.getInstance().EMPTY_STRING);
        Exit(replaceXmlRoot.all(documentString));
end;
    

class function TDocumentToNode.removeXmlDefinitionFromDocumentString(documentString: string): string;
begin
        Exit(TDocumentToNode.remove(documentString, TDocumentToNode.XMLROOTSTART, TDocumentToNode.XMLROOTEND));
end;
    

class function TDocumentToNode.remove(documentString: string; start: string; end_: string): string;
var
  startIndex: Integer;
  endIndex: Integer;
  startString: string;
  resultString: string;
begin
        
        while ((TJava.Assign(startIndex, (Pos(TJava.ToString(start), documentString) - 1)))) <> (-1) do begin
            if (startIndex) >= (0) then begin
                endIndex := documentString.indexOf(end_, startIndex);
                if (endIndex) >= (0) then begin
                    startString := Copy(documentString, (0) + 1, (startIndex) - (0));
                    resultString := Copy(documentString, ((endIndex) + (1)) + 1, MaxInt);
                    Exit(startString + resultString);
                end;
            end;
        end;
        Exit(documentString);
end;

initialization
  {AB:INITIALIZATION}
  TDocumentToNode.XMLROOT := '<?xml version="1.0" encoding="UTF-8"?>';
  TDocumentToNode.XMLROOTSTART := '<?xml';
  TDocumentToNode.XMLROOTEND := '?>';
  TDocumentToNode.XMLJSPROOTSTART := '<jsp:root';
  TDocumentToNode.XMLEND := '>';
  TDocumentToNode.XMLJSPROOTENDSTART := '</jsp:root';
  {AB:END}

end.

