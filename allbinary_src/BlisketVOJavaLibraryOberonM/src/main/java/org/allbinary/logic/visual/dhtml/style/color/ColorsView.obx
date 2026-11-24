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
// package org.allbinary.logic.visual.dhtml.style.color
unit ColorsView;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DomNodeInterface, CommonPhoneStrings, Document, Node;

type
  {AB:TYPES}
  TColorsView = class(TInterfacedObject, IDomNodeInterface)
  public
    commonPhoneStrings: TCommonPhoneStrings;
    HEXRADIX: Integer;
    MAX: Integer;
    delta: Integer;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create;
        function getColorNode(document_: TDocument; redIndex: Integer; greenIndex: Integer; blueIndex: Integer): TNode; virtual;
        function toXmlNode(document_: TDocument): TNode; virtual;
  end;

implementation
uses
  ColorData, ColorsData, ModDomHelper, StringMaker;


{AB:CODE}

procedure TColorsView.InitFields;
begin
  Self.commonPhoneStrings := TCommonPhoneStrings.getInstance();
  Self.HEXRADIX := 16;
  Self.MAX := 255;
  Self.delta := 20;
end;

function TColorsView.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TColorsView.Create;
begin
    inherited Create;
    InitFields;
end;
    

// throws Exception
function TColorsView.getColorNode(document_: TDocument; redIndex: Integer; greenIndex: Integer; blueIndex: Integer): TNode;
var
  hexColorStringBuffer: TStringMaker;
  colorNode: TNode;
begin
        hexColorStringBuffer := TStringMaker.Create();
        if (redIndex) < (Self.HEXRADIX) then begin
            hexColorStringBuffer.append(Self.commonPhoneStrings.ZERO);
        end;
        hexColorStringBuffer.append(TInteger.toString(redIndex, Self.HEXRADIX));
        if (greenIndex) < (Self.HEXRADIX) then begin
            hexColorStringBuffer.append(Self.commonPhoneStrings.ZERO);
        end;
        hexColorStringBuffer.append(TInteger.toString(greenIndex, Self.HEXRADIX));
        if (blueIndex) < (Self.HEXRADIX) then begin
            hexColorStringBuffer.append(Self.commonPhoneStrings.ZERO);
        end;
        hexColorStringBuffer.append(TInteger.toString(blueIndex, Self.HEXRADIX));
        colorNode := TModDomHelper.createNameValueNodes(document_, TColorData.getInstance().NAME, hexColorStringBuffer.toString());
        Exit(colorNode);
end;
    

// throws Exception
function TColorsView.toXmlNode(document_: TDocument): TNode;
var
  node_: TNode;
  blackNode: TNode;
  hexColorStringBuffer: TStringMaker;
  colorNode: TNode;
  index: Integer;
  whiteNode: TNode;
  redIndex: Integer;
  greenIndex: Integer;
  blueIndex: Integer;
begin
        node_ := TModDomHelper.createNameValueNodes(document_, TColorsData.getInstance().NAME, 'RGB Colors In Hex');
        blackNode := TModDomHelper.createNameValueNodes(document_, TColorData.getInstance().NAME, '000000');
        node_.appendChild(blackNode);
        index := 0;
        while (index) < (Self.MAX) do begin
            hexColorStringBuffer := TStringMaker.Create();
            if (index) < (Self.HEXRADIX) then begin
                hexColorStringBuffer.append(Self.commonPhoneStrings.ZERO);
            end;
            hexColorStringBuffer.append(TInteger.toString(index, Self.HEXRADIX));
            if (index) < (Self.HEXRADIX) then begin
                hexColorStringBuffer.append(Self.commonPhoneStrings.ZERO);
            end;
            hexColorStringBuffer.append(TInteger.toString(index, Self.HEXRADIX));
            if (index) < (Self.HEXRADIX) then begin
                hexColorStringBuffer.append(Self.commonPhoneStrings.ZERO);
            end;
            hexColorStringBuffer.append(TInteger.toString(index, Self.HEXRADIX));
            colorNode := TModDomHelper.createNameValueNodes(document_, TColorData.getInstance().NAME, hexColorStringBuffer.toString());
            node_.appendChild(colorNode);
            index := (index) + (Self.delta);
        end;
        whiteNode := TModDomHelper.createNameValueNodes(document_, TColorData.getInstance().NAME, 'FFFFFF');
        node_.appendChild(whiteNode);
        blueIndex := (Self.MAX) div (2);
        while (blueIndex) < (Self.MAX) do begin
            greenIndex := 0;
            while (greenIndex) < ((Self.MAX) div (2)) do begin
                redIndex := 0;
                while (redIndex) < ((Self.MAX) div (2)) do begin
                    node_.appendChild(Self.getColorNode(document_, redIndex, greenIndex, blueIndex));
                    redIndex := (redIndex) + (Self.delta);
                end;
                greenIndex := (greenIndex) + (Self.delta);
            end;
            blueIndex := (blueIndex) + (Self.delta);
        end;
        redIndex := (Self.MAX) div (2);
        while (redIndex) < (Self.MAX) do begin
            greenIndex := 0;
            while (greenIndex) < ((Self.MAX) div (2)) do begin
                blueIndex := 0;
                while (blueIndex) < ((Self.MAX) div (2)) do begin
                    node_.appendChild(Self.getColorNode(document_, redIndex, greenIndex, blueIndex));
                    blueIndex := (blueIndex) + (Self.delta);
                end;
                greenIndex := (greenIndex) + (Self.delta);
            end;
            redIndex := (redIndex) + (Self.delta);
        end;
        greenIndex := (Self.MAX) div (2);
        while (greenIndex) < (Self.MAX) do begin
            redIndex := 0;
            while (redIndex) < ((Self.MAX) div (2)) do begin
                blueIndex := 0;
                while (blueIndex) < ((Self.MAX) div (2)) do begin
                    node_.appendChild(Self.getColorNode(document_, redIndex, greenIndex, blueIndex));
                    blueIndex := (blueIndex) + (Self.delta);
                end;
                redIndex := (redIndex) + (Self.delta);
            end;
            greenIndex := (greenIndex) + (Self.delta);
        end;
        greenIndex := 0;
        while (greenIndex) < (Self.MAX) do begin
            redIndex := 0;
            while (redIndex) < (Self.MAX) do begin
                blueIndex := 0;
                while (blueIndex) < (Self.MAX) do begin
                    node_.appendChild(Self.getColorNode(document_, redIndex, greenIndex, blueIndex));
                    blueIndex := (blueIndex) + ((2) * (Self.delta));
                end;
                redIndex := (redIndex) + ((2) * (Self.delta));
            end;
            greenIndex := (greenIndex) + ((2) * (Self.delta));
        end;
        Exit(node_);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

