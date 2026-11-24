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
unit CategoryPrivateTree;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, CategoryFactoryInterface, CategoryInterface, LogUtil;

type
  {AB:TYPES}
  TCategoryPrivateTree = class(TObject)
  public
    logUtil: TLogUtil;
    categoryFactoryInterface: ICategoryFactoryInterface;
    procedure InitFields;
        constructor Create(categoryFactoryInterface_: ICategoryFactoryInterface);
        procedure save(categoryInterface_: ICategoryInterface); virtual;
        procedure delete_(categoryInterface_: ICategoryInterface); virtual;
  end;

implementation
uses
  CategoryComponent, CategoryData, CryptFileWriter, AbFile, CommonStrings, Document;


{AB:CODE}

procedure TCategoryPrivateTree.InitFields;
begin
  Self.logUtil := TLogUtil.getInstance();
  
end;
    

constructor TCategoryPrivateTree.Create(categoryFactoryInterface_: ICategoryFactoryInterface);
var
  commonStrings_: TCommonStrings;
begin
    inherited Create;
    InitFields;
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().CATEGORY) then begin
            commonStrings_ := TCommonStrings.getInstance();
            Self.logUtil.putF(commonStrings_.START, TJava.Box(Self), 'CategoryPrivateTree(CategoryFactoryInterface categoryFactoryInterface)');
        end;
        Self.categoryFactoryInterface := categoryFactoryInterface_;
end;
    

// throws Exception
procedure TCategoryPrivateTree.save(categoryInterface_: ICategoryInterface);
var
  document_: TDocument;
  cryptFileWriter_: TCryptFileWriter;
begin
    TJava.MonitorEnter(Self);
    try
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
            Self.logUtil.putF('Saving Category File: ' + TJava.ToString(categoryInterface_.getFilePath()), TJava.Box(Self), 'save()');
        end;
        document_ := TCategoryComponent.Create(categoryInterface_).toXmlDoc();
        cryptFileWriter_ := TCryptFileWriter.Create(TCategoryData.getInstance().UNCRYPTED_EXTENSION, TCategoryData.getInstance().ENCRYPTED_EXTENSION);
        cryptFileWriter_.write(categoryInterface_.getFilePath(), document_);
        if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
            Self.logUtil.putF('end', TJava.Box(Self), 'save()');
        end;
    finally
    TJava.MonitorExit(Self);
    end;
end;
    

// throws Exception
procedure TCategoryPrivateTree.delete_(categoryInterface_: ICategoryInterface);
var
  categoryFile: TAbFile;
begin
    TJava.MonitorEnter(Self);
    try
        if categoryInterface_.isLeaf() then begin
            categoryFile := TAbFile.createAbFileFromAbPath(categoryInterface_.getFilePath());
            if categoryFile.delete_() then begin
                if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                    Self.logUtil.putF('Removed: ' + TJava.ToString(categoryInterface_.getFilePath()), TJava.Box(Self), 'delete(CategoryInterface)');
                end;
            end;
        end else begin
            if Torg.allbinary.logic.communication.log.config.type_.LogConfigTypes.LOGGING.contains(Torg.allbinary.logic.communication.log.config.type_.LogConfigTypeFactory.getInstance().SQLLOGGING) then begin
                Self.logUtil.putF('Not a leaf unable to remove', TJava.Box(Self), 'delete(CategoryInterface)');
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

