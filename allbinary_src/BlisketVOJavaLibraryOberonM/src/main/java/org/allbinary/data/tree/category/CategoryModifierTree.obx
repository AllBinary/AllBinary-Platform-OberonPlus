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
// package org.allbinary.data.tree.category
unit CategoryModifierTree;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CategoryFactoryInterface, CategoryInterface, LogUtil, Directory, CommonStrings, CategoryPrivateTree, CategoryModifierTreeInterface;

type
  {AB:TYPES}
  TCategoryModifierTree = class(TCategoryPrivateTree, ICategoryModifierTreeInterface)
  public
    logUtil: TLogUtil;
    commonStrings: TCommonStrings;
    directory: TDirectory;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(categoryFactoryInterface_: ICategoryFactoryInterface);
        procedure insert(parentCategoryInterface: ICategoryInterface; newChildCategoryInterface: ICategoryInterface); virtual;
        procedure delete_(parentCategoryInterface: ICategoryInterface; existingChildCategoryInterface: ICategoryInterface); virtual;
  end;

implementation
uses
  AbPath, StringUtil;


{AB:CODE}

procedure TCategoryModifierTree.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  Self.commonStrings := TCommonStrings.getInstance();
  Self.directory := TDirectory.getInstance();
end;

function TCategoryModifierTree.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TCategoryModifierTree.Create(categoryFactoryInterface_: ICategoryFactoryInterface);
begin
        inherited Create(categoryFactoryInterface_);
        InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().CATEGORY) then begin
            Self.logUtil.putF(Self.commonStrings.START, TJava.Box(Self), 'CategoryModifierTree(CategoryFactoryInterface categoryFactoryInterface)');
        end;
end;
    

procedure TCategoryModifierTree.insert(parentCategoryInterface: ICategoryInterface; newChildCategoryInterface: ICategoryInterface);
var
  directoryToBeCreatedAbPath: TAbPath;
begin
    TJava.MonitorEnter(Self);
    try
        try
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().CATEGORY) then begin
                Self.logUtil.putF('Inserting', TJava.Box(Self), 'insert()');
            end;
            if (parentCategoryInterface.isValid()) then begin
                parentCategoryInterface.addChild(newChildCategoryInterface);
                directoryToBeCreatedAbPath := TAbPath.Create(newChildCategoryInterface.getRootFilePath().toString() + newChildCategoryInterface.getPath().toString(), TStringUtil.getInstance().EMPTY_STRING);
                Self.directory.create_(directoryToBeCreatedAbPath);
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().CATEGORY) then begin
                    Self.logUtil.putF('Saving', TJava.Box(Self), 'insert()');
                end;
                Self.save(parentCategoryInterface);
                Self.save(newChildCategoryInterface);
            end else begin
                raise SysUtils.Exception.Create('Will Not Add Null Category');
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), 'insert', TJava.Box(e));
            end;
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

procedure TCategoryModifierTree.delete_(parentCategoryInterface: ICategoryInterface; existingChildCategoryInterface: ICategoryInterface);
var
  directoryToBeDeletedAbPath: TAbPath;
begin
    TJava.MonitorEnter(Self);
    try
        try
            if (parentCategoryInterface.isValid()) then begin
                parentCategoryInterface.addChild(existingChildCategoryInterface);
                directoryToBeDeletedAbPath := TAbPath.Create(existingChildCategoryInterface.getRootFilePath().toString() + existingChildCategoryInterface.getPath().toString(), TStringUtil.getInstance().EMPTY_STRING);
                Self.delete_(existingChildCategoryInterface);
                parentCategoryInterface.removeChild(existingChildCategoryInterface);
                Self.save(parentCategoryInterface);
                Self.directory.remove(directoryToBeDeletedAbPath);
            end else begin
                raise SysUtils.Exception.Create('Will Not Add Null Category');
            end;
        except
            on e: SysUtils.Exception do begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.put(Self.commonStrings.FAILURE, TJava.Box(Self), Self.commonStrings.delete_, TJava.Box(e));
            end;
            end;
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

