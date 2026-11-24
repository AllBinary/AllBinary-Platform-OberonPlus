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
unit FileTableMapping;

{$mode delphi}{$H+}
{$interfaces corba}
{$modeswitch typehelpers}

interface

uses
  SysUtils, Classes, Math, DateUtils, StrUtils, Character, JavaLang, JavaUtil, JavaIo, JavaNio, JavaAwtEvent, JavaNet, JavaSecurity, JavaxCrypto, BasicArrayList, TableMappingInterface, AbFile;

type
  {AB:TYPES}
  TFileTableMapping = class(TInterfacedObject, ITableMappingInterface)
  public
    file_: TAbFile;
    procedure InitFields;
    function JavaObject: TObject;
        constructor Create(file_: TAbFile);
        function getKey: TObject; virtual;
        function toVector: TBasicArrayList; virtual;
        function toHashMap: TJavaHashMap<TObject, TObject>; virtual;
  end;

implementation
uses
  BasicArrayListD, StdUtil, FileData, AbPathData, PathUtil;


{AB:CODE}

procedure TFileTableMapping.InitFields;
begin
  
end;

function TFileTableMapping.JavaObject: TObject;
begin
  Result := Self;
end;
    

constructor TFileTableMapping.Create(file_: TAbFile);
begin
    inherited Create;
    InitFields;
        Self.file_ := file_;
end;
    

// throws Exception
function TFileTableMapping.getKey: TObject;
begin
        Exit(TJava.Box(TJava.Box(Self.file_.getPath())));
end;
    

// throws Exception
function TFileTableMapping.toVector: TBasicArrayList;
var
  filePropertyVector: TBasicArrayList;
begin
        filePropertyVector := TBasicArrayListD.Create();
        filePropertyVector.add(TJava.Box(Self.file_.getAbsolutePath()));
        filePropertyVector.add(TJava.Box(Self.file_.getCanonicalPath()));
        filePropertyVector.add(TJava.Box(Self.file_.getName()));
        filePropertyVector.add(TJava.Box(Self.file_.getParent()));
        filePropertyVector.add(TJava.Box(Self.file_.getPath()));
        Exit(filePropertyVector);
end;
    

// throws Exception
function TFileTableMapping.toHashMap: TJavaHashMap<TObject, TObject>;
var
  filePropertyHashMap: TJavaHashMap<TObject, TObject>;
  pathData: TAbPathData;
  pathUtil_: TPathUtil;
  rootFileName: string;
  fileData_: TFileData;
begin
        filePropertyHashMap := TStdUtil.getInstance().createHashMap();
        pathData := TAbPathData.getInstance();
        pathUtil_ := TPathUtil.getInstance();
        rootFileName := pathData.getNameFromPath(pathUtil_.getWithoutExtension(Self.file_.getPath()));
        fileData_ := TFileData.getInstance();
        filePropertyHashMap.put(TJava.Box(fileData_.ROOT_NAME), TJava.Box(rootFileName));
        filePropertyHashMap.put(TJava.Box(fileData_.ISFILE), TJava.Box(BoolToStr(Self.file_.isFile(), True).toString()));
        filePropertyHashMap.put(TJava.Box(fileData_.ISDIRECTORY), TJava.Box(BoolToStr(Self.file_.isDirectory(), True).toString()));
        filePropertyHashMap.put(TJava.Box(fileData_.ISHIDDEN), TJava.Box(BoolToStr(Self.file_.isHidden(), True).toString()));
        filePropertyHashMap.put(TJava.Box(fileData_.ISABSOLUTE), TJava.Box(BoolToStr(Self.file_.isAbsolute(), True).toString()));
        filePropertyHashMap.put(TJava.Box(fileData_.ABSOLUTE_PATH), TJava.Box(Self.file_.getAbsolutePath()));
        filePropertyHashMap.put(TJava.Box(fileData_.CANONICAL_PATH), TJava.Box(Self.file_.getCanonicalPath()));
        filePropertyHashMap.put(TJava.Box(fileData_.NAME), TJava.Box(Self.file_.getName()));
        filePropertyHashMap.put(TJava.Box(fileData_.PARENT), TJava.Box(Self.file_.getParent()));
        filePropertyHashMap.put(TJava.Box(fileData_.PATH), TJava.Box(Self.file_.getPath()));
        Exit(filePropertyHashMap);
end;

initialization
  {AB:INITIALIZATION}
  {AB:END}

end.

