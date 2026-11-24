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
// package workflows.template.data
unit BasicStoreWorkFlow;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, StoreWorkFlowInterface, BasicWorkFlow;

type
  {AB:TYPES}
  TBasicStoreWorkFlow = class(TBasicWorkFlow, IStoreWorkFlowInterface)
  public
    function JavaObject: TObject;
        constructor Create(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        function getStoreName: string; virtual;
  end;

implementation
uses
  StoreFrontData;


{AB:CODE}

function TBasicStoreWorkFlow.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TBasicStoreWorkFlow.Create(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
        inherited Create(propertiesHashMap, pageContext_);
end;
    

// throws Exception
function TBasicStoreWorkFlow.getStoreName: string;
begin
        Exit(TJava.UnboxString(TJava.ToObject(Self.getPropertiesHashMap().get(TStoreFrontData.getInstance().NAME))));
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

