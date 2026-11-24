{
 
  AllBinary Open License Version 1 
  Copyright (c) 2006 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
}
// Generated Code Do Not Modify
// package org.allbinary.game.layer
unit AdvancedRTSLayerFormFactory;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, RTSLayerFormFactory, LogUtil, ScrollSelectionForm, ItemArraySingletonFactoryInterface, RTSLayer;

type
  {AB:TYPES}
  TAdvancedRTSLayerFormFactory = class(TRTSLayerFormFactory)
  public
    logUtil: TLogUtil;
    scrollSelectionForm: TScrollSelectionForm;
    procedure InitFields;
        constructor Create(label_: string; itemArrayFactoryInterface: IItemArraySingletonFactoryInterface);
        function getInstance(rtsLayer_: TRTSLayer): TScrollSelectionForm; override;
  end;

implementation
uses
  RTSScrollSelectionFormFactory, ABCustomItem, CommonStrings;


{AB:CODE}

procedure TAdvancedRTSLayerFormFactory.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TAdvancedRTSLayerFormFactory.Create(label_: string; itemArrayFactoryInterface: IItemArraySingletonFactoryInterface);
var
  scrollSelectionForm_: TScrollSelectionForm;
  items: TArray<TABCustomItem>;
  commonStrings_: TCommonStrings;
begin
    inherited Create;
    InitFields;
        scrollSelectionForm_ := TScrollSelectionForm.getNullScrollSelectionForm();
        try
            items := itemArrayFactoryInterface.getItems();
            scrollSelectionForm_ := TRTSScrollSelectionFormFactory.getInstance(label_, items);
        except
            on e: SysUtils.Exception do begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.put(commonStrings_.EXCEPTION, TJava.Box(Self), commonStrings_.CONSTRUCTOR_, TJava.Box(e));
            end;
        end;
        Self.scrollSelectionForm := scrollSelectionForm_;
end;
    

function TAdvancedRTSLayerFormFactory.getInstance(rtsLayer_: TRTSLayer): TScrollSelectionForm;
begin
        Exit(Self.scrollSelectionForm);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

