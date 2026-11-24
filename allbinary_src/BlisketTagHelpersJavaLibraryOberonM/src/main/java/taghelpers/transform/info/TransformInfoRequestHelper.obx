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
// package taghelpers.transform.info
unit TransformInfoRequestHelper;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, ModifyTable, LogUtil, TransformInfoHttpInterface;

type
  {AB:TYPES}
  TTransformInfoRequestHelper = class(TModifyTable)
  public
    logUtil: TLogUtil;
    transformInfoInterface: ITransformInfoHttpInterface;
    procedure InitFields;
        constructor Create(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
        function update: string; virtual;
        function insert: string; virtual;
        function delete_: string; virtual;
  end;

implementation
uses
  BasicArrayList, BasicArrayListD, TransformInfoEntityBuilder, TransformInfoHttpStoreNoManipulation;


{AB:CODE}

procedure TTransformInfoRequestHelper.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TTransformInfoRequestHelper.Create(propertiesHashMap: TJavaHashMap<TObject, TObject>; pageContext_: TPageContext);
begin
    inherited Create;
    InitFields;
        Self.transformInfoInterface := TTransformInfoHttpStoreNoManipulation.Create(propertiesHashMap, pageContext_);
end;
    

function TTransformInfoRequestHelper.update: string;
var
  success: string;
  hashMapData: TJavaHashMap<TObject, TObject>;
  error: string;
begin
        try
            success := 'Updated Successfully';
            hashMapData := Self.transformInfoInterface.toHashMap();
            TTransformInfoEntityBuilder.getInstance().update(hashMapData);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'update()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to update storefronts table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'update()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TTransformInfoRequestHelper.insert: string;
var
  success: string;
  values: TBasicArrayList;
  error: string;
begin
        try
            success := 'Added TransformInfo Successfully';
            values := Self.transformInfoInterface.toVector();
            TTransformInfoEntityBuilder.getInstance().insert(values);
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'insert()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to add storefronts table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'insert()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;
    

function TTransformInfoRequestHelper.delete_: string;
var
  success: string;
  error: string;
begin
        try
            success := 'Delete Successfully';
            TTransformInfoEntityBuilder.getInstance().delete_(TJava.UnboxString(TJava.ToObject(Self.transformInfoInterface.getKey())));
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGS) then begin
                Self.logUtil.putF(success, TJava.Box(Self), 'delete()');
            end;
            Exit(success);
        except
            on e: SysUtils.Exception do begin
            error := 'Failed to delete storefronts table';
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLTAGSERROR) then begin
                Self.logUtil.put(Self.commonStrings.EXCEPTION, TJava.Box(Self), 'delete()', TJava.Box(e));
            end;
            Exit(error);
            end;
        end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

