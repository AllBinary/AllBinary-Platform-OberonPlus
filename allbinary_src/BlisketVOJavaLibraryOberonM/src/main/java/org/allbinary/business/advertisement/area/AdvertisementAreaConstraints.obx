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
// package org.allbinary.business.advertisement.area
unit AdvertisementAreaConstraints;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, DisplayInBrowserContraintsInterface, TwoDimensionalConstraintInterface, Document, AdvertisementAreaConstraintsInterface;

type
  {AB:TYPES}
  TAdvertisementAreaConstraints = class(TInterfacedObject, IAdvertisementAreaConstraintsInterface)
  public
    displayInBrowserContraintsInterface: IDisplayInBrowserContraintsInterface;
    twoDimensionConstraintsInterface: ITwoDimensionalConstraintInterface;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(document_: TDocument);
        procedure setDisplayInBrowserContraints(displayInBrowserContraintsInterface_: IDisplayInBrowserContraintsInterface); virtual;
        procedure getTwoDimensionContraints(twoDimensionConstraintsInterface: ITwoDimensionalConstraintInterface); overload; virtual;
        function getDisplayInBrowserContraints: IDisplayInBrowserContraintsInterface; virtual;
        function getTwoDimensionContraints: ITwoDimensionalConstraintInterface; overload; virtual;
  end;

implementation
uses
  AdvertisementAreaData, DomSearchHelper, DisplayInBrowserContraints, TwoDimensionalConstraint, Node;


{AB:CODE}

procedure TAdvertisementAreaConstraints.InitFields;
begin
  
  
end;

function TAdvertisementAreaConstraints.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TAdvertisementAreaConstraints.Create(document_: TDocument);
var
  node_: TNode;
begin
    inherited Create;
    InitFields;
        node_ := TDomSearchHelper.getNode(TAdvertisementAreaData.getInstance().NAME, document_.getChildNodes());
        Self.displayInBrowserContraintsInterface := TDisplayInBrowserContraints.Create(node_);
        Self.twoDimensionConstraintsInterface := TTwoDimensionalConstraint.Create(node_);
end;
    

procedure TAdvertisementAreaConstraints.setDisplayInBrowserContraints(displayInBrowserContraintsInterface_: IDisplayInBrowserContraintsInterface);
begin
        Self.displayInBrowserContraintsInterface := displayInBrowserContraintsInterface_;
end;
    

procedure TAdvertisementAreaConstraints.getTwoDimensionContraints(twoDimensionConstraintsInterface: ITwoDimensionalConstraintInterface);
begin
        Self.twoDimensionConstraintsInterface := twoDimensionConstraintsInterface;
end;
    

function TAdvertisementAreaConstraints.getDisplayInBrowserContraints: IDisplayInBrowserContraintsInterface;
begin
        Exit(Self.displayInBrowserContraintsInterface);
end;
    

function TAdvertisementAreaConstraints.getTwoDimensionContraints: ITwoDimensionalConstraintInterface;
begin
        Exit(Self.twoDimensionConstraintsInterface);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

